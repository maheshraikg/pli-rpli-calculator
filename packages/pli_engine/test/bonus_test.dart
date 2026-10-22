import 'package:pli_engine/pli_engine.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {
  final rules = bundledRules;

  group('annualBonus', () {
    Paise bonus(Scheme s, String cls, int sa) =>
        annualBonus(rules, scheme: s, bonusClass: cls, financialYear: '2026-27', sumAssured: sa);

    test('PLI EA ₹1,00,000 → ₹5,200', () => expect(bonus(Scheme.pli, 'EA', 100000), rs(5200)));
    test('PLI AEA ₹1,50,000 → ₹7,200', () => expect(bonus(Scheme.pli, 'AEA', 150000), rs(7200)));
    test('PLI WLA ₹2,00,000 → ₹15,200', () => expect(bonus(Scheme.pli, 'WLA', 200000), rs(15200)));
    test('RPLI EA ₹10,010 → ₹480.48 → ₹480 (below 50 paise ignored)',
        () => expect(bonus(Scheme.rpli, 'EA', 10010), rs(480)));
    test('RPLI EA ₹10,011 → ₹480.528 → ₹481 (50 paise or more rounds up)',
        () => expect(bonus(Scheme.rpli, 'EA', 10011), rs(481)));
    test('missing year throws, never substitutes', () {
      expect(() => annualBonus(rules, scheme: Scheme.pli, bonusClass: 'EA', financialYear: '2019-20', sumAssured: 100000),
          throwsA(isA<MissingBonusRateException>()));
    });
  });

  group('terminalBonus', () {
    final santosh = rules.plan('pli_santosh');
    test('term exactly 20 qualifies: ₹1L → ₹200',
        () => expect(terminalBonus(rules, santosh, sumAssured: 100000, termYears: 20), rs(200)));
    test('term 19 does not qualify',
        () => expect(terminalBonus(rules, santosh, sumAssured: 100000, termYears: 19), Paise.zero));
    test('₹5L reaches the cap exactly: ₹1,000',
        () => expect(terminalBonus(rules, santosh, sumAssured: 500000, termYears: 25), rs(1000)));
    test('₹50L capped at ₹1,000',
        () => expect(terminalBonus(rules, santosh, sumAssured: 5000000, termYears: 25), rs(1000)));
    test('PLI WLA qualifies',
        () => expect(terminalBonus(rules, rules.plan('pli_suraksha'), sumAssured: 100000, termYears: 30), rs(200)));
    test('AEA never qualifies',
        () => expect(terminalBonus(rules, rules.plan('pli_sumangal'), sumAssured: 100000, termYears: 20), Paise.zero));
    test('RPLI not listed in rules → none',
        () => expect(terminalBonus(rules, rules.plan('rpli_gram_santosh'), sumAssured: 100000, termYears: 20), Paise.zero));
  });

  group('roundBonusFraction', () {
    test('exact half rounds up', () => expect(roundBonusFraction(1005, 10), rs(101)));
    test('just below half ignored', () => expect(roundBonusFraction(100499, 1000), rs(100)));
  });
}
