import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pli_engine/pli_engine.dart';
import 'package:pli_sahayak/app.dart';
import 'package:pli_sahayak/data/data_repository.dart';

/// Same files the app bundles, read from disk so the test is synchronous.
AppData _bundledData() {
  final rules = RuleSet.parse(File(rulesAsset).readAsStringSync());
  return AppData(rules, {
    for (final p in rules.plans.where((p) => p.premiumTableId != null))
      p.premiumTableId!: PremiumTable.parse(File('assets/data/tables/${p.premiumTableId}.json').readAsStringSync()),
  });
}

Future<void> _pump(WidgetTester tester, Locale locale) async {
  tester.view.physicalSize = const Size(1080, 2340);
  tester.view.devicePixelRatio = 2.75;
  addTearDown(tester.view.reset);
  final data = _bundledData();
  await tester.pumpWidget(ProviderScope(
    overrides: [appDataProvider.overrideWith((ref) => data)],
    child: PliSahayakApp(locale: locale),
  ));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('home shows tiles, sample banner and rates footer (English)', (tester) async {
    await _pump(tester, const Locale('en'));
    for (final t in ['Premium', 'Maturity', 'Compare', 'Eligibility', 'My Policies', 'Quotation']) {
      expect(find.text(t), findsOneWidget);
    }
    expect(find.text('SAMPLE DATA – NOT OFFICIAL'), findsOneWidget);
    expect(find.text('Rates FY 2026-27 • Source: India Post'), findsOneWidget);
  });

  testWidgets('home renders in Kannada', (tester) async {
    await _pump(tester, const Locale('kn'));
    expect(find.text('ಪ್ರೀಮಿಯಂ'), findsOneWidget);
    expect(find.text('ಮಾದರಿ ದತ್ತಾಂಶ – ಅಧಿಕೃತವಲ್ಲ'), findsOneWidget);
  });
}
