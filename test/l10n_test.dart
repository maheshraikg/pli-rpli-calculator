import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pli_sahayak/core/locale.dart';
import 'package:pli_sahayak/features/maturity/maturity_state.dart';
import 'package:pli_sahayak/l10n/app_localizations.dart';

import 'support.dart';
import 'package:pli_sahayak/core/app_icons.dart';

void main() {
  test('language picker offers exactly the generated locales', () {
    expect(
      AppLocalizations.supportedLocales.map((l) => l.languageCode).toSet(),
      kAppLanguages.keys.toSet(),
    );
  });

  test('every language translates every English string', () {
    Set<String> keys(String lang) => (jsonDecode(File('lib/l10n/app_$lang.arb').readAsStringSync()) as Map<String, Object?>)
        .keys
        .where((k) => !k.startsWith('@'))
        .toSet();
    final english = keys('en');
    for (final lang in kAppLanguages.keys) {
      expect(english.difference(keys(lang)), isEmpty, reason: 'untranslated in $lang');
    }
  });

  test('every plan has a name in every app language', () {
    final rules = bundledData().rules;
    for (final plan in rules.plans) {
      for (final lang in kAppLanguages.keys) {
        expect(plan.names[lang], isNotNull, reason: '${plan.id} [$lang]');
        expect(plan.names[lang], isNotEmpty, reason: '${plan.id} [$lang]');
      }
    }
  });

  // The busiest screens in every language; any overflow surfaces as a test
  // exception.
  for (final lang in kAppLanguages.keys) {
    testWidgets('[$lang] maturity screen with survival timeline renders', (tester) async {
      final container = await pumpApp(tester, locale: Locale(lang), location: '/maturity');
      container.read(maturityFormProvider.notifier)
        ..selectPlan(bundledData().rules.plan('pli_sumangal'))
        ..setTermYears(20);
      await tester.pumpAndSettle();
      await scrollTo(tester, find.text('₹1,96,000'));
      expect(find.text('₹1,96,000'), findsOneWidget);
    });

    testWidgets('[$lang] premium and quotation screens render', (tester) async {
      await pumpApp(tester, locale: Locale(lang), location: '/premium');
      await scrollTo(tester, find.byType(FilledButton));
      await pumpApp(tester, locale: Locale(lang), location: '/quotation', key: ValueKey('q$lang'));
      expect(find.byType(RepaintBoundary), findsWidgets);
    });

    testWidgets('[$lang] eligibility screen lists translated plan names', (tester) async {
      await pumpApp(tester, locale: Locale(lang), location: '/eligibility');
      await tester.tap(find.byType(FilterChip).first);
      await tester.pumpAndSettle();
      final santosh = bundledData().rules.plan('pli_santosh').name(lang);
      await scrollTo(tester, find.text(santosh));
      expect(find.text(santosh), findsOneWidget);
    });
  }

  testWidgets('Urdu lays out right-to-left', (tester) async {
    await pumpApp(tester, locale: const Locale('ur'));
    expect(Directionality.of(tester.element(find.text('پریمیم'))), TextDirection.rtl);
  });

  testWidgets('choosing a language from the picker switches the app', (tester) async {
    await pumpApp(tester);
    await tester.tap(find.byIcon(AppIcons.translateLine));
    await tester.pumpAndSettle();
    await tester.tap(find.text('हिन्दी'));
    await tester.pumpAndSettle();
    expect(find.text('प्रीमियम'), findsOneWidget);
    expect(find.text('नमूना डेटा – आधिकारिक नहीं'), findsNothing);
  });
}
