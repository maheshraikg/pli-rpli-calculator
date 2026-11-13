import '../models/service_rules.dart';
import '../util/dates.dart';

int ageLastBirthday(DateTime dob, DateTime on) {
  if (on.isBefore(dob)) throw ArgumentError('Date $on is before date of birth $dob');
  var age = on.year - dob.year;
  if (addYears(dob, age).isAfter(on)) age--;
  return age;
}

/// Completed years, plus one if 6 months or more have passed since the last
/// birthday.
int ageNearestBirthday(DateTime dob, DateTime on) {
  final last = ageLastBirthday(dob, on);
  final halfway = addMonths(addYears(dob, last), 6);
  return on.isBefore(halfway) ? last : last + 1;
}

/// The age the person will be on their next birthday: completed years + 1.
/// India Post's Dak Sewa premium quote uses this (born 9 Jun 1991, policy
/// starting 13 Nov 2026: age 36).
int ageNextBirthday(DateTime dob, DateTime on) => ageLastBirthday(dob, on) + 1;

int ageOn(AgeBasis basis, DateTime dob, DateTime on) => switch (basis) {
      AgeBasis.nearestBirthday => ageNearestBirthday(dob, on),
      AgeBasis.lastBirthday => ageLastBirthday(dob, on),
      AgeBasis.nextBirthday => ageNextBirthday(dob, on),
    };
