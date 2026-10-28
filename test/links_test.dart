import 'package:flutter_test/flutter_test.dart';
import 'package:pli_sahayak/features/about/about_screen.dart';
import 'package:pli_sahayak/features/links/links_screen.dart';

import 'support.dart';

void main() {
  test('official links are gov.in websites or the India Post helpline', () {
    for (final link in officialLinks) {
      final uri = Uri.parse(link.url);
      if (uri.scheme == 'tel') {
        expect(uri.path, '18002666868');
      } else {
        expect(uri.scheme, 'https', reason: link.url);
        expect(uri.host, endsWith('.gov.in'), reason: link.url);
      }
    }
  });

  testWidgets('links screen lists every link and the independence note', (tester) async {
    await pumpApp(tester, location: '/links');
    expect(find.text('PLI Customer Portal'), findsOneWidget);
    await tester.scrollUntilVisible(find.textContaining('not affiliated'), 200);
    expect(find.text('Toll-free 1800 266 6868'), findsOneWidget);
    expect(find.textContaining('not affiliated with India Post'), findsOneWidget);
  });

  testWidgets('About shows the privacy policy and official links', (tester) async {
    await pumpApp(tester, location: '/about');
    expect(find.text('Read the full privacy policy'), findsOneWidget);
    expect(find.text('Official links & help'), findsOneWidget);
  });

  test('privacy policy URL is the public Google Doc', () {
    expect(Uri.parse(kPrivacyPolicyUrl).host, 'docs.google.com');
  });

  testWidgets('About has Help & feedback with the support email', (tester) async {
    await pumpApp(tester, location: '/about');
    expect(find.text('Help & feedback'), findsOneWidget);
    expect(find.textContaining('maheshraikg@gmail.com'), findsOneWidget);
    expect(find.text('Report a problem'), findsOneWidget);
    expect(find.text('Check for app updates (Play Store)'), findsOneWidget);
  });

  test('support e-mail link carries subject and body', () {
    final uri = supportMail('Bug', 'Line 1\nLine 2');
    expect(uri.scheme, 'mailto');
    expect(uri.path, kSupportEmail);
    expect(uri.query, contains('subject=Bug'));
    expect(Uri.decodeComponent(uri.query), contains('Line 1\nLine 2'));
    expect(Uri.parse(kPlayStoreUrl).queryParameters['id'], 'com.plirpli.calculator');
  });
}
