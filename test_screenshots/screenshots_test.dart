// Renders app screens to PNG with real fonts (not the Ahem test font).
// Run: flutter test --update-goldens test_screenshots/
// Output: test_screenshots/out/*.png
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pli_engine/pli_engine.dart';
import 'package:pli_sahayak/data/saved_policy.dart';
import 'package:pli_sahayak/data/storage.dart';
import 'package:pli_sahayak/features/common/plan_config.dart';
import 'package:pli_sahayak/features/maturity/maturity_state.dart';
import 'package:pli_sahayak/features/premium/premium_screen.dart';

import '../test/support.dart';

const _flutterFonts = '/opt/flutter/bin/cache/artifacts/material_fonts';
final _extraFonts = Platform.environment['EXTRA_FONTS'] ?? '';

Future<void> _load(String family, List<String> paths) async {
  final loader = FontLoader(family);
  for (final p in paths) {
    if (File(p).existsSync()) loader.addFont(Future.value(ByteData.sublistView(File(p).readAsBytesSync())));
  }
  await loader.load();
}

Future<void> _shot(WidgetTester tester, String name, {double height = 2340}) async {
  tester.view.physicalSize = Size(1080, height);
  await tester.pumpAndSettle();
  // Let asset images decode before capturing.
  await tester.runAsync(() async {
    for (final e in find.byType(Image).evaluate()) {
      await precacheImage((e.widget as Image).image, e);
    }
  });
  await tester.pumpAndSettle();
  await expectLater(find.byType(MaterialApp), matchesGoldenFile('out/$name.png'));
}

void main() {
  setUpAll(() async {
    // Indic fonts are registered under Roboto too, so glyph fallback finds them.
    final indic = ['$_extraFonts/Kannada.ttf', '$_extraFonts/Devanagari.ttf'];
    await _load('Roboto', [
      '$_flutterFonts/Roboto-Regular.ttf',
      '$_flutterFonts/Roboto-Medium.ttf',
      '$_flutterFonts/Roboto-Bold.ttf',
      ...indic,
    ]);
    await _load('MaterialIcons', ['$_flutterFonts/MaterialIcons-Regular.otf']);
    for (final f in ['Kannada', 'Devanagari']) {
      await _load('Noto Sans $f', ['$_extraFonts/$f.ttf']);
    }
  });

  testWidgets('01 home', (tester) async {
    await pumpApp(tester);
    await _shot(tester, '01_home');
  });

  testWidgets('01b home full', (tester) async {
    await pumpApp(tester);
    await _shot(tester, '01b_home_full', height: 4300);
  });

  testWidgets('02 premium', (tester) async {
    await pumpApp(tester, location: '/premium');
    await _shot(tester, '02_premium_full', height: 5000);
  });

  testWidgets('03 money-back timeline', (tester) async {
    final c = await pumpApp(tester, location: '/maturity');
    c.read(maturityFormProvider.notifier)
      ..selectPlan(bundledData().rules.plan('pli_sumangal'))
      ..setTermYears(20);
    await _shot(tester, '03_maturity_sumangal_full', height: 4600);
  });

  testWidgets('04 compare', (tester) async {
    await pumpApp(tester, location: '/compare');
    await _shot(tester, '04_compare_full', height: 4000);
  });

  testWidgets('05 quotation', (tester) async {
    final c = await pumpApp(tester, location: '/quotation');
    c.read(planConfigProvider(premiumConfigKey).notifier).setSumAssured(500000);
    await tester.enterText(find.widgetWithText(TextField, 'Customer name'), 'Ravi Kumar');
    await _shot(tester, '05_quotation_full', height: 6200);
  });

  testWidgets('06 my policy', (tester) async {
    final store = MemoryPolicyStore();
    await store.put(SavedPolicy(
      id: '1', holderName: 'Lakshmi Devi', policyNumber: 'PLI-KA-123456', planId: 'pli_santosh',
      sumAssured: 300000, commencement: DateTime(2025, 6, 1), entryAge: 32, column: 58,
      frequency: PremiumFrequency.monthly, premiumRupees: 1180, reminders: true,
    ));
    await pumpApp(tester, location: '/policies/1', policies: store);
    await _shot(tester, '06_policy_detail');
  });

  testWidgets('07 tools revival', (tester) async {
    await pumpApp(tester, location: '/tools');
    await tester.tap(find.text('Revival'));
    await _shot(tester, '07_tools_revival');
  });

  testWidgets('08 eligibility', (tester) async {
    await pumpApp(tester, location: '/eligibility');
    await tester.tap(find.text('Graduate or diploma holder'));
    await _shot(tester, '08_eligibility_full', height: 4200);
  });

  testWidgets('09 home kannada', (tester) async {
    await pumpApp(tester, locale: const Locale('kn'));
    await _shot(tester, '09_home_kannada');
  });

  testWidgets('10 premium hindi', (tester) async {
    await pumpApp(tester, locale: const Locale('hi'), location: '/premium');
    await _shot(tester, '10_premium_hindi_full', height: 5000);
  });
}
