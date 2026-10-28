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

  testWidgets('date of birth gives age nearest birthday', (tester) async {
    final container = await pumpApp(tester, location: '/premium');
    container.read(planConfigProvider(premiumConfigKey).notifier).setDob(DateTime(1990, 3, 1)); // start 1 Nov 2026
    await tester.pumpAndSettle();
    expect(find.text('Entry age on start date: 37 (age nearest birthday)'), findsOneWidget);
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
