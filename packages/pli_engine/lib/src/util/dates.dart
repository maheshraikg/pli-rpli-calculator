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
