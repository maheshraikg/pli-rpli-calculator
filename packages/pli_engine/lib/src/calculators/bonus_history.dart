import '../models/enums.dart';
import '../models/plan_rule.dart';
import '../models/rule_set.dart';
import '../util/dates.dart';
import '../util/money.dart';
import 'bonus.dart';

class YearBonus {
  const YearBonus({required this.policyYear, required this.financialYear, required this.amount});

  final int policyYear;
  final String financialYear;

  /// Null when no rate is declared in the data for that year.
  final Paise? amount;
}

class BonusAccrual {
  const BonusAccrual(this.years);

  final List<YearBonus> years;

  List<String> get missingYears => {for (final y in years) if (y.amount == null) y.financialYear}.toList();
  bool get isComplete => missingYears.isEmpty;

  /// Total of the years that have a rate. Only the full total when [isComplete].
  Paise get total => years.fold(Paise.zero, (s, y) => s + (y.amount ?? Paise.zero));
}

/// Bonus accrued on an existing policy: one credit per completed policy
/// year up to [asOf], each at the rate declared for the financial year in
/// which that policy year ends. Missing years are reported, never guessed.
///
/// Convertible plans use the pre-conversion rate up to [convertedAfterYears]
/// and the post-conversion rate after it.
BonusAccrual accruedBonus(
  RuleSet rules,
  PlanRule plan, {
  required int sumAssured,
  required DateTime commencement,
  required DateTime asOf,
  int? convertedAfterYears,
  int? maxYears,
}) {
  final years = <YearBonus>[];
  for (var k = 1;; k++) {
    if (maxYears != null && k > maxYears) break;
    final anniversary = addYears(commencement, k);
    if (anniversary.isAfter(asOf)) break;
    final fy = financialYearOf(anniversary.subtract(const Duration(days: 1)));
    final cls = plan.type == PlanType.cwla
        ? (convertedAfterYears != null && k > convertedAfterYears ? 'CWLA_AFTER_CONVERSION' : 'CWLA_BEFORE_CONVERSION')
        : plan.bonusClass;
    Paise? amount;
    try {
      amount = annualBonus(rules, scheme: plan.scheme, bonusClass: cls, financialYear: fy, sumAssured: sumAssured);
    } on MissingBonusRateException {
      amount = null;
    }
    years.add(YearBonus(policyYear: k, financialYear: fy, amount: amount));
  }
  return BonusAccrual(years);
}
