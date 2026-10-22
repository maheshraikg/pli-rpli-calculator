// Renders app screens to PNG with real fonts (not the Ahem test font).
// Run: flutter test --update-goldens test_screenshots/
// Output: test_screenshots/out/*.png
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pli_engine/pli_engine.dart';
import 'package:pli_sahayak/data/agent_profile.dart';
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

  SavedPolicy demoPolicy() => SavedPolicy(
        id: '1', holderName: 'Lakshmi Devi', policyNumber: 'PLI-KA-123456', planId: 'pli_santosh',
        sumAssured: 300000, commencement: DateTime(2025, 6, 1), entryAge: 32, column: 58,
        frequency: PremiumFrequency.monthly, premiumRupees: 1180, reminders: true,
      );

  testWidgets('11 forms list', (tester) async {
    await pumpApp(tester, location: '/forms');
    await _shot(tester, '11_forms_full', height: 4700);
  });

  testWidgets('12 form detail', (tester) async {
    await pumpApp(tester, location: '/forms/maturity');
    await _shot(tester, '12_form_maturity_full', height: 3300);
  });

  testWidgets('13 letter', (tester) async {
    final store = MemoryPolicyStore();
    await store.put(demoPolicy());
    await pumpApp(tester, location: '/forms/loan/letter', policies: store);
    await tester.enterText(find.widgetWithText(TextField, 'To (Post Office / CPC)'), 'Mysuru Head Post Office');
    await tester.enterText(find.widgetWithText(TextField, 'Your address'), '12, MG Road, Mysuru 570001');
    await tester.enterText(find.widgetWithText(TextField, 'Phone'), '98450 00000');
    await tester.enterText(find.widgetWithText(TextField, 'Place'), 'Mysuru');
    await tester.enterText(find.widgetWithText(TextField, 'Loan amount (₹)'), '50000');
    await _shot(tester, '13_letter_loan_full', height: 6400);
  });

  testWidgets('14 forms kannada', (tester) async {
    await pumpApp(tester, locale: const Locale('kn'), location: '/forms');
    await _shot(tester, '14_forms_kannada');
  });

  for (final (name, route, height) in [('15_dark_home', '/', 2340.0), ('16_dark_premium_full', '/premium', 5000.0)]) {
    testWidgets(name, (tester) async {
      tester.platformDispatcher.platformBrightnessTestValue = Brightness.dark;
      addTearDown(tester.platformDispatcher.clearAllTestValues);
      await pumpApp(tester, location: route);
      await _shot(tester, name, height: height);
    });
  }

  testWidgets('17 large text home', (tester) async {
    tester.platformDispatcher.textScaleFactorTestValue = 1.6;
    addTearDown(tester.platformDispatcher.clearAllTestValues);
    await pumpApp(tester);
    await _shot(tester, '17_large_text_home');
  });

  testWidgets('18 dues', (tester) async {
    final store = MemoryPolicyStore();
    final names = ['Lakshmi Devi', 'Ravi Kumar', 'Shabnam Begum', 'Manjunath Gowda'];
    for (final (i, n) in names.indexed) {
      await store.put(SavedPolicy(
        id: '$i', holderName: n, policyNumber: 'PLI-KA-10${i}234', planId: 'pli_santosh', sumAssured: 100000 * (i + 1),
        commencement: DateTime(2024, 1 + i * 2, 4 + i * 6), entryAge: 30, column: 58, frequency: PremiumFrequency.monthly,
        premiumRupees: 450 * (i + 1), reminders: true, phone: i.isEven ? '98450 0000$i' : '',
      ));
    }
    await pumpApp(tester, location: '/dues', policies: store);
    await _shot(tester, '18_dues');
  });

  testWidgets('19 agent quotation', (tester) async {
    final settings = MemorySettingsStore(
      disclaimerAccepted: true,
      agentProfile: const AgentProfile(name: 'Suresh Kumar', phone: '94480 11111', code: 'PLI Agent • Mysuru HO'),
    );
    await pumpApp(tester, location: '/quotation', settings: settings);
    await tester.enterText(find.widgetWithText(TextField, 'Customer name'), 'Ravi Kumar');
    await _shot(tester, '19_quotation_agent_full', height: 6600);
  });

  testWidgets('20 profile', (tester) async {
    final settings = MemorySettingsStore(
      disclaimerAccepted: true,
      agentProfile: const AgentProfile(name: 'Suresh Kumar', phone: '94480 11111', code: 'PLI Agent • Mysuru HO'),
    );
    await pumpApp(tester, location: '/profile', settings: settings);
    await _shot(tester, '20_profile');
  });
}
