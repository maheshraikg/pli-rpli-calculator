import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../data/data_repository.dart';

/// Today's date (no time part). Overridden in tests.
final todayProvider = Provider<DateTime>((ref) {
  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day);
});

class MaturityInput {
  const MaturityInput({
    required this.scheme,
    required this.planId,
    required this.entryAge,
    required this.sumAssured,
    required this.maturityAge,
    required this.termYears,
    required this.spouseAge,
    required this.commencement,
  });

  final Scheme scheme;
  final String planId;
  final int entryAge;
  final int? sumAssured;
  final int? maturityAge;
  final int? termYears;
  final int spouseAge;
  final DateTime commencement;

  MaturityInput copyWith({
    int? entryAge,
    int? sumAssured,
    bool clearSumAssured = false,
    int? maturityAge,
    int? termYears,
    int? spouseAge,
    DateTime? commencement,
  }) => MaturityInput(
    scheme: scheme,
    planId: planId,
    entryAge: entryAge ?? this.entryAge,
    sumAssured: clearSumAssured ? null : sumAssured ?? this.sumAssured,
    maturityAge: maturityAge ?? this.maturityAge,
    termYears: termYears ?? this.termYears,
    spouseAge: spouseAge ?? this.spouseAge,
    commencement: commencement ?? this.commencement,
  );
}

class MaturityForm extends Notifier<MaturityInput> {
  @override
  MaturityInput build() => MaturityInput(
    scheme: Scheme.pli,
    planId: 'pli_santosh',
    entryAge: 30,
    sumAssured: 100000,
    maturityAge: 60,
    termYears: null,
    spouseAge: 30,
    commencement: ref.read(todayProvider),
  );

  void selectScheme(Scheme scheme, RuleSet rules) {
    if (scheme == state.scheme) return;
    final plan = rules
        .plansFor(scheme)
        .firstWhere((p) => projectionPendingReason(p.type) == null, orElse: () => rules.plansFor(scheme).first);
    _apply(plan, scheme: scheme);
  }

  void selectPlan(PlanRule plan) => _apply(plan, scheme: plan.scheme);

  /// Switches plan and picks sensible default options for it, keeping the
  /// person's age and sum assured.
  void _apply(PlanRule plan, {required Scheme scheme}) {
    final age = state.entryAge;
    int? term;
    if (plan.aeaTerms.isNotEmpty) {
      term = plan.aeaTerms.firstWhere((t) => t.entryAge.contains(age), orElse: () => plan.aeaTerms.first).years;
    } else if (plan.jointLife != null) {
      term = plan.jointLife!.termYears.max;
    }
    state = MaturityInput(
      scheme: scheme,
      planId: plan.id,
      entryAge: age,
      sumAssured: state.sumAssured,
      maturityAge: plan.maturityAges.isEmpty ? null : plan.maturityAges.last,
      termYears: term,
      spouseAge: state.spouseAge,
      commencement: state.commencement,
    );
  }

  void setEntryAge(int v) => state = state.copyWith(entryAge: v);
  void setSpouseAge(int v) => state = state.copyWith(spouseAge: v);
  void setSumAssured(int? v) => state = state.copyWith(sumAssured: v, clearSumAssured: v == null);
  void setMaturityAge(int v) => state = state.copyWith(maturityAge: v);
  void setTermYears(int v) => state = state.copyWith(termYears: v);
  void setCommencement(DateTime v) => state = state.copyWith(commencement: v);
}

final maturityFormProvider = NotifierProvider<MaturityForm, MaturityInput>(MaturityForm.new);

sealed class MaturityOutcome {
  const MaturityOutcome();
}

class MaturityInvalid extends MaturityOutcome {
  const MaturityInvalid(this.violations);
  final List<Violation> violations;
}

class MaturityRulesPending extends MaturityOutcome {
  const MaturityRulesPending();
}

class MaturityMissingRate extends MaturityOutcome {
  const MaturityMissingRate(this.financialYear);
  final String financialYear;
}

class MaturityReady extends MaturityOutcome {
  const MaturityReady(this.projection);
  final MaturityProjection projection;
}

/// Recomputed on every input change (no "Calculate" button).
final maturityOutcomeProvider = Provider<MaturityOutcome?>((ref) {
  final data = ref.watch(appDataProvider).value;
  if (data == null) return null;
  final input = ref.watch(maturityFormProvider);
  final rules = data.rules;
  final plan = rules.plan(input.planId);

  if (projectionPendingReason(plan.type) != null) return const MaturityRulesPending();
  final sa = input.sumAssured;
  if (sa == null) return const MaturityInvalid([MissingInput('sumAssured')]);

  final violations = checkProposal(
    rules,
    Proposal(
      planId: plan.id,
      entryAge: input.entryAge,
      sumAssured: sa,
      maturityAge: input.maturityAge,
      termYears: input.termYears,
      spouseAge: plan.jointLife != null ? input.spouseAge : null,
    ),
  );
  if (violations.isNotEmpty) return MaturityInvalid(violations);

  try {
    return MaturityReady(
      projectNewPolicy(
        rules,
        planId: plan.id,
        sumAssured: sa,
        entryAge: input.entryAge,
        maturityAge: input.maturityAge,
        termYears: input.termYears,
        commencement: input.commencement,
      ),
    );
  } on MissingBonusRateException catch (e) {
    return MaturityMissingRate(e.financialYear);
  }
});
