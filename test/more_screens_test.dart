import 'package:flutter_test/flutter_test.dart';
import 'package:pli_engine/pli_engine.dart';
import 'package:pli_sahayak/data/saved_policy.dart';
import 'package:pli_sahayak/data/storage.dart';

import 'support.dart';

void main() {
  testWidgets('afford screen lists options within budget', (tester) async {
    await pumpApp(tester, location: '/afford');
    // Plan names repeat (one card per maturity age), so check that options
    // from plans with tables are listed at all.
    expect(find.text('Sum assured'), findsWidgets);
    final top = find.textContaining(RegExp('Suvidha|Santosh|Suraksha'), skipOffstage: false);
    expect(top, findsWidgets);
  });

  testWidgets('compare shows two options side by side', (tester) async {
    await pumpApp(tester, location: '/compare');
    await scrollTo(tester, find.text('Comparison'));
    expect(find.text('Option 1'), findsWidgets);
    expect(find.text('Option 2'), findsWidgets);
  });

  testWidgets('tools: revival tab totals arrears and default fee', (tester) async {
    await pumpApp(tester, location: '/tools');
    await tester.tap(find.text('Revival'));
    await tester.pumpAndSettle();
    // Defaults: ₹1,000 monthly, first unpaid 1 Aug 2026, paid 1 Nov 2026 → 4 dues, 3+2+1+0 months.
    expect(find.text('₹4,000'), findsOneWidget);
    expect(find.text('₹60'), findsOneWidget);
    expect(find.text('₹4,060'), findsOneWidget);
  });

  testWidgets('tools: loan tab shows interest', (tester) async {
    await pumpApp(tester, location: '/tools');
    expect(find.text('Eligible for a loan'), findsOneWidget);
    await scrollTo(tester, find.text('Total to repay'));
    expect(find.text('₹5,125'), findsOneWidget); // ₹50,000 for 12 months
  });

  testWidgets('my policies: saved policy shows bonus and next due date', (tester) async {
    final store = MemoryPolicyStore();
    await store.put(SavedPolicy(
      id: '1',
      holderName: 'Lakshmi',
      policyNumber: 'PLI-123',
      planId: 'pli_santosh',
      sumAssured: 100000,
      commencement: DateTime(2025, 6, 1),
      entryAge: 30,
      column: 50,
      frequency: PremiumFrequency.monthly,
      premiumRupees: 450,
      reminders: false,
    ));
    await pumpApp(tester, location: '/policies', policies: store);
    expect(find.text('Lakshmi'), findsOneWidget);
    expect(find.textContaining('Next due: Nov 1, 2026'), findsOneWidget);
    await tester.tap(find.text('Lakshmi'));
    await tester.pumpAndSettle();
    expect(find.text('₹5,200'), findsOneWidget); // one completed year in FY 2026-27
  });

  testWidgets('plans screen lists plan facts from the rules', (tester) async {
    await pumpApp(tester, location: '/plans');
    await tester.tap(find.text('Sumangal (Anticipated Endowment)'));
    await tester.pumpAndSettle();
    expect(find.textContaining('20% at year 6'), findsOneWidget);
  });

  testWidgets('plans screen shows Suraksha conversion and the surrender bonus rule', (tester) async {
    await pumpApp(tester, location: '/plans');
    await tester.tap(find.text('Suraksha (Whole Life Assurance)'));
    await tester.pumpAndSettle();
    expect(find.textContaining('Can be converted to Endowment Assurance up to age 59'), findsOneWidget);
    expect(find.textContaining('Surrendered before 5 years: no bonus'), findsOneWidget);
  });

  testWidgets('about lists provisional rules and privacy', (tester) async {
    await pumpApp(tester, location: '/about');
    expect(find.text('Privacy'), findsOneWidget);
    await scrollTo(tester, find.text('Rules still being confirmed'));
    expect(find.text('Rules still being confirmed'), findsOneWidget);
  });
}
