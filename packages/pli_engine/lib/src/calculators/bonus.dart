import '../models/enums.dart';
import '../models/plan_rule.dart';
import '../models/rule_set.dart';
import '../util/money.dart';

/// Simple reversionary bonus for one year:
/// SA / 1000 × declared rate, rounded by the gazette rule.
Paise annualBonus(RuleSet rules, {
  required Scheme scheme,
  required String bonusClass,
  required String financialYear,
  required int sumAssured,
}) {
  final rate = rules.bonusRate(scheme, financialYear, bonusClass);
  return roundBonusFraction(sumAssured * rate, 1000);
}

/// Terminal bonus for a policy of [termYears], or zero if the plan or term
/// doesn't qualify. Rounded by the gazette rule, then capped.
Paise terminalBonus(RuleSet rules, PlanRule plan, {required int sumAssured, required int termYears}) {
  final t = rules.terminalBonus;
  if (!t.schemes.contains(plan.scheme) || !t.appliesToTypes.contains(plan.type) || termYears < t.minTermYears) {
    return Paise.zero;
  }
  final amount = roundBonusFraction(sumAssured * t.amount, t.perSumAssured);
  final cap = Paise.wholeRupees(t.maxAmount);
  return amount > cap ? cap : amount;
}
