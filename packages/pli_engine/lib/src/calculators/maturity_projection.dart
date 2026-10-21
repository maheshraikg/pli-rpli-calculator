import '../models/enums.dart';
import '../models/plan_rule.dart';
import '../models/rule_set.dart';
import '../util/dates.dart';
import '../util/money.dart';
import 'bonus.dart';
import 'rule_not_confirmed.dart';

enum PaymentKind { survivalBenefit, maturity }

class BenefitPayment {
  const BenefitPayment({required this.policyYear, required this.date, required this.amount, required this.kind});

  /// End of this policy year (1-based).
  final int policyYear;

  /// Null when the exact date rule is not confirmed or no commencement date
  /// was given.
  final DateTime? date;
  final Paise amount;
  final PaymentKind kind;
}

/// Projection for a new policy, assuming the bonus rate of
/// [financialYear] continues for every year of the term. Bonus rates are
/// declared yearly and are not guaranteed.
class MaturityProjection {
  const MaturityProjection({
    required this.plan,
    required this.sumAssured,
    required this.termYears,
    required this.financialYear,
    required this.ratePer1000,
    required this.annualBonus,
    required this.totalBonus,
    required this.terminalBonus,
    required this.payments,
  });

  final PlanRule plan;
  final int sumAssured;
  final int termYears;
  final String financialYear;
  final int ratePer1000;
  final Paise annualBonus;
  final Paise totalBonus;
  final Paise terminalBonus;

  /// Survival benefits (money-back plans) followed by the maturity payment.
  final List<BenefitPayment> payments;

  BenefitPayment get maturity => payments.last;

  Paise get totalBenefits => payments.fold(Paise.zero, (s, p) => s + p.amount);
}

/// Projects bonus and payouts for a new policy.
///
/// * EA: term = [maturityAge] − [entryAge]; payout SA + bonus + terminal bonus.
/// * AEA: [termYears] option; survival benefits as % of SA, final payout the
///   remaining % of SA + bonus on the full SA.
/// * Joint EA: [termYears]; payout SA + bonus (+ terminal bonus if the rules
///   list the type).
///
/// Whole life, convertible and children's plans throw
/// [RuleNotConfirmedException] until their rules are confirmed.
MaturityProjection projectNewPolicy(
  RuleSet rules, {
  required String planId,
  required int sumAssured,
  int? entryAge,
  int? maturityAge,
  int? termYears,
  DateTime? commencement,
  String? financialYear,
}) {
  final plan = rules.plan(planId);
  final fy = financialYear ?? rules.financialYear;
  final sa = Paise.wholeRupees(sumAssured);

  final int term;
  final List<BenefitPayment> survival;
  final Paise finalSA;
  DateTime? maturityDate;

  DateTime? on(int year) => commencement == null ? null : addYears(commencement, year);
  Paise pctOfSA(int pct) => Paise(sumAssured * pct); // SA × pct / 100, in paise

  switch (plan.type) {
    case PlanType.ea:
      if (entryAge == null || maturityAge == null) {
        throw ArgumentError('EA projection needs entryAge and maturityAge');
      }
      if (!plan.maturityAges.contains(maturityAge) || maturityAge <= entryAge) {
        throw ArgumentError.value(maturityAge, 'maturityAge', 'Not offered for entry age $entryAge');
      }
      term = maturityAge - entryAge;
      survival = const [];
      finalSA = sa;
      // Whether an EA matures on the policy anniversary or on the birthday
      // is not yet confirmed, so no date is given.
      maturityDate = null;
    case PlanType.aea:
      final option = plan.aeaTerms.where((t) => t.years == termYears).firstOrNull;
      if (option == null) {
        throw ArgumentError.value(termYears, 'termYears', 'Not offered for ${plan.id}');
      }
      term = option.years;
      survival = [
        for (final b in option.survivalBenefits)
          BenefitPayment(policyYear: b.year, date: on(b.year), amount: pctOfSA(b.percentOfSA), kind: PaymentKind.survivalBenefit),
      ];
      finalSA = pctOfSA(option.maturityPercentOfSA);
      maturityDate = on(term);
    case PlanType.jointEa:
      final joint = plan.jointLife!;
      if (termYears == null || !joint.termYears.contains(termYears)) {
        throw ArgumentError.value(termYears, 'termYears', 'Must be within ${joint.termYears}');
      }
      term = termYears;
      survival = const [];
      finalSA = sa;
      maturityDate = on(term);
    case PlanType.wla:
      throw RuleNotConfirmedException('whole life: bonus accrual period after premiums cease');
    case PlanType.cwla:
      throw RuleNotConfirmedException('convertible whole life: projection before/after conversion');
    case PlanType.childEa:
      throw RuleNotConfirmedException("children's policy: term and maturity");
  }

  final rate = rules.bonusRate(plan.scheme, fy, plan.bonusClass);
  final yearly = annualBonus(rules, scheme: plan.scheme, bonusClass: plan.bonusClass, financialYear: fy, sumAssured: sumAssured);
  // Every year uses the same rate, so the per-year rounded bonus × term.
  final total = Paise(yearly.value * term);
  final terminal = terminalBonus(rules, plan, sumAssured: sumAssured, termYears: term);

  return MaturityProjection(
    plan: plan,
    sumAssured: sumAssured,
    termYears: term,
    financialYear: fy,
    ratePer1000: rate,
    annualBonus: yearly,
    totalBonus: total,
    terminalBonus: terminal,
    payments: [
      ...survival,
      BenefitPayment(policyYear: term, date: maturityDate, amount: finalSA + total + terminal, kind: PaymentKind.maturity),
    ],
  );
}
