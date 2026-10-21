import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'support.dart';

void main() {
  testWidgets('home shows tiles, sample banner and rates footer (English)', (tester) async {
    await pumpApp(tester);
    for (final t in ['Premium', 'Maturity', 'Compare', 'Eligibility', 'My Policies', 'Quotation']) {
      expect(find.text(t), findsOneWidget);
    }
    expect(find.text('SAMPLE DATA – NOT OFFICIAL'), findsOneWidget);
    expect(find.text('Rates FY 2026-27 • Source: India Post'), findsOneWidget);
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

  testWidgets('Premium screen refuses to show estimated premiums', (tester) async {
    await pumpApp(tester, location: '/premium');
    expect(find.text('Not available yet'), findsOneWidget);
    expect(find.textContaining('no estimated premiums'), findsOneWidget);
  });
}
