import '../models/enums.dart';
import '../models/plan_rule.dart';
import '../models/premium_table.dart';
import '../models/rule_set.dart';
import '../util/money.dart';

enum Severity { error, warning }

class ValidationIssue {
  const ValidationIssue(this.severity, this.tableId, this.message);

  final Severity severity;
  final String tableId;
  final String message;

  @override
  String toString() => '[${severity.name.toUpperCase()}] $tableId: $message';
}

/// Checks a premium table against the plan rules it belongs to.
///
/// Errors: structure problems that would make a lookup wrong or impossible
/// (missing rows/columns, empty cells where the plan offers that
/// combination, values where it doesn't, non-monotonic premiums).
/// Warnings: suspicious but possibly legitimate patterns.
class TableValidator {
  TableValidator(this.rules);

  final RuleSet rules;

  List<ValidationIssue> validate(PremiumTable table) {
    final issues = <ValidationIssue>[];
    void error(String m) => issues.add(ValidationIssue(Severity.error, table.tableId, m));
    void warn(String m) => issues.add(ValidationIssue(Severity.warning, table.tableId, m));

    final PlanRule plan;
    try {
      plan = rules.plan(table.planId);
    } on ArgumentError {
      error('planId "${table.planId}" not found in rules ${rules.ruleSetId}');
      return issues;
    }
    final isConversion = plan.conversionTableId == table.tableId;
    if (plan.premiumTableId != table.tableId && !isConversion) {
      error('plan ${plan.id} expects premiumTableId "${plan.premiumTableId}"');
    }
    if (table.unitSumAssured <= 0) error('unitSumAssured must be positive');

    final expectedColumns = isConversion ? plan.conversionMaturityAges : _expectedColumns(plan, table.columnDimension);
    if (expectedColumns == null) {
      error('plan ${plan.id} defines no options for ${table.columnDimension.code} columns');
      return issues;
    }
    if (!_sameList(table.columns, expectedColumns)) {
      error('columns ${table.columns} do not match plan options $expectedColumns');
    }

    final entryAges = plan.overallEntryAge ?? plan.jointLife?.entryAgeEachSpouse;
    if (entryAges == null) {
      error('plan ${plan.id} has no entry age range');
      return issues;
    }

    if (table.frequencies.isEmpty) error('table has no frequencies');
    for (final age in table.agesNotInSource) {
      if (!entryAges.contains(age)) error('agesNotInSource: $age is outside entry ages $entryAges');
      if (table.cells.values.any((rows) => rows.containsKey(age))) error('agesNotInSource: age $age has a row');
    }
    for (final freq in PremiumFrequency.values) {
      if (!table.frequencies.contains(freq)) warn('no ${freq.code} premiums in table');
    }

    for (final MapEntry(key: freq, value: rows) in table.cells.entries) {
      for (final age in rows.keys) {
        if (!entryAges.contains(age)) error('${freq.code}: row for age $age is outside entry ages $entryAges');
      }
      for (final age in entryAges.ages) {
        final row = rows[age];
        if (row == null) {
          if (table.agesNotInSource.contains(age)) {
            warn('${freq.code}: entry age $age is not in the source table');
          } else {
            error('${freq.code}: missing row for entry age $age');
          }
          continue;
        }
        if (row.length != table.columns.length) {
          error('${freq.code} age $age: ${row.length} cells, expected ${table.columns.length}');
          continue;
        }
        for (final (i, col) in table.columns.indexed) {
          // Conversion tables print only the maturity ages open after the
          // first 5 years; a blank there is the source's, not a gap.
          final offered = isConversion ? col - age > 5 : _isOffered(plan, table.columnDimension, age, col);
          final v = row[i];
          if (offered && v == null && !isConversion) {
            error('${freq.code} age $age, ${table.columnDimension.code} $col: empty cell');
          } else if (!offered && v != null) {
            error('${freq.code} age $age, ${table.columnDimension.code} $col: value present for a combination the plan does not offer');
          } else if (v != null && v.value <= 0) {
            error('${freq.code} age $age, ${table.columnDimension.code} $col: non-positive premium');
          }
        }
      }
      _checkMonotonic(table, freq, rows, entryAges, error);
    }
    _checkFrequencyConsistency(table, entryAges, warn);
    return issues;
  }

