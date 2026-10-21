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

int ageOn(AgeBasis basis, DateTime dob, DateTime on) => switch (basis) {
      AgeBasis.nearestBirthday => ageNearestBirthday(dob, on),
      AgeBasis.lastBirthday => ageLastBirthday(dob, on),
    };
