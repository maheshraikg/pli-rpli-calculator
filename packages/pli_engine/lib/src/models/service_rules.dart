import '../data/json_reader.dart';
import 'enums.dart';

enum AgeBasis {
  nearestBirthday('AGE_NEAREST_BIRTHDAY'),
  lastBirthday('AGE_LAST_BIRTHDAY');

  const AgeBasis(this.code);
  final String code;

  static AgeBasis parse(String code) => values.firstWhere(
        (b) => b.code == code,
        orElse: () => throw FormatException('Unknown age basis "$code"'),
      );
}

class AdvanceRebateTier {
  const AdvanceRebateTier(this.monthsInAdvance, this.percent);
  final int monthsInAdvance;
  final num percent;
}

/// Premium mechanics from `rules.premium`.
class PremiumRules {
  const PremiumRules({
    required this.ageBasis,
    required this.tableUnitSumAssured,
    required this.saRebateRupeesPerMonth,
    required this.saRebatePerSumAssured,
    required this.saRebatePlanTypes,
    required this.advanceRebates,
    required this.defaultFeePercentPerMonth,
    required this.defaultFeeCountsPartMonth,
    required this.gstPercent,
  });

  factory PremiumRules.fromJson(JsonReader r) {
    final rebate = r.object('sumAssuredRebate');
    if (!rebate.boolean('countCompleteBlocksOnly')) {
      throw const FormatException('Only complete-block SA rebate is implemented');
    }
    if (r.string('rounding') != 'NEAREST_RUPEE_AFTER_REBATE') {
      throw FormatException('Unsupported premium rounding "${r.string('rounding')}"');
    }
    final fee = r.object('defaultFee');
    return PremiumRules(
      ageBasis: AgeBasis.parse(r.string('ageBasis')),
      tableUnitSumAssured: r.integer('tableUnitSumAssured'),
      saRebateRupeesPerMonth: rebate.integer('rupeesPerMonth'),
      saRebatePerSumAssured: rebate.integer('perSumAssured'),
      saRebatePlanTypes: rebate.stringList('applicablePlanTypes').map(PlanType.parse).toSet(),
      advanceRebates: [
        for (final t in r.objectList('advancePaymentRebate')) AdvanceRebateTier(t.integer('monthsInAdvance'), t.number('percent')),
      ]..sort((a, b) => a.monthsInAdvance.compareTo(b.monthsInAdvance)),
      defaultFeePercentPerMonth: fee.number('percentPerMonthOfDelay'),
      defaultFeeCountsPartMonth: fee.boolean('countPartMonthAsFull'),
      gstPercent: r.object('gst').number('currentRatePercent'),
    );
  }

  final AgeBasis ageBasis;
  final int tableUnitSumAssured;
  final int saRebateRupeesPerMonth;
  final int saRebatePerSumAssured;
  final Set<PlanType> saRebatePlanTypes;
  final List<AdvanceRebateTier> advanceRebates;
  final num defaultFeePercentPerMonth;
  final bool defaultFeeCountsPartMonth;
  final num gstPercent;
}

class LoanRule {
  const LoanRule({required this.interestPercentPerAnnum});

  factory LoanRule.fromJson(JsonReader r) {
    if (r.string('compounding') != 'HALF_YEARLY') {
      throw FormatException('Unsupported loan compounding "${r.string('compounding')}"');
    }
    return LoanRule(interestPercentPerAnnum: r.number('interestPercentPerAnnum'));
  }

  final num interestPercentPerAnnum;
}

class PaidUpRule {
  const PaidUpRule({required this.minYearsInForce});

  factory PaidUpRule.fromJson(JsonReader r) => PaidUpRule(minYearsInForce: r.integer('minYearsInForce'));

  final int minYearsInForce;
}
