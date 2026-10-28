import 'dart:io';

import 'package:pli_engine/pli_engine.dart';
import 'package:test/test.dart';

import 'support.dart';

PremiumTable _table(String id) =>
    PremiumTable.parse(File('../../assets/data/tables/$id.json').readAsStringSync());

/// The worked examples printed in the source booklet (Department of Posts,
/// Bikaner Division, "PLI-RPLI Plans", Jan 2024), calculated by hand there.
/// The engine must reproduce them exactly.
void main() {
  final rules = bundledRules;

  int premium(String id, int age, int column, int sa, PremiumFrequency f) =>
      (quotePremium(rules, _table(id), rules.plan(id), sumAssured: sa, entryAge: age, column: column, frequency: f)
              as PremiumQuoted)
          .quote
          .premium
          .rupeePart;

  test('Santosh: age 27, maturity 35, SA 7 lakh → ₹7,385 a month (booklet p.4)', () {
    expect(premium('pli_santosh', 27, 35, 700000, PremiumFrequency.monthly), 7385);
  });

  test('Suraksha: age 41, ceasing 58, SA 2 lakh → ₹710 a month (booklet p.8)', () {
    expect(premium('pli_suraksha', 41, 58, 200000, PremiumFrequency.monthly), 710);
  });

  test('Gram Sumangal: age 37, 15 years, SA 3 lakh (booklet p.11)', () {
    expect(premium('rpli_gram_sumangal', 37, 15, 300000, PremiumFrequency.monthly), 1995);
    expect(premium('rpli_gram_sumangal', 37, 15, 300000, PremiumFrequency.quarterly), 5940);
    expect(premium('rpli_gram_sumangal', 37, 15, 300000, PremiumFrequency.halfYearly), 11805);
    expect(premium('rpli_gram_sumangal', 37, 15, 300000, PremiumFrequency.yearly), 23325);
  });

  test('Gram Priya: age 27, SA 4 lakh (booklet p.18)', () {
    expect(premium('rpli_gram_priya', 27, 10, 400000, PremiumFrequency.monthly), 3880);
    expect(premium('rpli_gram_priya', 27, 10, 400000, PremiumFrequency.quarterly), 11580);
    expect(premium('rpli_gram_priya', 27, 10, 400000, PremiumFrequency.halfYearly), 23060);
    expect(premium('rpli_gram_priya', 27, 10, 400000, PremiumFrequency.yearly), 45740);
  });

  int conversion(String id, int age, int maturity, int sa) =>
      (quoteConversion(rules, _table('${id}_conversion'), rules.plan(id),
              sumAssured: sa, entryAge: age, maturityAge: maturity, frequency: PremiumFrequency.monthly) as PremiumQuoted)
          .quote
          .premium
          .rupeePart;

  test('Suvidha: age 37, SA 15 lakh → ₹4,125; after converting to maturity 50 → ₹14,025 (booklet p.9)', () {
    expect(premium('pli_suvidha', 37, 60, 1500000, PremiumFrequency.monthly), 4125);
    expect(conversion('pli_suvidha', 37, 50, 1500000), 14025);
  });

  test('Gram Suvidha: age 33, SA 7 lakh → ₹1,575; after converting to maturity 55 → ₹3,185 (booklet p.17)', () {
    expect(premium('rpli_gram_suvidha', 33, 60, 700000, PremiumFrequency.monthly), 1575);
    expect(conversion('rpli_gram_suvidha', 33, 55, 700000), 3185);
  });

  test('conversion is not offered when fewer than 6 years would remain', () {
    final r = quoteConversion(rules, _table('pli_suvidha_conversion'), rules.plan('pli_suvidha'),
        sumAssured: 100000, entryAge: 45, maturityAge: 50, frequency: PremiumFrequency.monthly);
    expect((r as PremiumUnavailable).reason, PremiumUnavailableReason.notInTable);
  });

  test('Yugal Suraksha: ages 40 & 35, 7 years, SA 6 lakh → equivalent age 38, ₹8,163 (booklet p.10)', () {
    final plan = rules.plan('pli_yugal_suraksha');
    expect(plan.premiumAge(40, 35), 38);
    expect(plan.premiumAge(35, 40), 38, reason: 'order of spouses does not matter');
    expect(plan.premiumAge(30, 30), 30);
    expect(plan.saRebate!.rupeesPerMonth(600000), 57);
    expect(premium('pli_yugal_suraksha', 38, 7, 600000, PremiumFrequency.monthly), 8163);
  });

  test('Yugal Suraksha: equivalent age plus term may not pass 60', () {
    final r = quotePremium(rules, _table('pli_yugal_suraksha'), rules.plan('pli_yugal_suraksha'),
        sumAssured: 100000, entryAge: 45, column: 16, frequency: PremiumFrequency.monthly);
    expect((r as PremiumUnavailable).reason, PremiumUnavailableReason.notInTable);
  });

  test('ages the booklet does not print are "not in table", never estimated', () {
    final r = quotePremium(rules, _table('rpli_gram_sumangal'), rules.plan('rpli_gram_sumangal'),
        sumAssured: 100000, entryAge: 43, column: 15, frequency: PremiumFrequency.monthly);
    expect(r, isA<PremiumUnavailable>());
    expect((r as PremiumUnavailable).reason, PremiumUnavailableReason.notInTable);
  });

  test('bundled tables are official (not sample) and name their source', () {
    for (final id in ['pli_santosh', 'pli_suraksha', 'pli_suvidha', 'pli_suvidha_conversion', 'rpli_gram_santosh', 'rpli_gram_suraksha',
        'rpli_gram_suvidha', 'rpli_gram_suvidha_conversion', 'rpli_gram_sumangal', 'rpli_gram_priya', 'pli_yugal_suraksha']) {
      final t = _table(id);
      expect(t.isSample, isFalse, reason: id);
      expect(t.source, contains('Department of Posts'), reason: id);
    }
  });
}
