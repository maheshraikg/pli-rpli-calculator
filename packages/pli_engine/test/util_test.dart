import 'dart:math' as math;

import 'package:pli_engine/pli_engine.dart';
import 'package:test/test.dart';

void main() {
  group('financialYearOf', () {
    test('31 March belongs to previous FY', () => expect(financialYearOf(DateTime(2026, 3, 31)), '2025-26'));
    test('1 April starts new FY', () => expect(financialYearOf(DateTime(2026, 4, 1)), '2026-27'));
    test('century wrap', () => expect(financialYearOf(DateTime(1999, 4, 1)), '1999-00'));
  });

  group('addYears', () {
    test('29 Feb → 28 Feb in non-leap year', () => expect(addYears(DateTime(2024, 2, 29), 1), DateTime(2025, 2, 28)));
    test('29 Feb → 29 Feb in leap year', () => expect(addYears(DateTime(2024, 2, 29), 4), DateTime(2028, 2, 29)));
    test('ordinary date', () => expect(addYears(DateTime(2026, 11, 1), 20), DateTime(2046, 11, 1)));
  });

  group('xirr', () {
    test('single period over 366 days', () {
      final r = xirr([CashFlow(DateTime(2020, 1, 1), -1000), CashFlow(DateTime(2021, 1, 1), 1100)])!;
      expect(r, closeTo(math.pow(1.1, 365 / 366) - 1, 1e-7));
    });
    test('monthly deposits with no gain → 0%', () {
      // ₹1,000 a month for 12 months, exactly ₹12,000 back → 0%.
      final flows = [
        for (var m = 0; m < 12; m++) CashFlow(DateTime(2025, 1 + m, 1), -1000),
        CashFlow(DateTime(2026, 1, 1), 12000),
      ];
      expect(xirr(flows)!, closeTo(0, 1e-7));
    });
    test('no sign change → null', () {
      expect(xirr([CashFlow(DateTime(2020), -1), CashFlow(DateTime(2021), -1)]), isNull);
    });
  });
}