  List<int>? _expectedColumns(PlanRule plan, ColumnDimension dim) => switch (dim) {
        ColumnDimension.maturityAge => plan.maturityAges.isEmpty ? null : plan.maturityAges,
        ColumnDimension.premiumCeasingAge => plan.premiumCeasingAges.isEmpty ? null : plan.premiumCeasingAges,
        ColumnDimension.termYears => switch (plan.jointLife) {
            final j? => [for (var t = j.termYears.min; t <= j.termYears.max; t++) t],
            null => plan.aeaTerms.isEmpty ? null : [for (final t in plan.aeaTerms) t.years],
          },
      };

  /// Whether the plan rules allow this entry age with this column option.
  /// Without a confirmed minimum term, any positive term counts as offered,
  /// so a table that leaves such a cell empty is flagged for review rather
  /// than silently accepted.
  bool _isOffered(PlanRule plan, ColumnDimension dim, int age, int col) => switch (dim) {
        ColumnDimension.maturityAge || ColumnDimension.premiumCeasingAge =>
          col - age >= (plan.minTermYears ?? 1),
        ColumnDimension.termYears when plan.jointLife != null => age + col <= (plan.maxMaturityAge ?? 999),
        ColumnDimension.termYears =>
          plan.aeaTerms.firstWhere((t) => t.years == col).entryAge.contains(age),
      };

  /// Premium must not fall as entry age rises, and must not rise as the
  /// term lengthens (later maturity / ceasing age, or longer term).
  void _checkMonotonic(
    PremiumTable table,
    PremiumFrequency freq,
    Map<int, List<Paise?>> rows,
    AgeRange entryAges,
    void Function(String) error,
  ) {
    bool exempt(int age, int col) => table.monotonicExceptions.contains('${freq.code}:$age:$col');

    for (final (i, col) in table.columns.indexed) {
      Paise? prev;
      int? prevAge;
      for (final age in entryAges.ages) {
        final v = _cell(rows, age, i);
        if (v == null) continue;
        if (prev != null && v < prev && !exempt(age, col)) {
          error('${freq.code} ${table.columnDimension.code} $col: premium falls from ${prev.toRupeeString()} (age $prevAge) to ${v.toRupeeString()} (age $age)');
        }
        prev = v;
        prevAge = age;
      }
    }
    for (final age in entryAges.ages) {
      Paise? prev;
      int? prevCol;
      for (final (i, col) in table.columns.indexed) {
        final v = _cell(rows, age, i);
        if (v == null) continue;
        if (prev != null && v > prev && !exempt(age, col)) {
          error('${freq.code} age $age: premium rises from ${prev.toRupeeString()} (${table.columnDimension.code} $prevCol) to ${v.toRupeeString()} ($col) despite longer term');
        }
        prev = v;
        prevCol = col;
      }
    }
  }

  /// Paying less often normally costs no more per year. Only a warning:
  /// the official tables are the authority.
  void _checkFrequencyConsistency(PremiumTable table, AgeRange entryAges, void Function(String) warn) {
    final ordered = PremiumFrequency.values.where(table.frequencies.contains).toList();
    for (var f = 1; f < ordered.length; f++) {
      final hi = ordered[f - 1], lo = ordered[f];
      for (final age in entryAges.ages) {
        for (final (i, col) in table.columns.indexed) {
          final a = _cell(table.cells[hi]!, age, i), b = _cell(table.cells[lo]!, age, i);
          if (a == null || b == null) continue;
          if (b.value * (12 ~/ lo.months) > a.value * (12 ~/ hi.months)) {
            warn('age $age col $col: annualised ${lo.code} exceeds annualised ${hi.code}');
          }
        }
      }
    }
  }

  Paise? _cell(Map<int, List<Paise?>> rows, int age, int i) {
    final row = rows[age];
    return (row == null || i >= row.length) ? null : row[i];
  }

  bool _sameList(List<int> a, List<int> b) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }
}
