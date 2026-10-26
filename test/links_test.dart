import 'package:flutter_test/flutter_test.dart';
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
}
