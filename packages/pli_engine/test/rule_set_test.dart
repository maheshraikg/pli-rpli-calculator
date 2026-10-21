import 'dart:io';

import 'package:pli_engine/pli_engine.dart';
import 'package:test/test.dart';

void main() {
  final rules = RuleSet.parse(File('../../assets/data/rules_FY2026-27.json').readAsStringSync());

  test('metadata present', () {
    expect(rules.ruleSetId, 'FY2026-27');
    expect(rules.effectiveFrom, DateTime(2026, 4, 1));
    expect(rules.gazetteRef, isNotEmpty);
  });

  test('FY 2026-27 bonus rates match SPEC', () {
    expect(rules.bonusRate(Scheme.pli, '2026-27', 'WLA'), 76);
    expect(rules.bonusRate(Scheme.pli, '2026-27', 'EA'), 52);
    expect(rules.bonusRate(Scheme.pli, '2026-27', 'AEA'), 48);
    expect(rules.bonusRate(Scheme.rpli, '2026-27', 'WLA'), 60);
    expect(rules.bonusRate(Scheme.rpli, '2026-27', 'EA'), 48);
    expect(rules.bonusRate(Scheme.rpli, '2026-27', 'AEA'), 45);
  });

  test('missing year is a hard error, never a substitute rate', () {
    expect(() => rules.bonusRate(Scheme.pli, '2019-20', 'EA'), throwsA(isA<MissingBonusRateException>()));
  });

  test('sum assured limits', () {
    expect(rules.sumAssuredLimits[Scheme.pli]!.min, 20000);
    expect(rules.sumAssuredLimits[Scheme.pli]!.max, 5000000);
    expect(rules.sumAssuredLimits[Scheme.rpli]!.min, 10000);
    expect(rules.sumAssuredLimits[Scheme.rpli]!.max, 1000000);
  });

  test('every plan has English and Kannada names', () {
    for (final p in rules.plans) {
      expect(p.names.keys, containsAll(['en', 'kn']), reason: p.id);
    }
  });

  test('AEA survival schedules add up to 100% of SA', () {
    for (final p in rules.plans.where((p) => p.type == PlanType.aea)) {
      for (final t in p.aeaTerms) {
        final total = t.survivalBenefits.fold(0, (s, b) => s + b.percentOfSA) + t.maturityPercentOfSA;
        expect(total, 100, reason: '${p.id} ${t.years}y');
      }
    }
  });
}
