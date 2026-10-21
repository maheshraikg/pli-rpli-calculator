import 'dart:convert';

import '../data/json_reader.dart';
import 'enums.dart';
import 'plan_rule.dart';

class SumAssuredLimit {
  const SumAssuredLimit({required this.min, required this.max, this.multipleOf});

  factory SumAssuredLimit.fromJson(JsonReader r) => SumAssuredLimit(
        min: r.integer('min'),
        max: r.integer('max'),
        multipleOf: r.intOrNull('multipleOf'),
      );

  final int min;
  final int max;
  final int? multipleOf;
}

/// Terminal bonus: [amount] per [perSumAssured] of SA, capped at
/// [maxAmount], for [appliesToTypes] in [schemes] with term ≥ [minTermYears].
class TerminalBonusRule {
  const TerminalBonusRule({
    required this.perSumAssured,
    required this.amount,
    required this.maxAmount,
    required this.minTermYears,
    required this.appliesToTypes,
    required this.schemes,
  });

  factory TerminalBonusRule.fromJson(JsonReader r) => TerminalBonusRule(
        perSumAssured: r.integer('perSumAssured'),
        amount: r.integer('amount'),
        maxAmount: r.integer('maxAmount'),
        minTermYears: r.integer('minTermYears'),
        appliesToTypes: r.stringList('appliesToTypes').map(PlanType.parse).toSet(),
        schemes: r.stringList('schemes').map(Scheme.parse).toSet(),
      );

  final int perSumAssured;
  final int amount;
  final int maxAmount;
  final int minTermYears;
  final Set<PlanType> appliesToTypes;
  final Set<Scheme> schemes;
}

/// Thrown when a bonus rate is needed for a year the data doesn't have.
/// Callers must surface this to the user; never substitute another year.
class MissingBonusRateException implements Exception {
  MissingBonusRateException(this.scheme, this.financialYear, this.bonusClass);

  final Scheme scheme;
  final String financialYear;
  final String bonusClass;

  @override
  String toString() =>
      'No declared ${scheme.code} bonus rate for $bonusClass in FY $financialYear';
}

/// The whole `rules_FY*.json` file.
class RuleSet {
  RuleSet({
    required this.ruleSetId,
    required this.financialYear,
    required this.effectiveFrom,
    required this.source,
    required this.gazetteRef,
    required this.sumAssuredLimits,
    required this.plans,
    required this.bonusRatesPer1000,
    required this.eligibilityGroups,
    required this.terminalBonus,
    required this.raw,
  });

  factory RuleSet.parse(String jsonText) =>
      RuleSet.fromJson(JsonReader(jsonDecode(jsonText) as Map<String, Object?>));

  factory RuleSet.fromJson(JsonReader r) {
    final schemaVersion = r.integer('schemaVersion');
    if (schemaVersion != 1) {
      throw FormatException('Unsupported rules schemaVersion $schemaVersion');
    }
    final schemes = r.object('schemes');
    final bonus = r.object('bonusRatesPer1000');

    final rates = <Scheme, Map<String, Map<String, int>>>{};
    for (final scheme in Scheme.values) {
      final byYear = bonus.object(scheme.code);
      rates[scheme] = {
        for (final fy in byYear.map.keys)
          fy: {
            for (final cls in byYear.object(fy).map.keys) cls: byYear.object(fy).integer(cls),
          },
      };
    }

    final plans = r.objectList('plans').map(PlanRule.fromJson).toList();
    final ids = <String>{};
    for (final p in plans) {
      if (!ids.add(p.id)) throw FormatException('Duplicate plan id "${p.id}"');
    }

    return RuleSet(
      ruleSetId: r.string('ruleSetId'),
      financialYear: r.string('financialYear'),
      effectiveFrom: DateTime.parse(r.string('effectiveFrom')),
      source: r.string('source'),
      gazetteRef: r.string('gazetteRef'),
      sumAssuredLimits: {
        for (final s in Scheme.values)
          s: SumAssuredLimit.fromJson(schemes.object(s.code).object('sumAssured')),
      },
      plans: plans,
      bonusRatesPer1000: rates,
      eligibilityGroups: {
        for (final s in Scheme.values) s: schemes.object(s.code).stringList('eligibilityGroups').toSet(),
      },
      terminalBonus: TerminalBonusRule.fromJson(r.object('terminalBonus')),
      raw: r.map,
    );
  }

  final String ruleSetId;
  final String financialYear;
  final DateTime effectiveFrom;
  final String source;
  final String gazetteRef;
  final Map<Scheme, SumAssuredLimit> sumAssuredLimits;
  final List<PlanRule> plans;

  /// scheme → financial year ("2026-27") → bonus class → ₹ per ₹1,000 SA.
  final Map<Scheme, Map<String, Map<String, int>>> bonusRatesPer1000;
  final Map<Scheme, Set<String>> eligibilityGroups;
  final TerminalBonusRule terminalBonus;
  final Map<String, Object?> raw;

  PlanRule plan(String id) => plans.firstWhere(
        (p) => p.id == id,
        orElse: () => throw ArgumentError.value(id, 'id', 'Unknown plan'),
      );

  Iterable<PlanRule> plansFor(Scheme scheme) => plans.where((p) => p.scheme == scheme);

  int bonusRate(Scheme scheme, String financialYear, String bonusClass) {
    final rate = bonusRatesPer1000[scheme]?[financialYear]?[bonusClass];
    if (rate == null) throw MissingBonusRateException(scheme, financialYear, bonusClass);
    return rate;
  }
}
