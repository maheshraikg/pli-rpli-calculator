import 'package:pli_engine/pli_engine.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {
  final rules = bundledRules;

  test('PLI Santosh ₹1L, entry 30, maturity 50 → ₹2,04,200', () {
    final p = projectNewPolicy(rules, planId: 'pli_santosh', sumAssured: 100000, entryAge: 30, maturityAge: 50);
    expect(p.termYears, 20);
    expect(p.ratePer1000, 52);
    expect(p.annualBonus, rs(5200));
    expect(p.totalBonus, rs(104000));
    expect(p.terminalBonus, rs(200));
    expect(p.payments, hasLength(1));
    expect(p.maturity.amount, rs(204200));
    expect(p.maturity.date, isNull, reason: 'EA maturity date rule not confirmed');
  });

  test('PLI Santosh 19-year term gets no terminal bonus', () {
    final p = projectNewPolicy(rules, planId: 'pli_santosh', sumAssured: 100000, entryAge: 31, maturityAge: 50);
    expect(p.terminalBonus, Paise.zero);
    expect(p.maturity.amount, rs(100000 + 5200 * 19));
  });

  test('PLI Sumangal 20 years ₹1L: 20% at 8/12/16, 40% + full-SA bonus at 20', () {
    final p = projectNewPolicy(rules,
        planId: 'pli_sumangal', sumAssured: 100000, termYears: 20, commencement: DateTime(2026, 11, 1));
    expect([for (final b in p.payments) b.policyYear], [8, 12, 16, 20]);
    expect([for (final b in p.payments) b.amount], [rs(20000), rs(20000), rs(20000), rs(40000 + 96000)]);
    expect([for (final b in p.payments) b.date],
        [DateTime(2034, 11, 1), DateTime(2038, 11, 1), DateTime(2042, 11, 1), DateTime(2046, 11, 1)]);
    expect(p.terminalBonus, Paise.zero);
    expect(p.totalBenefits, rs(196000));
  });

  test('PLI Sumangal 15 years: 20% at 6/9/12, 40% + bonus at 15', () {
    final p = projectNewPolicy(rules, planId: 'pli_sumangal', sumAssured: 200000, termYears: 15);
    expect([for (final b in p.payments) b.policyYear], [6, 9, 12, 15]);
    expect(p.maturity.amount, rs(80000 + 48 * 200 * 15));
  });

  test('RPLI Gram Priya ₹1L: 20% at 4, 20% at 7, 60% + bonus at 10 → total ₹1,45,000', () {
    final p = projectNewPolicy(rules, planId: 'rpli_gram_priya', sumAssured: 100000, termYears: 10);
    expect([for (final b in p.payments) (b.policyYear, b.amount)],
        [(4, rs(20000)), (7, rs(20000)), (10, rs(60000 + 45000))]);
    expect(p.totalBenefits, rs(145000));
  });

  test('Yugal Suraksha ₹5L, 10 years → ₹7,60,000', () {
    final p = projectNewPolicy(rules, planId: 'pli_yugal_suraksha', sumAssured: 500000, termYears: 10);
    expect(p.maturity.amount, rs(760000));
  });

  test('plans with unconfirmed rules refuse to project', () {
    for (final id in ['pli_suraksha', 'pli_suvidha', 'pli_bal_jeevan_bima', 'rpli_gram_suraksha']) {
      expect(() => projectNewPolicy(rules, planId: id, sumAssured: 100000, entryAge: 30, termYears: 10),
          throwsA(isA<RuleNotConfirmedException>()), reason: id);
    }
  });

  test('invalid options are rejected, not approximated', () {
    expect(() => projectNewPolicy(rules, planId: 'pli_santosh', sumAssured: 100000, entryAge: 30, maturityAge: 52),
        throwsArgumentError);
    expect(() => projectNewPolicy(rules, planId: 'pli_santosh', sumAssured: 100000, entryAge: 40, maturityAge: 35),
        throwsArgumentError);
    expect(() => projectNewPolicy(rules, planId: 'pli_sumangal', sumAssured: 100000, termYears: 18),
        throwsArgumentError);
  });

  test('projection for a year with no declared rate throws', () {
    expect(
        () => projectNewPolicy(rules,
            planId: 'pli_santosh', sumAssured: 100000, entryAge: 30, maturityAge: 50, financialYear: '2030-31'),
        throwsA(isA<MissingBonusRateException>()));
  });
}
