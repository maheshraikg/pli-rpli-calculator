import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pli_engine/pli_engine.dart';
import 'package:pli_sahayak/app.dart';
import 'package:pli_sahayak/data/data_repository.dart';
import 'package:pli_sahayak/data/storage.dart';
import 'package:pli_sahayak/features/forms/forms_data.dart';
import 'package:pli_sahayak/features/maturity/maturity_state.dart';

/// Same files the app bundles, read from disk so tests are synchronous.
AppData bundledData() {
  final rules = RuleSet.parse(File(rulesAsset).readAsStringSync());
  return AppData(rules, {
    for (final p in rules.plans.where((p) => p.premiumTableId != null))
      p.premiumTableId!: PremiumTable.parse(File('assets/data/tables/${p.premiumTableId}.json').readAsStringSync()),
  });
}

/// Pumps the app on a phone-sized screen and returns its provider container.
Future<ProviderContainer> pumpApp(
  WidgetTester tester, {
  Locale locale = const Locale('en'),
  String location = '/',
  SettingsStore? settings,
  PolicyStore? policies,
  Key? key,
}) async {
  tester.view.physicalSize = const Size(1080, 2340);
  tester.view.devicePixelRatio = 2.75;
  addTearDown(tester.view.reset);
  final data = bundledData();
  await tester.pumpWidget(ProviderScope(
    key: key,
    overrides: [
      appDataProvider.overrideWith((ref) => data),
      todayProvider.overrideWithValue(DateTime(2026, 11, 1)),
      settingsStoreProvider.overrideWithValue(settings ?? MemorySettingsStore(disclaimerAccepted: true)),
      policyStoreProvider.overrideWithValue(policies ?? MemoryPolicyStore()),
      formsCatalogProvider.overrideWith((ref) => bundledForms()),
    ],
    child: PliRpliApp(locale: locale, initialLocation: location),
  ));
  await tester.pumpAndSettle();
  return ProviderScope.containerOf(tester.element(find.byType(PliRpliApp)));
}

/// Scrolls the screen's main list until [finder] is built and visible.
Future<void> scrollTo(WidgetTester tester, Finder finder) => tester.scrollUntilVisible(
      finder,
      200,
      scrollable: find
          .descendant(
            of: find.byWidgetPredicate((w) => w is ListView || w is SingleChildScrollView || w is CustomScrollView),
            matching: find.byType(Scrollable),
          )
          .first,
    );

FormsCatalog bundledForms() => FormsCatalog.parse(File('assets/data/forms.json').readAsStringSync());
