import '../util/dates.dart';
import '../util/xirr.dart';
import 'maturity_projection.dart';
import 'premium.dart';

/// Premiums out (each instalment on its due date) and benefits in.
List<CashFlow> policyCashFlows(PremiumQuote quote, MaturityProjection projection, DateTime commencement) => [
      for (var i = 0; i < quote.totalInstalments; i++)
        CashFlow(addMonths(commencement, i * quote.frequency.months), -quote.premium.value / 100),
      for (final p in projection.payments)
        CashFlow(p.date ?? addYears(commencement, p.policyYear), p.amount.value / 100),
    ];

/// Annualised return (XIRR) of a policy, e.g. 0.052 for 5.2%.
double? effectiveReturn(PremiumQuote quote, MaturityProjection projection, DateTime commencement) =>
    xirr(policyCashFlows(quote, projection, commencement));
