import 'package:intl/intl.dart';
import 'package:pli_engine/pli_engine.dart';

final _rupees = NumberFormat.currency(locale: 'en_IN', symbol: '₹', decimalDigits: 0);
final _rupeesPaise = NumberFormat.currency(locale: 'en_IN', symbol: '₹', decimalDigits: 2);

/// Indian grouping (₹1,23,456). Paise shown only when non-zero.
String formatRupees(Paise amount) => amount.paisePart == 0 && amount.value >= 0
    ? _rupees.format(amount.rupeePart)
    : _rupeesPaise.format(amount.value / 100);
