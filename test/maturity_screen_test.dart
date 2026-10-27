import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pli_sahayak/features/maturity/maturity_state.dart';

import 'support.dart';

void main() {
  testWidgets('default Santosh ₹1L, age 30 → 60: ₹2,56,200 with disclaimer', (tester) async {
    await pumpApp(tester, location: '/maturity');
    // 30 years × ₹5,200 bonus + ₹200 terminal bonus + ₹1,00,000 SA.
    await scrollTo(tester, find.text('₹2,56,200'));
    expect(find.text('₹2,56,200'), findsOneWidget);
    expect(find.text('₹1,56,000'), findsOneWidget);
    expect(find.text('₹200'), findsOneWidget);
    await scrollTo(tester, find.textContaining('not guaranteed'));
    expect(find.textContaining('Bonus rates are declared yearly'), findsOneWidget);
  });

  testWidgets('changing maturity age recalculates instantly', (tester) async {
    await pumpApp(tester, location: '/maturity');
    await scrollTo(tester, find.widgetWithText(ChoiceChip, '50'));
    await tester.ensureVisible(find.widgetWithText(ChoiceChip, '50'));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(ChoiceChip, '50'));
    await tester.pumpAndSettle();
    await scrollTo(tester, find.text('₹2,04,200'));
    expect(find.text('₹2,04,200'), findsOneWidget);
  });

  testWidgets('Gram Priya at 47 shows a plain-language age message', (tester) async {
    final container = await pumpApp(tester, location: '/maturity');
    final data = bundledData();
    container.read(maturityFormProvider.notifier)
      ..selectPlan(data.rules.plan('rpli_gram_priya'))
      ..setEntryAge(47);
    await tester.pumpAndSettle();
    await scrollTo(tester, find.textContaining('entry age is 20–45. Your age: 47'));
    expect(find.textContaining('entry age is 20–45. Your age: 47'), findsOneWidget);
  });

  testWidgets('Sumangal shows the survival benefit timeline with dates', (tester) async {
    final container = await pumpApp(tester, location: '/maturity');
    container.read(maturityFormProvider.notifier)
      ..selectPlan(bundledData().rules.plan('pli_sumangal'))
      ..setTermYears(20);
    await tester.pumpAndSettle();
    await scrollTo(tester, find.text('Survival benefit timeline'));
    expect(find.text('Survival benefit'), findsNWidgets(3));
    expect(find.text('₹20,000'), findsNWidgets(3));
    expect(find.text('₹1,96,000'), findsOneWidget); // total benefits
    expect(find.textContaining('Nov 1, 2034'), findsOneWidget);
  });

  testWidgets('plans with unconfirmed rules show "Not available yet"', (tester) async {
    final container = await pumpApp(tester, location: '/maturity');
    container.read(maturityFormProvider.notifier).selectPlan(bundledData().rules.plan('pli_suvidha'));
    await tester.pumpAndSettle();
    expect(find.text('Not available yet'), findsOneWidget);
    expect(find.text('Maturity value'), findsNothing);
  });

  testWidgets('RPLI hides SA chips above ₹10 lakh', (tester) async {
    await pumpApp(tester, location: '/maturity');
    expect(find.text('₹20L'), findsOneWidget);
    await tester.tap(find.text('RPLI'));
    await tester.pumpAndSettle();
    expect(find.text('₹20L'), findsNothing);
    expect(find.text('₹10L'), findsOneWidget);
  });

  testWidgets('renders in Kannada', (tester) async {
    await pumpApp(tester, locale: const Locale('kn'), location: '/maturity');
    expect(find.text('ಪಕ್ವತೆ ಮತ್ತು ಬೋನಸ್'), findsOneWidget);
    await scrollTo(tester, find.text('₹2,56,200'));
    expect(find.text('ಪಕ್ವತೆ ಮೊತ್ತ'), findsOneWidget);
    expect(find.text('₹2,56,200'), findsOneWidget);
  });
}
