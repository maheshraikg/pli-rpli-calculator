import '../models/enums.dart';
import '../models/plan_rule.dart';
import '../models/premium_table.dart';
import '../models/rule_set.dart';
import '../util/money.dart';
import 'proposal_check.dart';

/// Rounds the non-negative paise amount `numerator / denominator` half-up.
int _roundHalfUp(int numerator, int denominator) => (numerator * 2 + denominator) ~/ (denominator * 2);

/// The table column dimension a plan's premium table uses.
ColumnDimension? columnDimensionFor(PlanRule plan) => switch (plan.type) {
      PlanType.ea => ColumnDimension.maturityAge,
      PlanType.wla => ColumnDimension.premiumCeasingAge,
      PlanType.aea => ColumnDimension.termYears,
      _ => null,
    };

/// Column options a plan offers (maturity ages, premium ceasing ages or terms).
List<int> columnOptions(PlanRule plan) => switch (columnDimensionFor(plan)) {
      ColumnDimension.maturityAge => plan.maturityAges,
      ColumnDimension.premiumCeasingAge => plan.premiumCeasingAges,
      ColumnDimension.termYears => [for (final t in plan.aeaTerms) t.years],
      null => const [],
    };

/// Years for which premiums are paid.
int payingYears(PlanRule plan, int entryAge, int column) =>
    columnDimensionFor(plan) == ColumnDimension.termYears ? column : column - entryAge;

class PremiumQuote {
  const PremiumQuote({
    required this.plan,
    required this.frequency,
    required this.sumAssured,
    required this.entryAge,
    required this.column,
    required this.tablePremium,
    required this.grossPremium,
    required this.saRebate,
    required this.premium,
    required this.payingYears,
    required this.isSample,
  });

  final PlanRule plan;
  final PremiumFrequency frequency;
  final int sumAssured;
  final int entryAge;
  final int column;

  /// Table premium per unit SA (usually ₹10,000).
  final Paise tablePremium;

  /// Table premium scaled to the SA, before rebate.
  final Paise grossPremium;
  final Paise saRebate;

  /// Amount payable per instalment.
  final Paise premium;
  final int payingYears;
  final bool isSample;

  int get instalmentsPerYear => 12 ~/ frequency.months;
  int get totalInstalments => payingYears * instalmentsPerYear;
  Paise get totalPremium => Paise(premium.value * totalInstalments);
}

enum PremiumUnavailableReason { noTable, notInTable, invalidProposal }

sealed class PremiumResult {
  const PremiumResult();
}

class PremiumQuoted extends PremiumResult {
  const PremiumQuoted(this.quote);
  final PremiumQuote quote;
}

class PremiumUnavailable extends PremiumResult {
  const PremiumUnavailable(this.reason, [this.violations = const []]);
  final PremiumUnavailableReason reason;
  final List<Violation> violations;
}

/// Premium for one instalment, straight from the table: never interpolated.
///
/// premium = table × SA ÷ unit − SA rebate, rounded to the nearest rupee.
/// SA rebate = ₹x per month for each complete block of SA, × months per
/// instalment (amounts from the rules data).
PremiumResult quotePremium(
  RuleSet rules,
  PremiumTable? table,
  PlanRule plan, {
  required int sumAssured,
  required int entryAge,
  required int column,
  required PremiumFrequency frequency,
}) {
  if (table == null) return const PremiumUnavailable(PremiumUnavailableReason.noTable);
  final perUnit = table.lookup(frequency, entryAge, column);
  if (perUnit == null) return const PremiumUnavailable(PremiumUnavailableReason.notInTable);

  final r = rules.premium;
  final unit = table.unitSumAssured;
  final grossNumerator = perUnit.value * sumAssured; // paise × unit
  final rebate = r.saRebatePlanTypes.contains(plan.type)
      ? Paise((sumAssured ~/ r.saRebatePerSumAssured) * r.saRebateRupeesPerMonth * 100 * frequency.months)
      : Paise.zero;
  final netNumerator = grossNumerator - rebate.value * unit;
  final netRupees = netNumerator <= 0 ? 0 : _roundHalfUp(netNumerator, unit * 100);

  return PremiumQuoted(PremiumQuote(
    plan: plan,
    frequency: frequency,
    sumAssured: sumAssured,
    entryAge: entryAge,
    column: column,
    tablePremium: perUnit,
    grossPremium: Paise(_roundHalfUp(grossNumerator, unit)),
    saRebate: rebate,
    premium: Paise.wholeRupees(netRupees),
    payingYears: payingYears(plan, entryAge, column),
    isSample: table.isSample,
  ));
}

/// The proposal a premium quote implies, for rule checks.
Proposal proposalFor(PlanRule plan, {required int sumAssured, required int entryAge, required int column}) =>
    switch (columnDimensionFor(plan)) {
      ColumnDimension.maturityAge => Proposal(planId: plan.id, entryAge: entryAge, sumAssured: sumAssured, maturityAge: column),
      ColumnDimension.premiumCeasingAge =>
        Proposal(planId: plan.id, entryAge: entryAge, sumAssured: sumAssured, premiumCeasingAge: column),
      _ => Proposal(planId: plan.id, entryAge: entryAge, sumAssured: sumAssured, termYears: column),
    };

/// Checks the proposal rules, then quotes. Use this from UIs.
PremiumResult checkedQuote(
  RuleSet rules,
  PremiumTable? table,
  PlanRule plan, {
  required int sumAssured,
  required int entryAge,
  required int column,
  required PremiumFrequency frequency,
}) {
  final v = checkProposal(rules, proposalFor(plan, sumAssured: sumAssured, entryAge: entryAge, column: column));
  if (v.isNotEmpty) return PremiumUnavailable(PremiumUnavailableReason.invalidProposal, v);
  return quotePremium(rules, table, plan,
      sumAssured: sumAssured, entryAge: entryAge, column: column, frequency: frequency);
}

class AffordableOption {
  const AffordableOption(this.quote);
  final PremiumQuote quote;
}

/// For each plan of [scheme] with a table, and each of its options open at
/// [entryAge], the largest sum assured (a multiple of [step]) whose
/// premium does not exceed [budget]. Sorted by sum assured, largest first.
List<AffordableOption> affordableOptions(
  RuleSet rules,
  Map<String, PremiumTable> tables, {
  required Scheme scheme,
  required int entryAge,
  required Paise budget,
  required PremiumFrequency frequency,
  int step = 10000,
}) {
  final limit = rules.sumAssuredLimits[scheme]!;
  final out = <AffordableOption>[];
  for (final plan in rules.plansFor(scheme)) {
    final table = tables[plan.premiumTableId];
    if (table == null) continue;
    for (final column in columnOptions(plan)) {
      if (checkProposal(rules, proposalFor(plan, sumAssured: limit.min, entryAge: entryAge, column: column)).isNotEmpty) {
        continue;
      }
      final first = (limit.max ~/ step) * step;
      for (var sa = first; sa >= limit.min; sa -= step) {
        final r = quotePremium(rules, table, plan, sumAssured: sa, entryAge: entryAge, column: column, frequency: frequency);
        if (r is! PremiumQuoted) break;
        if (r.quote.premium <= budget) {
          out.add(AffordableOption(r.quote));
          break;
        }
      }
    }
  }
  out.sort((a, b) => b.quote.sumAssured.compareTo(a.quote.sumAssured));
  return out;
}
