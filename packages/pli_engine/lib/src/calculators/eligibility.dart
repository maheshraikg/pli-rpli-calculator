import '../models/enums.dart';
import '../models/plan_rule.dart';
import '../models/rule_set.dart';

class EligibilityResult {
  const EligibilityResult({
    required this.eligibleSchemes,
    required this.plansForSelf,
    required this.childPlans,
  });

  final Set<Scheme> eligibleSchemes;

  /// Plans the person can take on their own life at this age.
  final List<PlanRule> plansForSelf;

  /// Children's policies the person can take for a child (parent age rule).
  final List<PlanRule> childPlans;
}

/// Which schemes and plans a person can take, from their eligibility
/// groups (ids listed under `schemes.<X>.eligibilityGroups` in the rules)
/// and age in whole years.
EligibilityResult checkEligibility(RuleSet rules, {required Set<String> groups, required int age}) {
  final schemes = {
    for (final s in Scheme.values)
      if (rules.eligibilityGroups[s]!.any(groups.contains)) s,
  };
  final self = <PlanRule>[];
  final children = <PlanRule>[];
  for (final plan in rules.plans.where((p) => schemes.contains(p.scheme))) {
    final child = plan.childPlan;
    if (child != null) {
      if (age <= child.parentMaxAge) children.add(plan);
      continue;
    }
    final range = plan.jointLife?.entryAgeEachSpouse ?? plan.overallEntryAge;
    if (range != null && range.contains(age)) self.add(plan);
  }
  return EligibilityResult(eligibleSchemes: schemes, plansForSelf: self, childPlans: children);
}
