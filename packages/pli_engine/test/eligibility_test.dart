import 'package:pli_engine/pli_engine.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {
  final rules = bundledRules;
  Set<String> ids(List<PlanRule> plans) => plans.map((p) => p.id).toSet();

  test('graduate aged 30 → PLI plans only', () {
    final r = checkEligibility(rules, groups: {'graduates_diploma_holders'}, age: 30);
    expect(r.eligibleSchemes, {Scheme.pli});
    expect(ids(r.plansForSelf), {'pli_suraksha', 'pli_santosh', 'pli_suvidha', 'pli_sumangal', 'pli_yugal_suraksha'});
    expect(ids(r.childPlans), {'pli_bal_jeevan_bima'});
  });

  test('rural resident aged 50 → RPLI plans open at 50, no child plan', () {
    final r = checkEligibility(rules, groups: {'rural_resident'}, age: 50);
    expect(r.eligibleSchemes, {Scheme.rpli});
    expect(ids(r.plansForSelf), {'rpli_gram_suraksha', 'rpli_gram_santosh'});
    expect(r.childPlans, isEmpty);
  });

  test('bank savings account holder who is also a govt employee → both schemes', () {
    final r = checkEligibility(rules, groups: {'scheduled_bank_savings_account_holder', 'central_state_govt'}, age: 25);
    expect(r.eligibleSchemes, {Scheme.pli, Scheme.rpli});
    expect(ids(r.plansForSelf), contains('rpli_gram_priya'));
  });

  test('no matching group → nothing', () {
    final r = checkEligibility(rules, groups: {}, age: 30);
    expect(r.eligibleSchemes, isEmpty);
    expect(r.plansForSelf, isEmpty);
  });

  test('eligibility group ids are not shared between schemes', () {
    expect(rules.eligibilityGroups[Scheme.pli]!.intersection(rules.eligibilityGroups[Scheme.rpli]!), isEmpty);
  });
}
