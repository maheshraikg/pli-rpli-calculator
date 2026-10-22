import 'dart:math' as math;

class CashFlow {
  const CashFlow(this.date, this.amount);

  final DateTime date;

  /// Negative = paid out (premium), positive = received (benefit).
  final double amount;
}

/// Annualised internal rate of return (XIRR, Actual/365), e.g. 0.054 for
/// 5.4%. Returns null if there is no sign change or no root in range.
///
/// Uses bisection on [-0.99, 10], which always converges when a root is
/// bracketed; return figures are informational, not money amounts.
double? xirr(List<CashFlow> flows, {double tolerance = 1e-9}) {
  if (flows.length < 2) return null;
  if (!flows.any((f) => f.amount < 0) || !flows.any((f) => f.amount > 0)) return null;
  final t0 = flows.map((f) => f.date).reduce((a, b) => a.isBefore(b) ? a : b);

  double npv(double rate) {
    var sum = 0.0;
    for (final f in flows) {
      final years = f.date.difference(t0).inDays / 365.0;
      sum += f.amount / math.pow(1 + rate, years);
    }
    return sum;
  }

  var lo = -0.99, hi = 10.0;
  var fLo = npv(lo), fHi = npv(hi);
  if (fLo.sign == fHi.sign) return null;
  for (var i = 0; i < 300; i++) {
    final mid = (lo + hi) / 2;
    final fMid = npv(mid);
    if (fMid.abs() < tolerance || (hi - lo) / 2 < tolerance) return mid;
    if (fMid.sign == fLo.sign) {
      lo = mid;
      fLo = fMid;
    } else {
      hi = mid;
      fHi = fMid;
    }
  }
  return (lo + hi) / 2;
}
