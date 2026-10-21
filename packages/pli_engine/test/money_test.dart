import 'package:pli_engine/pli_engine.dart';
import 'package:test/test.dart';

void main() {
  group('roundBonus (gazette rule)', () {
    test('exactly 50 paise rounds up', () => expect(roundBonus(const Paise(12350)), Paise.wholeRupees(124)));
    test('49 paise is ignored', () => expect(roundBonus(const Paise(12349)), Paise.wholeRupees(123)));
    test('99 paise rounds up', () => expect(roundBonus(const Paise(12399)), Paise.wholeRupees(124)));
    test('whole rupees unchanged', () => expect(roundBonus(Paise.wholeRupees(5200)), Paise.wholeRupees(5200)));
    test('negative rejected', () => expect(() => roundBonus(const Paise(-1)), throwsArgumentError));
  });

  group('Paise.fromRupees', () {
    test('parses 2-decimal amounts exactly', () => expect(Paise.fromRupees(123.45).value, 12345));
    test('parses ints', () => expect(Paise.fromRupees(52).value, 5200));
    test('rejects 3 decimals', () => expect(() => Paise.fromRupees(1.005), throwsFormatException));
    test('formats', () => expect(const Paise(100005).toRupeeString(), '1000.05'));
  });
}
