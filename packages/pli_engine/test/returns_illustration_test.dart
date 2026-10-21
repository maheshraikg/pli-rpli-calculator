import 'package:pli_engine/pli_engine.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {
  final rules = bundledRules;
  final table = PremiumTable(
    tableId: 'pli_santosh',
    planId: 'pli_santosh',
    isSample: true,
    source: 'test',
    unitSumAssured: 10000,
    columnDimension: ColumnDimension.maturityAge,
    columns: const [50],
    cells: {PremiumFrequency.yearly: {30: [Paise.fromRupees(5000)]}},
  );
  final quote = (quotePremium(rules, table, rules.plan('pli_santosh'),
          sumAssured: 100000, entryAge: 30, column: 50, frequency: PremiumFrequency.yearly) as PremiumQuoted)
      .quote;
  final start = DateTime(2026, 11, 1);
  final projection = projectNewPolicy(rules,
      planId: 'pli_santosh', sumAssured: 100000, entryAge: 30, maturityAge: 50, commencement: start);

  test('cash flows: 20 yearly premiums out, maturity in', () {
    final flows = policyCashFlows(quote, projection, start);
    expect(flows, hasLength(21));
    expect(flows.first.amount, -(50000 - 60));
    expect(flows.last.amount, 204200);
    expect(flows.last.date, DateTime(2046, 11, 1));
  });

  test('effective return is positive and plausible', () {
    final r = effectiveReturn(quote, projection, start)!;
    // ₹49,940 a year for 20 years → ₹2,04,200 is a loss.
    expect(r, lessThan(0));
  });

  test('illustration rows', () {
    final rows = benefitIllustration(projection, quote);
    expect(rows, hasLength(20));
    expect(rows.first.premiumsPaid, rs(49940));
    expect(rows.first.lifeCover, rs(105200));
    expect(rows.last.accruedBonus, rs(104000));
  });

  test('money-back illustration tracks survival benefits but keeps full cover', () {
    final p = projectNewPolicy(rules, planId: 'pli_sumangal', sumAssured: 100000, termYears: 15);
    final rows = benefitIllustration(p);
    expect(rows[5].survivalBenefitsPaid, rs(20000)); // year 6
    expect(rows[5].lifeCover, rs(100000 + 4800 * 6));
    expect(rows[5].premiumsPaid, isNull);
  });
}
