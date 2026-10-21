import 'package:pli_engine/pli_engine.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {
  final rules = bundledRules;

  test('policy year ending in FY 2026-27 earns that year\'s rate', () {
    final a = accruedBonus(rules, rules.plan('pli_santosh'),
        sumAssured: 100000, commencement: DateTime(2025, 6, 1), asOf: DateTime(2026, 10, 20));
    expect(a.years.single.financialYear, '2026-27');
    expect(a.years.single.amount, rs(5200));
    expect(a.isComplete, isTrue);
    expect(a.total, rs(5200));
  });

  test('earlier years without declared rates are reported, not guessed', () {
    final a = accruedBonus(rules, rules.plan('pli_santosh'),
        sumAssured: 100000, commencement: DateTime(2020, 6, 1), asOf: DateTime(2026, 10, 20));
    expect(a.years, hasLength(6));
    expect(a.missingYears, ['2021-22', '2022-23', '2023-24', '2024-25', '2025-26']);
    expect(a.isComplete, isFalse);
  });

  test('a policy year ending 31 March counts in that FY; one ending 1 April in the next', () {
    final march = accruedBonus(rules, rules.plan('pli_santosh'),
        sumAssured: 100000, commencement: DateTime(2026, 4, 1), asOf: DateTime(2027, 4, 1));
    expect(march.years.single.financialYear, '2026-27');
    final april = accruedBonus(rules, rules.plan('pli_santosh'),
        sumAssured: 100000, commencement: DateTime(2026, 4, 2), asOf: DateTime(2027, 4, 2));
    expect(april.years.single.financialYear, '2027-28');
    expect(april.missingYears, ['2027-28']);
  });

  test('convertible plan switches rate after conversion', () {
    final a = accruedBonus(rules, rules.plan('pli_suvidha'),
        sumAssured: 100000, commencement: DateTime(2025, 6, 1), asOf: DateTime(2026, 6, 1), convertedAfterYears: 0);
    expect(a.years.single.amount, rs(5200));
    final before = accruedBonus(rules, rules.plan('pli_suvidha'),
        sumAssured: 100000, commencement: DateTime(2025, 6, 1), asOf: DateTime(2026, 6, 1));
    expect(before.years.single.amount, rs(7600));
  });
}
