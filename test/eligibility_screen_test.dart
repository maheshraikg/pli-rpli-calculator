import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'support.dart';

void main() {
  testWidgets('prompts until a group is chosen', (tester) async {
    await pumpApp(tester, location: '/eligibility');
    await scrollTo(tester, find.textContaining('Select at least one option'));
    expect(find.textContaining('Select at least one option'), findsOneWidget);
  });

  testWidgets('graduate aged 30 sees PLI plans', (tester) async {
    await pumpApp(tester, location: '/eligibility');
    await scrollTo(tester, find.text('Age'));
    await tester.tap(find.text('Graduate or diploma holder'));
    await tester.pumpAndSettle();
    await scrollTo(tester, find.text('Santosh (Endowment Assurance)'));
    expect(find.text('Santosh (Endowment Assurance)'), findsOneWidget);
    expect(find.text('Gram Santosh (Endowment Assurance)'), findsNothing);
  });

  testWidgets('Kannada labels', (tester) async {
    await pumpApp(tester, locale: const Locale('kn'), location: '/eligibility');
    await scrollTo(tester, find.text('ವಯಸ್ಸು'));
    await tester.tap(find.text('ಗ್ರಾಮೀಣ ಪ್ರದೇಶದ ನಿವಾಸಿ'));
    await tester.pumpAndSettle();
    await scrollTo(tester, find.text('ಗ್ರಾಮ ಸಂತೋಷ್ (ದತ್ತಿ ವಿಮೆ)'));
    expect(find.text('ಗ್ರಾಮ ಸಂತೋಷ್ (ದತ್ತಿ ವಿಮೆ)'), findsOneWidget);
  });
}
