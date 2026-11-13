import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pli_engine/pli_engine.dart';
import 'package:pli_sahayak/core/formatters.dart';
import 'package:pli_sahayak/features/common/plan_config.dart';
import 'package:pli_sahayak/features/common/plan_evaluation.dart';
import 'package:pli_sahayak/features/premium/premium_screen.dart';

import 'support.dart';

void main() {
  testWidgets('premium screen shows the table premium for the selected frequency, with no sample banner', (tester) async {
    final container = await pumpApp(tester, location: '/premium');
    final data = bundledData();
    final e = evaluatePlan(data, container.read(planConfigProvider(premiumConfigKey)));
    final expected = e.selectedQuote!.premium;
    // Same figure the engine gives straight from the table.
    final direct = (quotePremium(data.rules, data.tables['pli_santosh'], data.rules.plan('pli_santosh'),
            sumAssured: 100000, entryAge: 30, column: 60, frequency: PremiumFrequency.monthly) as PremiumQuoted)
        .quote
        .premium;
    expect(expected, direct);
    await scrollTo(tester, find.text('Premium per instalment • Monthly'));
    expect(find.text(formatRupees(expected)), findsWidgets);
    expect(find.text('SAMPLE DATA – NOT OFFICIAL'), findsNothing);
  });

  test('switching PLI/RPLI maps each plan to the same kind of plan', () {
    final rules = bundledData().rules;
    String to(String id, Scheme s) => equivalentPlan(rules, rules.plan(id), s).id;
    expect(to('pli_santosh', Scheme.rpli), 'rpli_gram_santosh');
    expect(to('pli_suraksha', Scheme.rpli), 'rpli_gram_suraksha');
    expect(to('pli_suvidha', Scheme.rpli), 'rpli_gram_suvidha');
    expect(to('pli_sumangal', Scheme.rpli), 'rpli_gram_sumangal');
    expect(to('pli_bal_jeevan_bima', Scheme.rpli), 'rpli_bal_jeevan_bima');
    expect(to('pli_yugal_suraksha', Scheme.rpli), 'rpli_gram_santosh');
    expect(to('rpli_gram_santosh', Scheme.pli), 'pli_santosh');
    expect(to('rpli_gram_priya', Scheme.pli), 'pli_sumangal');
  });

  testWidgets('premium screen: RPLI after PLI Santosh shows Gram Santosh', (tester) async {
    final c = await pumpApp(tester, location: '/premium');
    await tester.tap(find.text('RPLI'));
    await tester.pumpAndSettle();
    expect(c.read(planConfigProvider(premiumConfigKey)).planId, 'rpli_gram_santosh');
  });

  testWidgets('date of birth uses age next birthday, matching Dak Sewa', (tester) async {
    // Dak Sewa quote: Santosh, born 9 Jun 1991, start 13 Nov 2026, ₹10 lakh,
    // maturity at 55: age 36, 19 years, ₹4,400 − ₹50 = ₹4,350 a month,
    // maturity ₹19,88,000.
    final c = await pumpApp(tester, location: '/premium');
    c.read(planConfigProvider(premiumConfigKey).notifier)
      ..setCommencement(DateTime(2026, 11, 13))
      ..setDob(DateTime(1991, 6, 9))
      ..setSumAssured(1000000)
      ..setColumn(55);
    await tester.pumpAndSettle();
    expect(find.text('Entry age on start date: 36 (age next birthday)'), findsOneWidget);
    final e = c.read(planEvaluationProvider(premiumConfigKey))!;
    expect(e.entryAge, 36);
    expect(e.selectedQuote!.premium, Paise.wholeRupees(4350));
    expect(e.selectedQuote!.payingYears, 19);
    expect(e.projection!.termYears, 19);
    expect(e.projection!.totalBenefits, Paise.wholeRupees(1988000));
  });

  testWidgets('date of birth gives age next birthday', (tester) async {
    final container = await pumpApp(tester, location: '/premium');
    container.read(planConfigProvider(premiumConfigKey).notifier).setDob(DateTime(1990, 3, 1)); // start 1 Nov 2026
    await tester.pumpAndSettle();
    expect(find.text('Entry age on start date: 37 (age next birthday)'), findsOneWidget);
  });

  testWidgets('plan without a premium table says so instead of a number', (tester) async {
    final container = await pumpApp(tester, location: '/premium');
    container.read(planConfigProvider(premiumConfigKey).notifier).selectPlan(bundledData().rules.plan('pli_sumangal'));
    await tester.pumpAndSettle();
    await scrollTo(tester, find.text('The premium table for this plan is not loaded yet.'));
    expect(find.text('The premium table for this plan is not loaded yet.'), findsOneWidget);
  });

  testWidgets('quotation renders the document with share buttons', (tester) async {
    await pumpApp(tester, location: '/quotation');
    await tester.enterText(find.widgetWithText(TextField, 'Customer name'), 'Ravi Kumar');
    await tester.pumpAndSettle();
    expect(find.text('Share PDF'), findsOneWidget);
    await scrollTo(tester, find.text('For: Ravi Kumar'));
    expect(find.text('For: Ravi Kumar'), findsOneWidget);
  });

  testWidgets('quotation shows premium and total paid for all four frequencies', (tester) async {
    await pumpApp(tester, location: '/quotation');
    await scrollTo(tester, find.text('Total paid'));
    for (final f in ['Yearly', 'Half-yearly', 'Quarterly', 'Monthly', 'Premium', 'Total paid']) {
      expect(find.text(f), findsWidgets, reason: f);
    }
    await scrollTo(tester, find.textContaining('Total bonus'));
    expect(find.textContaining('+ ₹'), findsWidgets);
  });

  testWidgets('quotation in Kannada is bilingual', (tester) async {
    await pumpApp(tester, locale: const Locale('kn'), location: '/quotation');
    await scrollTo(tester, find.textContaining('Premium Quotation'));
    expect(find.textContaining('/ Premium Quotation'), findsOneWidget);
  });

  testWidgets('Suvidha shows the premium after conversion to endowment', (tester) async {
    final container = await pumpApp(tester, location: '/premium');
    container.read(planConfigProvider(premiumConfigKey).notifier).selectPlan(bundledData().rules.plan('pli_suvidha'));
    await tester.pumpAndSettle();
    await scrollTo(tester, find.text('After 5 years, if converted to Endowment'));
    expect(find.text('Monthly • maturity at 50'), findsOneWidget);
    expect(find.text('Monthly • maturity at 58'), findsOneWidget);
  });

  testWidgets('Yugal Suraksha uses the equivalent age (booklet example)', (tester) async {
    final container = await pumpApp(tester, location: '/premium');
    container.read(planConfigProvider(premiumConfigKey).notifier)
      ..selectPlan(bundledData().rules.plan('pli_yugal_suraksha'))
      ..setManualAge(40)
      ..setSpouseAge(35)
      ..setColumn(7)
      ..setSumAssured(600000);
    await tester.pumpAndSettle();
    await scrollTo(tester, find.text('Equivalent age (both spouses)'));
    expect(find.text('38 years'), findsWidgets);
    expect(find.text('₹8,163'), findsWidgets);
  });
}
