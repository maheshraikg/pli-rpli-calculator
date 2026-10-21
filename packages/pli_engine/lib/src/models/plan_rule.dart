import '../data/json_reader.dart';
import 'enums.dart';

class AgeRange {
  const AgeRange(this.min, this.max);

  factory AgeRange.fromJson(JsonReader r) => AgeRange(r.integer('min'), r.integer('max'));

  final int min;
  final int max;

  bool contains(int age) => age >= min && age <= max;

  Iterable<int> get ages sync* {
    for (var a = min; a <= max; a++) {
      yield a;
    }
  }

  @override
  String toString() => '$min–$max';
}

class SurvivalBenefit {
  const SurvivalBenefit(this.year, this.percentOfSA);

  factory SurvivalBenefit.fromJson(JsonReader r) =>
      SurvivalBenefit(r.integer('year'), r.integer('percentOfSA'));

  final int year;
  final int percentOfSA;
}

/// One term option of an anticipated endowment (money-back) plan.
class AeaTerm {
  const AeaTerm({
    required this.years,
    required this.entryAge,
    required this.survivalBenefits,
    required this.maturityPercentOfSA,
  });

  factory AeaTerm.fromJson(JsonReader r) => AeaTerm(
        years: r.integer('years'),
        entryAge: AgeRange.fromJson(r.object('entryAge')),
        survivalBenefits: r.objectList('survivalBenefits').map(SurvivalBenefit.fromJson).toList(),
        maturityPercentOfSA: r.integer('maturityPercentOfSA'),
      );

  final int years;
  final AgeRange entryAge;
  final List<SurvivalBenefit> survivalBenefits;
  final int maturityPercentOfSA;
}

/// Typed view of one entry in `rules.plans`. Plan-specific fields whose
/// semantics are still being confirmed are kept in [raw] and given typed
/// accessors only once the rule is verified.
class PlanRule {
  PlanRule({
    required this.id,
    required this.scheme,
    required this.type,
    required this.names,
    required this.bonusClass,
    required this.verified,
    required this.raw,
    this.entryAge,
    this.maturityAges = const [],
    this.premiumCeasingAges = const [],
    this.minTermYears,
    this.aeaTerms = const [],
    this.premiumTableId,
  });

  factory PlanRule.fromJson(JsonReader r) {
    final namesReader = r.object('names');
    return PlanRule(
      id: r.string('id'),
      scheme: Scheme.parse(r.string('scheme')),
      type: PlanType.parse(r.string('type')),
      names: {for (final k in namesReader.map.keys) k: namesReader.string(k)},
      bonusClass: r.string('bonusClass'),
      verified: r.boolean('verified'),
      entryAge: r.has('entryAge') ? AgeRange.fromJson(r.object('entryAge')) : null,
      maturityAges: r.has('maturityAges') ? r.intList('maturityAges') : const [],
      premiumCeasingAges: r.has('premiumCeasingAges') ? r.intList('premiumCeasingAges') : const [],
      minTermYears: r.intOrNull('minTermYears'),
      aeaTerms: r.has('terms') ? r.objectList('terms').map(AeaTerm.fromJson).toList() : const [],
      premiumTableId: r.stringOrNull('premiumTableId'),
      raw: r.map,
    );
  }

  final String id;
  final Scheme scheme;
  final PlanType type;
  final Map<String, String> names;
  final String bonusClass;
  final bool verified;
  final AgeRange? entryAge;
  final List<int> maturityAges;
  final List<int> premiumCeasingAges;
  final int? minTermYears;
  final List<AeaTerm> aeaTerms;
  final String? premiumTableId;
  final Map<String, Object?> raw;

  String name(String languageCode) => names[languageCode] ?? names['en'] ?? id;

  /// Union of all entry ages accepted by this plan (across term options).
  AgeRange? get overallEntryAge {
    if (entryAge != null) return entryAge;
    if (aeaTerms.isEmpty) return null;
    return AgeRange(
      aeaTerms.map((t) => t.entryAge.min).reduce((a, b) => a < b ? a : b),
      aeaTerms.map((t) => t.entryAge.max).reduce((a, b) => a > b ? a : b),
    );
  }
}
