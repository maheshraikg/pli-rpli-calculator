import 'dart:math' as math;

import '../models/enums.dart';
import '../models/plan_rule.dart';
import '../models/rule_set.dart';
import '../util/dates.dart';
import '../util/money.dart';

/// Half-up rounding of a computed rupee amount; the small tolerance keeps an
/// exact ₹x.50 from rounding down due to binary floating point.
int _roundHalfUpRupees(double rupees) => (rupees + 0.5 + 1e-7).floor();

// ---- Loan ----

/// Loan interest compounded half-yearly: full half-years compound, the
/// remaining months accrue simple interest.
Paise loanInterest(RuleSet rules, {required Paise principal, required int months}) {
  final rate = rules.loan.interestPercentPerAnnum / 100;
  final p = principal.value / 100;
  final amount = p * math.pow(1 + rate / 2, months ~/ 6) * (1 + rate * (months % 6) / 12);
  return Paise.wholeRupees(_roundHalfUpRupees(amount - p));
}

/// Whether a policy that has been in force [yearsInForce] can take a loan.
/// False when the plan has no loan facility.
bool loanAvailable(PlanRule plan, int yearsInForce) =>
    plan.loanAfterYears != null && yearsInForce >= plan.loanAfterYears!;

bool surrenderAvailable(PlanRule plan, int yearsInForce) =>
    plan.surrenderAfterYears != null && yearsInForce >= plan.surrenderAfterYears!;

// ---- Paid-up value ----

class PaidUpEstimate {
  const PaidUpEstimate({required this.eligible, required this.paidUpSumAssured, required this.minYears});

  final bool eligible;
  final Paise paidUpSumAssured;
  final int minYears;
}

/// Approximate paid-up SA = SA × premiums paid ÷ premiums payable.
PaidUpEstimate paidUpValue(
  RuleSet rules, {
  required int sumAssured,
  required int premiumsPaid,
  required int premiumsPayable,
  required int yearsInForce,
}) {
  if (premiumsPayable <= 0 || premiumsPaid < 0 || premiumsPaid > premiumsPayable) {
    throw ArgumentError('Premiums paid must be between 0 and premiums payable');
  }
  final rupees = (sumAssured * premiumsPaid * 2 + premiumsPayable) ~/ (premiumsPayable * 2);
  return PaidUpEstimate(
    eligible: yearsInForce >= rules.paidUp.minYearsInForce,
    paidUpSumAssured: Paise.wholeRupees(rupees),
    minYears: rules.paidUp.minYearsInForce,
  );
}

// ---- Revival / default fee ----

class MissedInstalment {
  const MissedInstalment({required this.dueDate, required this.monthsLate, required this.defaultFee});

  final DateTime dueDate;
  final int monthsLate;
  final Paise defaultFee;
}

class RevivalEstimate {
  const RevivalEstimate(this.premium, this.instalments);

  final Paise premium;
  final List<MissedInstalment> instalments;

  Paise get arrears => Paise(premium.value * instalments.length);
  Paise get defaultFees => instalments.fold(Paise.zero, (s, i) => s + i.defaultFee);
  Paise get total => arrears + defaultFees;
}

/// Every instalment due from [firstUnpaidDue] up to [payDate], each with a
/// default fee of x% of the instalment per month of delay.
RevivalEstimate revivalEstimate(
  RuleSet rules, {
  required Paise premium,
  required PremiumFrequency frequency,
  required DateTime firstUnpaidDue,
  required DateTime payDate,
}) {
  final r = rules.premium;
  final list = <MissedInstalment>[];
  for (var i = 0;; i++) {
    final due = addMonths(firstUnpaidDue, i * frequency.months);
    if (due.isAfter(payDate)) break;
    final gap = monthsBetween(due, payDate);
    final months = gap.months + (r.defaultFeeCountsPartMonth && gap.partMonth ? 1 : 0);
    final fee = premium.value / 100 * r.defaultFeePercentPerMonth / 100 * months;
    list.add(MissedInstalment(dueDate: due, monthsLate: months, defaultFee: Paise.wholeRupees(_roundHalfUpRupees(fee))));
  }
  return RevivalEstimate(premium, list);
}

// ---- Advance payment rebate ----

class AdvanceRebate {
  const AdvanceRebate({required this.instalments, required this.amountDue, required this.percent, required this.rebate});

  final int instalments;
  final Paise amountDue;
  final num percent;
  final Paise rebate;

  Paise get payable => amountDue - rebate;
}

/// Rebate for paying [monthsInAdvance] of premium at once: the highest tier
/// reached applies (0% below the first tier).
AdvanceRebate advanceRebate(
  RuleSet rules, {
  required Paise premium,
  required PremiumFrequency frequency,
  required int monthsInAdvance,
}) {
  final instalments = monthsInAdvance ~/ frequency.months;
  final due = Paise(premium.value * instalments);
  num percent = 0;
  for (final t in rules.premium.advanceRebates) {
    if (monthsInAdvance >= t.monthsInAdvance) percent = t.percent;
  }
  final rebate = Paise.wholeRupees(_roundHalfUpRupees(due.value / 100 * percent / 100));
  return AdvanceRebate(instalments: instalments, amountDue: due, percent: percent, rebate: rebate);
}

// ---- Due dates ----

/// Upcoming premium due dates on or after [from], at most [count], for a
/// policy whose premiums run for [payingYears] from [commencement].
List<DateTime> upcomingDueDates({
  required DateTime commencement,
  required PremiumFrequency frequency,
  required int payingYears,
  required DateTime from,
  int count = 12,
}) {
  final total = payingYears * 12 ~/ frequency.months;
  final out = <DateTime>[];
  for (var i = 0; i < total && out.length < count; i++) {
    final due = addMonths(commencement, i * frequency.months);
    if (!due.isBefore(dateOnly(from))) out.add(due);
  }
  return out;
}

/// Completed policy years on [asOf].
int yearsInForce(DateTime commencement, DateTime asOf) {
  var y = asOf.year - commencement.year;
  if (addYears(commencement, y).isAfter(asOf)) y--;
  return y < 0 ? 0 : y;
}
