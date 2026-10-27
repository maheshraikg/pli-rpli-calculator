import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../data/data_repository.dart';
import '../maturity/maturity_state.dart' show todayProvider;

/// Everything needed to price and project one plan option.
class PlanConfig {
  const PlanConfig({
    required this.scheme,
    required this.planId,
    required this.dob,
    required this.manualAge,
    required this.sumAssured,
    required this.column,
    required this.spouseAge,
    required this.frequency,
    required this.commencement,
  });

  final Scheme scheme;
  final String planId;

  /// When set, entry age is derived from it on [commencement].
  final DateTime? dob;
  final int manualAge;
  final int? sumAssured;

  /// Maturity age, premium ceasing age or term (see [uiColumnOptions]).
  final int? column;
  final int spouseAge;
  final PremiumFrequency frequency;
  final DateTime commencement;

  int entryAge(RuleSet rules) {
    final d = dob;
    if (d == null || commencement.isBefore(d)) return manualAge;
    return ageOn(rules.premium.ageBasis, d, commencement);
  }

  PlanConfig copyWith({
    Scheme? scheme,
    String? planId,
    DateTime? dob,
    bool clearDob = false,
    int? manualAge,
    int? sumAssured,
    bool clearSumAssured = false,
    int? column,
    bool clearColumn = false,
    int? spouseAge,
    PremiumFrequency? frequency,
    DateTime? commencement,
  }) => PlanConfig(
    scheme: scheme ?? this.scheme,
    planId: planId ?? this.planId,
    dob: clearDob ? null : dob ?? this.dob,
    manualAge: manualAge ?? this.manualAge,
    sumAssured: clearSumAssured ? null : sumAssured ?? this.sumAssured,
    column: clearColumn ? null : column ?? this.column,
    spouseAge: spouseAge ?? this.spouseAge,
    frequency: frequency ?? this.frequency,
    commencement: commencement ?? this.commencement,
  );
}

/// Options shown for the plan's "column": table columns, or the joint-life
/// term range.
List<int> uiColumnOptions(PlanRule plan) {
  final table = columnOptions(plan);
  if (table.isNotEmpty) return table;
  final joint = plan.jointLife;
  if (joint != null) return [for (var t = joint.termYears.min; t <= joint.termYears.max; t++) t];
  return const [];
}

/// Default option when switching plan: the last maturity / ceasing age, the
/// first term open at [age].
int? defaultColumn(PlanRule plan, int age) {
  if (plan.maturityAges.isNotEmpty) return plan.maturityAges.last;
  if (plan.premiumCeasingAges.isNotEmpty) return plan.premiumCeasingAges.last;
  if (plan.aeaTerms.isNotEmpty) {
    return plan.aeaTerms.firstWhere((t) => t.entryAge.contains(age), orElse: () => plan.aeaTerms.first).years;
  }
  return plan.jointLife?.termYears.max;
}

class PlanConfigNotifier extends Notifier<PlanConfig> {
  PlanConfigNotifier(this.key);

  /// Which screen / slot this config belongs to ("premium", "compare0"…).
  final String key;

  static const _defaults = {'compare1': ('pli_santosh', 60), 'compare2': ('pli_suraksha', 60)};

  @override
  PlanConfig build() {
    final (planId, column) = _defaults[key] ?? ('pli_santosh', 60);
    return PlanConfig(
      scheme: Scheme.pli,
      planId: planId,
      dob: null,
      manualAge: 30,
      sumAssured: 100000,
      column: column,
      spouseAge: 30,
      frequency: PremiumFrequency.monthly,
      commencement: ref.read(todayProvider),
    );
  }

  RuleSet? get _rules => ref.read(appDataProvider).value?.rules;

  void selectScheme(Scheme scheme) {
    final rules = _rules;
    if (rules == null || scheme == state.scheme) return;
    selectPlan(rules.plansFor(scheme).first);
  }

  void selectPlan(PlanRule plan) {
    final rules = _rules;
    final age = rules == null ? state.manualAge : state.entryAge(rules);
    state = state.copyWith(
      scheme: plan.scheme,
      planId: plan.id,
      column: defaultColumn(plan, age),
      clearColumn: defaultColumn(plan, age) == null,
    );
  }

  void setDob(DateTime? dob) => state = dob == null ? state.copyWith(clearDob: true) : state.copyWith(dob: dob);
  void setManualAge(int age) => state = state.copyWith(manualAge: age, clearDob: true);
  void setSpouseAge(int age) => state = state.copyWith(spouseAge: age);
  void setSumAssured(int? sa) => state = state.copyWith(sumAssured: sa, clearSumAssured: sa == null);
  void setColumn(int c) => state = state.copyWith(column: c);
  void setFrequency(PremiumFrequency f) => state = state.copyWith(frequency: f);
  void setCommencement(DateTime d) => state = state.copyWith(commencement: d);
  void replace(PlanConfig c) => state = c;
}

final planConfigProvider = NotifierProvider.family<PlanConfigNotifier, PlanConfig, String>(PlanConfigNotifier.new);
