/// Indian financial year (1 April – 31 March) containing [date], e.g. "2026-27".
String financialYearOf(DateTime date) {
  final start = date.month >= 4 ? date.year : date.year - 1;
  return '$start-${((start + 1) % 100).toString().padLeft(2, '0')}';
}

/// [date] plus whole years. 29 Feb in a non-leap target year becomes 28 Feb
/// (Dart's DateTime would otherwise roll over to 1 March).
DateTime addYears(DateTime date, int years) {
  final y = date.year + years;
  final lastDay = DateTime(y, date.month + 1, 0).day;
  return DateTime(y, date.month, date.day > lastDay ? lastDay : date.day);
}

/// [date] plus whole months, clamping the day to the target month's length.
DateTime addMonths(DateTime date, int months) {
  final total = date.year * 12 + (date.month - 1) + months;
  final y = total ~/ 12, m = total % 12 + 1;
  final lastDay = DateTime(y, m + 1, 0).day;
  return DateTime(y, m, date.day > lastDay ? lastDay : date.day);
}

/// Whole months from [from] to [to] (0 if [to] is not after [from]), and
/// whether a part month remains.
({int months, bool partMonth}) monthsBetween(DateTime from, DateTime to) {
  if (!to.isAfter(from)) return (months: 0, partMonth: false);
  var months = (to.year - from.year) * 12 + (to.month - from.month);
  if (addMonths(from, months).isAfter(to)) months--;
  return (months: months, partMonth: addMonths(from, months).isBefore(to));
}

DateTime dateOnly(DateTime d) => DateTime(d.year, d.month, d.day);
