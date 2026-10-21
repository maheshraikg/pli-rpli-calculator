/// Money is held as integer paise everywhere in the engine so that no
/// floating-point error can leak into a premium or bonus figure.
extension type const Paise(int value) implements Object {
  static const zero = Paise(0);

  /// Parses a rupee amount as written in a JSON table (e.g. `123.45`).
  /// Rejects values with more than 2 decimal places rather than guessing.
  factory Paise.fromRupees(num rupees) {
    final scaled = rupees * 100;
    final rounded = scaled.round();
    if ((scaled - rounded).abs() > 1e-6) {
      throw FormatException('Amount $rupees has more than 2 decimal places');
    }
    return Paise(rounded);
  }

  factory Paise.wholeRupees(int rupees) => Paise(rupees * 100);

  Paise operator +(Paise other) => Paise(value + other.value);
  Paise operator -(Paise other) => Paise(value - other.value);
  bool operator <(Paise other) => value < other.value;
  bool operator >(Paise other) => value > other.value;
  bool operator <=(Paise other) => value <= other.value;
  bool operator >=(Paise other) => value >= other.value;

  /// Whole-rupee part and paise remainder (for non-negative amounts).
  int get rupeePart => value ~/ 100;
  int get paisePart => value % 100;

  /// "1234.50" style, for logs and tests. UI formatting lives in the app.
  String toRupeeString() {
    final sign = value < 0 ? '-' : '';
    final abs = value.abs();
    return '$sign${abs ~/ 100}.${(abs % 100).toString().padLeft(2, '0')}';
  }
}

/// Bonus rounding as per gazette: a fraction of 50 paise or more is rounded
/// up to the next rupee; below 50 paise is ignored.
Paise roundBonus(Paise amount) {
  if (amount.value < 0) {
    throw ArgumentError.value(amount.value, 'amount', 'Bonus cannot be negative');
  }
  final rupees = amount.rupeePart + (amount.paisePart >= 50 ? 1 : 0);
  return Paise.wholeRupees(rupees);
}
