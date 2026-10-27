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

  test('ages the booklet does not print are "not in table", never estimated', () {
    final r = quotePremium(rules, _table('rpli_gram_sumangal'), rules.plan('rpli_gram_sumangal'),
        sumAssured: 100000, entryAge: 43, column: 15, frequency: PremiumFrequency.monthly);
    expect(r, isA<PremiumUnavailable>());
    expect((r as PremiumUnavailable).reason, PremiumUnavailableReason.notInTable);
  });

  test('bundled tables are official (not sample) and name their source', () {
    for (final id in ['pli_santosh', 'pli_suraksha', 'rpli_gram_santosh', 'rpli_gram_suraksha', 'rpli_gram_sumangal', 'rpli_gram_priya']) {
      final t = _table(id);
      expect(t.isSample, isFalse, reason: id);
      expect(t.source, contains('Department of Posts'), reason: id);
    }
  });
}
