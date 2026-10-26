import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pli_sahayak/data/storage.dart';

import 'support.dart';

void main() {
  testWidgets('home shows tiles, sample banner and rates footer (English)', (tester) async {
    await pumpApp(tester);
    expect(find.text('SAMPLE DATA – NOT OFFICIAL'), findsOneWidget);
    for (final t in ['Premium', 'Maturity', 'Compare', 'Afford', 'My Policies', 'Policy tools', 'Quotation', 'Eligibility', 'Plans', 'About']) {
      await scrollTo(tester, find.text(t));
      expect(find.text(t), findsOneWidget);
    }
    await scrollTo(tester, find.text('Rates FY 2026-27 • Source: India Post'));
  });

  testWidgets('home renders in Kannada', (tester) async {
    await pumpApp(tester, locale: const Locale('kn'));
    expect(find.text('ಪ್ರೀಮಿಯಂ'), findsOneWidget);
    expect(find.text('ಮಾದರಿ ದತ್ತಾಂಶ – ಅಧಿಕೃತವಲ್ಲ'), findsOneWidget);
  });

  testWidgets('Maturity tile opens the maturity calculator', (tester) async {
    await pumpApp(tester);
    await tester.tap(find.text('Maturity'));
    await tester.pumpAndSettle();
    expect(find.text('Maturity & Bonus'), findsOneWidget);
  });

  testWidgets('first launch shows the independent-calculator disclaimer once', (tester) async {
    final settings = MemorySettingsStore();
    await pumpApp(tester, settings: settings);
    expect(find.textContaining('not an official India Post app'), findsOneWidget);
    await tester.tap(find.text('I understand'));
    await tester.pumpAndSettle();
    expect(settings.disclaimerAccepted, isTrue);
    expect(find.textContaining('not an official India Post app'), findsNothing);
  });

  testWidgets('every home tile opens a screen', (tester) async {
    for (final (tile, title) in [
      ('Premium', 'Premium Calculator'),
      ('Compare', 'Compare plans'),
      ('Afford', 'What can I afford?'),
      ('Policy tools', 'Policy tools'),
      ('Plans', 'Plan information'),
      ('About', 'About'),
      ('My Policies', 'My Policies'),
      ('Quotation', 'Quotation'),
      ('Dues', 'Premium dues'),
      ('Forms', 'Forms and letters'),
      ('Agent profile', 'Agent profile'),
      ('Official links', 'Official links & help'),
    ]) {
      await pumpApp(tester, key: ValueKey(tile));
      await scrollTo(tester, find.widgetWithText(InkWell, tile));
      await tester.ensureVisible(find.widgetWithText(InkWell, tile));
      await tester.pumpAndSettle();
      await tester.tap(find.widgetWithText(InkWell, tile));
      await tester.pumpAndSettle();
      expect(find.widgetWithText(AppBar, title), findsOneWidget, reason: tile);
    }
  });
}
