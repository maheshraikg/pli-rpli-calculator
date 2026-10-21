import 'package:pli_engine/pli_engine.dart';
import 'package:test/test.dart';

import 'support.dart';

/// Tiny table: ₹100.50 per ₹10,000 monthly for entry 30 → maturity 50.
PremiumTable _table() => PremiumTable(
      tableId: 'pli_santosh',
      planId: 'pli_santosh',
      isSample: true,
      source: 'test',
      unitSumAssured: 10000,
      columnDimension: ColumnDimension.maturityAge,
      columns: const [50],
      cells: {
        PremiumFrequency.monthly: {30: [Paise.fromRupees(100.50)]},
        PremiumFrequency.yearly: {30: [Paise.fromRupees(1180)]},
      },
    );

void main() {
  final rules = bundledRules;
  final santosh = rules.plan('pli_santosh');

  PremiumQuote quote(int sa, PremiumFrequency f) =>
      (quotePremium(rules, _table(), santosh, sumAssured: sa, entryAge: 30, column: 50, frequency: f) as PremiumQuoted).quote;

  test('₹1L monthly: 10 × ₹100.50 = ₹1,005 − ₹5 rebate = ₹1,000', () {
    final q = quote(100000, PremiumFrequency.monthly);
    expect(q.grossPremium, Paise.fromRupees(1005));
    expect(q.saRebate, rs(5));
    expect(q.premium, rs(1000));
    expect(q.payingYears, 20);
    expect(q.totalInstalments, 240);
    expect(q.totalPremium, rs(240000));
  });

  test('yearly rebate is 12 × monthly: ₹1L → ₹60', () {
    final q = quote(100000, PremiumFrequency.yearly);
    expect(q.saRebate, rs(60));
    expect(q.premium, rs(11800 - 60));
  });

  test('rebate counts only complete ₹20,000 blocks: ₹1,15,000 → 5 blocks', () {
    final q = quote(115000, PremiumFrequency.monthly);
    expect(q.saRebate, rs(5));
    // 11.5 × 100.50 = 1155.75 − 5 = 1150.75 → ₹1,151
    expect(q.premium, rs(1151));
  });

  test('rounds half up to the rupee: ₹25,000 → 251.25 − 1 = 250.25 → ₹250', () {
    expect(quote(25000, PremiumFrequency.monthly).premium, rs(250));
  });

  test('missing frequency or combination → not in table, never estimated', () {
    final r = quotePremium(rules, _table(), santosh,
        sumAssured: 100000, entryAge: 30, column: 50, frequency: PremiumFrequency.quarterly);
    expect((r as PremiumUnavailable).reason, PremiumUnavailableReason.notInTable);
    final r2 = quotePremium(rules, _table(), santosh,
        sumAssured: 100000, entryAge: 31, column: 50, frequency: PremiumFrequency.monthly);
    expect((r2 as PremiumUnavailable).reason, PremiumUnavailableReason.notInTable);
  });

  test('no table → no table', () {
    final r = quotePremium(rules, null, rules.plan('pli_suvidha'),
        sumAssured: 100000, entryAge: 30, column: 50, frequency: PremiumFrequency.monthly);
    expect((r as PremiumUnavailable).reason, PremiumUnavailableReason.noTable);
  });

  test('checkedQuote reports rule violations first', () {
    final r = checkedQuote(rules, _table(), santosh,
        sumAssured: 10000, entryAge: 30, column: 50, frequency: PremiumFrequency.monthly);
    expect((r as PremiumUnavailable).violations.single, isA<SumAssuredBelowMin>());
  });

  test('affordable options: largest SA within budget', () {
    final opts = affordableOptions(rules, {'pli_santosh': _table()},
        scheme: Scheme.pli, entryAge: 30, budget: rs(1000), frequency: PremiumFrequency.monthly);
    expect(opts.single.quote.sumAssured, 100000);
    expect(opts.single.quote.premium <= rs(1000), isTrue);
    final more = affordableOptions(rules, {'pli_santosh': _table()},
        scheme: Scheme.pli, entryAge: 30, budget: rs(1099), frequency: PremiumFrequency.monthly);
    expect(more.single.quote.sumAssured, 100000, reason: '₹1,10,000 costs ₹1,100');
  });

  test('columns and paying years per plan type', () {
    expect(columnOptions(rules.plan('pli_suraksha')), [55, 58, 60]);
    expect(payingYears(rules.plan('pli_suraksha'), 30, 58), 28);
    expect(columnOptions(rules.plan('pli_sumangal')), [15, 20]);
    expect(payingYears(rules.plan('pli_sumangal'), 30, 15), 15);
  });
}
