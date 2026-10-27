import '../util/money.dart';
import 'maturity_projection.dart';
import 'premium.dart';

class IllustrationRow {
  const IllustrationRow({
    required this.policyYear,
    required this.premiumsPaid,
    required this.accruedBonus,
    required this.survivalBenefitsPaid,
    required this.lifeCover,
  });

  final int policyYear;

  /// Cumulative, to the end of this year. Null without a premium quote.
  final Paise? premiumsPaid;
  final Paise accruedBonus;
  final Paise survivalBenefitsPaid;

  /// Death benefit at the end of this year: SA + bonus accrued (money-back
  /// plans pay the full SA with no deduction for survival benefits paid).
  final Paise lifeCover;
}

/// Year-wise benefit illustration for a new-policy projection.
List<IllustrationRow> benefitIllustration(MaturityProjection p, [PremiumQuote? quote]) {
  final sa = Paise.wholeRupees(p.sumAssured);
  final rows = <IllustrationRow>[];
  var survival = Paise.zero;
  for (var year = 1; year <= p.termYears; year++) {
    final bonus = Paise(p.annualBonus.value * year);
    for (final b in p.payments) {
      if (b.policyYear == year && b.kind == PaymentKind.survivalBenefit) survival += b.amount;
    }
    rows.add(IllustrationRow(
      policyYear: year,
      premiumsPaid: quote == null
          ? null
          : Paise(quote.premium.value * quote.instalmentsPerYear * (year < quote.payingYears ? year : quote.payingYears)),
      accruedBonus: bonus,
      survivalBenefitsPaid: survival,
      lifeCover: sa + bonus,
    ));
  }
  return rows;
}
