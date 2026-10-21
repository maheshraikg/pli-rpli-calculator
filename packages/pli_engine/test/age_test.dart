import 'package:pli_engine/pli_engine.dart';
import 'package:test/test.dart';

void main() {
  final dob = DateTime(1990, 6, 15);
  test('age last birthday', () {
    expect(ageLastBirthday(dob, DateTime(2026, 6, 14)), 35);
    expect(ageLastBirthday(dob, DateTime(2026, 6, 15)), 36);
  });
  test('age nearest birthday switches at 6 months', () {
    expect(ageNearestBirthday(dob, DateTime(2026, 12, 14)), 36);
    expect(ageNearestBirthday(dob, DateTime(2026, 12, 15)), 37);
  });
  test('29 Feb birthday', () {
    final leap = DateTime(2000, 2, 29);
    expect(ageLastBirthday(leap, DateTime(2025, 2, 28)), 25);
    expect(ageLastBirthday(leap, DateTime(2025, 2, 27)), 24);
  });
  test('date before birth rejected', () => expect(() => ageLastBirthday(dob, DateTime(1980)), throwsArgumentError));
  test('ageOn uses the rule basis', () {
    expect(ageOn(AgeBasis.nearestBirthday, dob, DateTime(2026, 12, 20)), 37);
    expect(ageOn(AgeBasis.lastBirthday, dob, DateTime(2026, 12, 20)), 36);
  });
}
