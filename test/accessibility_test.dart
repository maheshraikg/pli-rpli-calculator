// Every screen in dark mode and with large system text (as many older
// users set it). Any overflow or layout error fails the test.
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pli_engine/pli_engine.dart';
import 'package:pli_sahayak/data/saved_policy.dart';
import 'package:pli_sahayak/data/storage.dart';
import 'package:pli_sahayak/l10n/app_localizations.dart';

import 'support.dart';

const _routes = [
  '/',
  '/premium',
  '/maturity',
  '/compare',
  '/afford',
  '/eligibility',
  '/tools',
  '/policies',
  '/policies/1',
  '/quotation',
  '/forms',
  '/forms/loan',
  '/forms/loan/letter',
  '/forms/sheet',
  '/plans',
  '/about',
  '/dues',
  '/profile',
];

PolicyStore _store() => MemoryPolicyStore()
  ..put(SavedPolicy(
    id: '1',
    holderName: 'Lakshmi Devi Ramachandran',
    policyNumber: 'PLI-KA-123456789',
    planId: 'pli_santosh',
    sumAssured: 300000,
    commencement: DateTime(2025, 6, 1),
    entryAge: 32,
    column: 58,
    frequency: PremiumFrequency.monthly,
    premiumRupees: 1180,
    reminders: true,
  ))
  ..put(SavedPolicy(
    id: '2',
    holderName: 'Venkataramana Subrahmanya',
    policyNumber: 'RPLI-KA-987654321',
    planId: 'pli_santosh',
    sumAssured: 100000,
    commencement: DateTime(2025, 6, 20),
    entryAge: 30,
    column: 50,
    frequency: PremiumFrequency.monthly,
    premiumRupees: 450,
    reminders: false,
    paidDues: const {'2026-11-20'},
  ));

void main() {
  test('English plurals read correctly', () {
    final l = lookupAppLocalizations(const Locale('en'));
    expect(l.monthsValue(1), '1 month');
    expect(l.monthsValue(3), '3 months');
    expect(l.ageYears(1), '1 year');
    expect(l.revivalLine('Aug 1, 2026', 1, '₹10'), 'Due Aug 1, 2026 • 1 month late • fee ₹10');
    expect(l.revivalLine('Nov 1, 2026', 0, '₹0'), 'Due Nov 1, 2026 • on time • fee ₹0');
  });

  for (final (label, scale, dark, lang) in [
    ('dark', 1.0, true, 'en'),
    ('large text 1.5x', 1.5, false, 'en'),
    ('large text 2x', 2.0, false, 'en'),
    ('Kannada large text 1.5x', 1.5, false, 'kn'),
  ]) {
    for (final route in _routes) {
      testWidgets('[$label] $route lays out', (tester) async {
        tester.platformDispatcher.textScaleFactorTestValue = scale;
        if (dark) tester.platformDispatcher.platformBrightnessTestValue = Brightness.dark;
        addTearDown(tester.platformDispatcher.clearAllTestValues);
        await pumpApp(tester, location: route, locale: Locale(lang), policies: _store());
        // Walk to the bottom so every lazily built item is laid out.
        final lists = find.byWidgetPredicate((w) => w is ListView || w is SingleChildScrollView || w is CustomScrollView);
        if (lists.evaluate().isNotEmpty) {
          await tester.fling(lists.first, const Offset(0, -6000), 3000);
          await tester.pumpAndSettle();
        }
      });
    }
  }
}
