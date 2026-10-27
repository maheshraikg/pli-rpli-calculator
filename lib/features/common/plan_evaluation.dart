import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../data/data_repository.dart';
import 'plan_config.dart';

/// Everything a screen shows for one plan option.
class PlanEvaluation {
  const PlanEvaluation({
    required this.config,
    required this.plan,
    required this.entryAge,
    required this.violations,
    required this.premiums,
    required this.projection,
    required this.projectionPending,
    required this.missingRateYear,
    required this.illustration,
    required this.isSample,
  });

  final PlanConfig config;
  final PlanRule plan;
  final int entryAge;
  final List<Violation> violations;

  /// One result per frequency (empty when the proposal is invalid).
  final Map<PremiumFrequency, PremiumResult> premiums;
  final MaturityProjection? projection;
  final bool projectionPending;
  final String? missingRateYear;
  final List<IllustrationRow> illustration;
  final bool isSample;

  bool get isValid => violations.isEmpty;

  PremiumQuote? quoteFor(PremiumFrequency f) => switch (premiums[f]) {
    PremiumQuoted(:final quote) => quote,
    _ => null,
  };

  PremiumQuote? get selectedQuote => quoteFor(config.frequency);
}

Proposal _proposal(PlanRule plan, PlanConfig c, int age, int sa) {
  final column = c.column;
  return switch (plan.type) {
    PlanType.ea => Proposal(planId: plan.id, entryAge: age, sumAssured: sa, maturityAge: column),
    PlanType.wla => Proposal(planId: plan.id, entryAge: age, sumAssured: sa, premiumCeasingAge: column),
    PlanType.aea => Proposal(planId: plan.id, entryAge: age, sumAssured: sa, termYears: column),
    PlanType.jointEa => Proposal(
      planId: plan.id,
      entryAge: age,
      sumAssured: sa,
      termYears: column,
      spouseAge: c.spouseAge,
    ),
    _ => Proposal(planId: plan.id, entryAge: age, sumAssured: sa),
  };
}

PlanEvaluation evaluatePlan(AppData data, PlanConfig c) {
  final rules = data.rules;
  final plan = rules.plan(c.planId);
  final age = c.entryAge(rules);
  final sa = c.sumAssured;
  final pending = projectionPendingReason(plan.type) != null;

  PlanEvaluation result({
    List<Violation> violations = const [],
    Map<PremiumFrequency, PremiumResult> premiums = const {},
    MaturityProjection? projection,
    String? missingRate,
    List<IllustrationRow> illustration = const [],
  }) => PlanEvaluation(
    config: c,
    plan: plan,
    entryAge: age,
    violations: violations,
    premiums: premiums,
    projection: projection,
    projectionPending: pending,
    missingRateYear: missingRate,
    illustration: illustration,
    isSample: data.tableFor(plan)?.isSample ?? false,
  );

  final noTable = {
    for (final f in PremiumFrequency.values) f: const PremiumUnavailable(PremiumUnavailableReason.noTable),
  };
  // Children's policies need parent details whose rules are not yet
  // confirmed, so nothing is checked or calculated for them.
  if (plan.type == PlanType.childEa) return result(premiums: noTable);
  if (sa == null) return result(violations: const [MissingInput('sumAssured')]);
  final violations = checkProposal(rules, _proposal(plan, c, age, sa));
  if (violations.isNotEmpty) return result(violations: violations);

  final column = c.column;
  final premiums = {
    for (final f in PremiumFrequency.values)
      f: column == null || columnDimensionFor(plan) == null
          ? const PremiumUnavailable(PremiumUnavailableReason.noTable)
          : quotePremium(rules, data.tableFor(plan), plan, sumAssured: sa, entryAge: age, column: column, frequency: f),
  };

  if (pending) return result(premiums: premiums);
  try {
    final projection = projectNewPolicy(
      rules,
      planId: plan.id,
      sumAssured: sa,
      entryAge: age,
      maturityAge: plan.type == PlanType.ea ? column : null,
      premiumCeasingAge: plan.type == PlanType.wla ? column : null,
      termYears: plan.type == PlanType.aea || plan.type == PlanType.jointEa ? column : null,
      commencement: c.commencement,
    );
    final quote = switch (premiums[c.frequency]) {
      PremiumQuoted(:final quote) => quote,
      _ => null,
    };
    return result(
      premiums: premiums,
      projection: projection,
      illustration: benefitIllustration(projection, quote),
    );
  } on MissingBonusRateException catch (e) {
    return result(premiums: premiums, missingRate: e.financialYear);
  }
}

/// Live evaluation of the config stored under [key].
final planEvaluationProvider = Provider.family<PlanEvaluation?, String>((ref, key) {
  final data = ref.watch(appDataProvider).value;
  if (data == null) return null;
  return evaluatePlan(data, ref.watch(planConfigProvider(key)));
});
