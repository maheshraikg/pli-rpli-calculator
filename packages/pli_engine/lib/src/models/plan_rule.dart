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

/// Joint-life (Yugal Suraksha) limits.
class JointLifeRule {
  const JointLifeRule({required this.entryAgeEachSpouse, required this.termYears});

  final AgeRange entryAgeEachSpouse;
  final AgeRange termYears;
}

/// Children's policy (Bal Jeevan Bima) limits.
class ChildPlanRule {
  const ChildPlanRule({
    required this.childAge,
    required this.parentMaxAge,
    required this.maxChildren,
    required this.sumAssuredMax,
    required this.capAtParentSA,
  });

  final AgeRange childAge;
  final int parentMaxAge;
  final int maxChildren;
  final int sumAssuredMax;
  final bool capAtParentSA;
}

/// "₹a a month for the first ₹A of sum assured, then ₹b for each further ₹B"
/// (Yugal Suraksha).
class PlanSaRebate {
  const PlanSaRebate({
    required this.firstSumAssured,
    required this.firstRupeesPerMonth,
    required this.thenPerSumAssured,
    required this.thenRupeesPerMonth,
  });

  factory PlanSaRebate.fromJson(JsonReader r) => PlanSaRebate(
        firstSumAssured: r.integer('firstSumAssured'),
        firstRupeesPerMonth: r.integer('firstRupeesPerMonth'),
        thenPerSumAssured: r.integer('thenPerSumAssured'),
        thenRupeesPerMonth: r.integer('thenRupeesPerMonth'),
      );

  final int firstSumAssured;
  final int firstRupeesPerMonth;
  final int thenPerSumAssured;
  final int thenRupeesPerMonth;

  /// Whole rupees of rebate per month for [sumAssured].
  int rupeesPerMonth(int sumAssured) => sumAssured < firstSumAssured
      ? 0
      : firstRupeesPerMonth + (sumAssured - firstSumAssured) ~/ thenPerSumAssured * thenRupeesPerMonth;
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
    this.jointLife,
    this.childPlan,
    this.wholeLifeMaturityAge,
    this.loanAfterYears,
    this.surrenderAfterYears,
    this.conversionTableId,
    this.conversionMaturityAges = const [],
    this.equivalentAgeAdditions = const [],
    this.maxMaturityAge,
    this.saRebate,
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
      jointLife: r.has('entryAgeEachSpouse')
          ? JointLifeRule(
              entryAgeEachSpouse: AgeRange.fromJson(r.object('entryAgeEachSpouse')),
              termYears: AgeRange.fromJson(r.object('termYears')),
            )
          : null,
      childPlan: r.has('childAge')
          ? ChildPlanRule(
              childAge: AgeRange.fromJson(r.object('childAge')),
              parentMaxAge: r.integer('parentMaxAge'),
              maxChildren: r.integer('maxChildren'),
              sumAssuredMax: r.integer('sumAssuredMax'),
              capAtParentSA: r.boolean('sumAssuredCapParentSA'),
            )
          : null,
      wholeLifeMaturityAge: r.intOrNull('maturityAge'),
      loanAfterYears: r.intOrNull('loanAfterYears'),
      surrenderAfterYears: r.intOrNull('surrenderAfterYears'),
      conversionTableId: r.stringOrNull('conversionTableId'),
      conversionMaturityAges: r.has('conversionMaturityAges') ? r.intList('conversionMaturityAges') : const [],
      equivalentAgeAdditions: r.has('equivalentAgeAdditions') ? r.intList('equivalentAgeAdditions') : const [],
      maxMaturityAge: r.intOrNull('maxMaturityAge'),
      saRebate: r.has('saRebate') ? PlanSaRebate.fromJson(r.object('saRebate')) : null,
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
  final JointLifeRule? jointLife;
  final ChildPlanRule? childPlan;

  /// Whole life plans: age at which SA + bonus is paid (e.g. 80).
  final int? wholeLifeMaturityAge;

  /// Null = loan / surrender not available on this plan.
  final int? loanAfterYears;
  final int? surrenderAfterYears;

  /// Convertible plans: premiums after converting to an endowment (by
  /// original entry age and the chosen maturity age).
  final String? conversionTableId;
  final List<int> conversionMaturityAges;

  /// Joint life: years added to the younger spouse's age, indexed by the age
  /// difference, to get the "equivalent age" the premium table is read at.
  final List<int> equivalentAgeAdditions;

  /// Latest age at maturity (joint life: the equivalent age plus term).
  final int? maxMaturityAge;

  /// Plan-specific sum-assured rebate, replacing the general rule.
  final PlanSaRebate? saRebate;
  final Map<String, Object?> raw;

  /// Age the premium table is read at: the equivalent age for joint life
  /// (null if it cannot be worked out), else the entry age.
  int? premiumAge(int entryAge, int? spouseAge) {
    if (equivalentAgeAdditions.isEmpty) return entryAge;
    if (spouseAge == null) return null;
    final younger = entryAge < spouseAge ? entryAge : spouseAge;
    final difference = (entryAge - spouseAge).abs();
    if (difference >= equivalentAgeAdditions.length) return null;
    return younger + equivalentAgeAdditions[difference];
  }

  /// Every premium table this plan uses.
  List<String> get tableIds => [?premiumTableId, ?conversionTableId];

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
