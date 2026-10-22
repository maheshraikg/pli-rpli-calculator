import 'package:pli_engine/pli_engine.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {
  final rules = bundledRules;

  group('loan interest (10% p.a., half-yearly compounding)', () {
    test('1 year on ₹10,000 → ₹1,025', () => expect(loanInterest(rules, principal: rs(10000), months: 12), rs(1025)));
    test('6 months → ₹500', () => expect(loanInterest(rules, principal: rs(10000), months: 6), rs(500)));
    test('9 months: 10,500 × (1 + 0.025) − 10,000 → ₹763',
        () => expect(loanInterest(rules, principal: rs(10000), months: 9), rs(763)));
  });

  test('loan / surrender availability by plan', () {
    expect(loanAvailable(rules.plan('pli_santosh'), 3), isTrue);
    expect(loanAvailable(rules.plan('pli_santosh'), 2), isFalse);
    expect(loanAvailable(rules.plan('pli_suraksha'), 3), isFalse);
    expect(loanAvailable(rules.plan('pli_sumangal'), 10), isFalse, reason: 'no loan on money-back plans');
    expect(surrenderAvailable(rules.plan('pli_sumangal'), 3), isTrue);
  });

  test('paid-up SA = SA × paid ÷ payable', () {
    final e = paidUpValue(rules, sumAssured: 100000, premiumsPaid: 60, premiumsPayable: 240, yearsInForce: 5);
    expect(e.paidUpSumAssured, rs(25000));
    expect(e.eligible, isTrue);
    expect(paidUpValue(rules, sumAssured: 100000, premiumsPaid: 24, premiumsPayable: 240, yearsInForce: 2).eligible, isFalse);
  });

  group('revival', () {
    test('three monthly dues, part months counted as full', () {
      final r = revivalEstimate(rules,
          premium: rs(1000),
          frequency: PremiumFrequency.monthly,
          firstUnpaidDue: DateTime(2026, 1, 10),
          payDate: DateTime(2026, 3, 20));
      expect([for (final i in r.instalments) i.monthsLate], [3, 2, 1]);
      expect(r.arrears, rs(3000));
      expect(r.defaultFees, rs(60));
      expect(r.total, rs(3060));
    });
    test('paid on the due date: no fee', () {
      final r = revivalEstimate(rules,
          premium: rs(1000), frequency: PremiumFrequency.monthly, firstUnpaidDue: DateTime(2026, 1, 10), payDate: DateTime(2026, 1, 10));
      expect(r.instalments.single.defaultFee, Paise.zero);
    });
  });

  group('advance rebate', () {
    test('12 months monthly ₹1,000 → 2% of ₹12,000 = ₹240', () {
      final a = advanceRebate(rules, premium: rs(1000), frequency: PremiumFrequency.monthly, monthsInAdvance: 12);
      expect((a.instalments, a.amountDue, a.rebate, a.payable), (12, rs(12000), rs(240), rs(11760)));
    });
    test('6 months → 1%', () {
      expect(advanceRebate(rules, premium: rs(1000), frequency: PremiumFrequency.monthly, monthsInAdvance: 6).rebate, rs(60));
    });
    test('3 months → none', () {
      expect(advanceRebate(rules, premium: rs(1000), frequency: PremiumFrequency.monthly, monthsInAdvance: 3).rebate, Paise.zero);
    });
  });

  test('upcoming due dates stop at end of premium term', () {
    final d = upcomingDueDates(
        commencement: DateTime(2010, 5, 31), frequency: PremiumFrequency.yearly, payingYears: 17, from: DateTime(2026, 1, 1));
    expect(d, [DateTime(2026, 5, 31)]);
    final m = upcomingDueDates(
        commencement: DateTime(2026, 1, 31), frequency: PremiumFrequency.monthly, payingYears: 10, from: DateTime(2026, 2, 1), count: 2);
    expect(m, [DateTime(2026, 2, 28), DateTime(2026, 3, 31)]);
  });

  test('years in force', () {
    expect(yearsInForce(DateTime(2020, 6, 1), DateTime(2026, 5, 31)), 5);
    expect(yearsInForce(DateTime(2020, 6, 1), DateTime(2026, 6, 1)), 6);
  });
}
