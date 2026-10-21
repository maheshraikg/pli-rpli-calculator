import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/formatters.dart';
import '../../core/messages.dart';
import '../../core/widgets/data_scaffold.dart';
import '../../core/widgets/info_card.dart';
import '../../core/widgets/number_stepper.dart';
import '../../core/widgets/sum_assured_field.dart';
import '../../core/widgets/ui.dart';
import '../../data/data_repository.dart';
import '../../l10n/app_localizations.dart';
import 'benefit_timeline.dart';
import 'maturity_state.dart';

class MaturityScreen extends StatelessWidget {
  const MaturityScreen({super.key});

  @override
  Widget build(BuildContext context) => DataScaffold(
    title: AppLocalizations.of(context).maturityTitle,
    builder: (context, data) => _MaturityBody(data: data),
  );
}

class _MaturityBody extends ConsumerWidget {
  const _MaturityBody({required this.data});

  final AppData data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final lang = Localizations.localeOf(context).languageCode;
    final input = ref.watch(maturityFormProvider);
    final form = ref.read(maturityFormProvider.notifier);
    final rules = data.rules;
    final plan = rules.plan(input.planId);
    final pending = projectionPendingReason(plan.type) != null;
    const gap = SizedBox(height: 16);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        SectionCard(
          title: l.planLabel,
          icon: Icons.description_rounded,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SegmentedButton<Scheme>(
                segments: [for (final s in Scheme.values) ButtonSegment(value: s, label: Text(s.code))],
                selected: {input.scheme},
                onSelectionChanged: (s) => form.selectScheme(s.single, rules),
              ),
              gap,
              DropdownButtonFormField<String>(
                initialValue: plan.id,
                isExpanded: true,
                decoration: InputDecoration(labelText: l.planLabel),
                items: [
                  for (final p in rules.plansFor(input.scheme))
                    DropdownMenuItem(
                      value: p.id,
                      child: Text(
                        projectionPendingReason(p.type) == null ? p.name(lang) : l.rulesPendingSuffix(p.name(lang)),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                ],
                onChanged: (id) => form.selectPlan(rules.plan(id!)),
                // Rebuild when the scheme changes the item list.
                key: ValueKey(input.scheme),
              ),
            ],
          ),
        ),
        if (pending)
          InfoCard(icon: Icons.hourglass_empty, title: l.notAvailableTitle, message: l.rulesPendingBody)
        else ...[
          SectionCard(
            title: l.sectionCoverTitle,
            icon: Icons.shield_rounded,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                NumberStepper(
                  label: l.entryAgeLabel,
                  value: input.entryAge,
                  min: 1,
                  max: 70,
                  onChanged: form.setEntryAge,
                  valueText: l.ageYears,
                ),
                if (plan.jointLife != null)
                  NumberStepper(
                    label: l.spouseAgeLabel,
                    value: input.spouseAge,
                    min: 1,
                    max: 70,
                    onChanged: form.setSpouseAge,
                    valueText: l.ageYears,
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(l.ageBasisNote, style: Theme.of(context).textTheme.bodySmall),
                ),
                gap,
                SumAssuredField(
                  value: input.sumAssured,
                  onChanged: form.setSumAssured,
                  maxChip: rules.sumAssuredLimits[input.scheme]!.max,
                ),
                gap,
                ..._options(context, plan, input, form),
              ],
            ),
          ),
          gap,
          _Result(plan: plan),
        ],
      ],
    );
  }

  List<Widget> _options(BuildContext context, PlanRule plan, MaturityInput input, MaturityForm form) {
    final l = AppLocalizations.of(context);
    final title = Theme.of(context).textTheme.titleMedium;
    Widget chips(List<int> values, int? selected, String Function(int) label, ValueChanged<int> onSelected) => Wrap(
      spacing: 8,
      runSpacing: 4,
      children: [
        for (final v in values)
          ChoiceChip(label: Text(label(v)), selected: v == selected, onSelected: (_) => onSelected(v)),
      ],
    );

    final startDate = ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const Icon(Icons.event),
      title: Text(l.startDateLabel),
      subtitle: Text(DateFormat.yMMMd(Localizations.localeOf(context).toLanguageTag()).format(input.commencement)),
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: input.commencement,
          firstDate: DateTime(1980),
          lastDate: DateTime(2100),
        );
        if (picked != null) form.setCommencement(picked);
      },
    );

    return switch (plan.type) {
      PlanType.ea => [
        Text(l.maturityAgeLabel, style: title),
        const SizedBox(height: 8),
        chips(plan.maturityAges, input.maturityAge, (v) => '$v', form.setMaturityAge),
      ],
      PlanType.aea => [
        Text(l.termLabel, style: title),
        const SizedBox(height: 8),
        chips([for (final t in plan.aeaTerms) t.years], input.termYears, l.termYears, form.setTermYears),
        startDate,
      ],
      PlanType.jointEa => [
        NumberStepper(
          label: l.termLabel,
          value: input.termYears ?? plan.jointLife!.termYears.max,
          min: plan.jointLife!.termYears.min,
          max: plan.jointLife!.termYears.max,
          onChanged: form.setTermYears,
          valueText: l.termYears,
        ),
        startDate,
      ],
      _ => const [],
    };
  }
}

class _Result extends ConsumerWidget {
  const _Result({required this.plan});

  final PlanRule plan;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final lang = Localizations.localeOf(context).languageCode;
    final theme = Theme.of(context);
    final outcome = ref.watch(maturityOutcomeProvider);
    final errorColor = theme.colorScheme.errorContainer;

    return switch (outcome) {
      null => const SizedBox.shrink(),
      MaturityRulesPending() => InfoCard(
        icon: Icons.hourglass_empty,
        title: l.notAvailableTitle,
        message: l.rulesPendingBody,
      ),
      MaturityMissingRate(:final financialYear) => InfoCard(
        icon: Icons.error_outline,
        color: errorColor,
        message: l.missingBonusRate(financialYear),
      ),
      MaturityInvalid(:final violations) => Column(
        children: [
          for (final v in violations)
            InfoCard(icon: Icons.error_outline, color: errorColor, message: violationMessage(l, v, plan, lang)),
        ],
      ),
      MaturityReady(:final projection) => _ProjectionView(projection: projection),
    };
  }
}

class _ProjectionView extends StatelessWidget {
  const _ProjectionView({required this.projection});

  final MaturityProjection projection;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final p = projection;
    final hasSurvival = p.payments.length > 1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        HeroAmountCard(
          icon: Icons.savings_rounded,
          label: hasSurvival ? l.resultTotalBenefits : l.resultMaturityValue,
          amount: formatRupees(hasSurvival ? p.totalBenefits : p.maturity.amount),
          caption: '${l.sumAssuredRow} ${formatRupees(Paise.wholeRupees(p.sumAssured))} • ${l.termYears(p.termYears)}',
          details: [
            (l.bonusRateRow(p.financialYear), l.bonusRateValue(p.ratePer1000)),
            (l.annualBonusRow, formatRupees(p.annualBonus)),
            (l.totalBonusRow(p.termYears), formatRupees(p.totalBonus)),
            if (p.terminalBonus.value > 0) (l.terminalBonusRow, formatRupees(p.terminalBonus)),
            if (hasSurvival) (l.resultMaturityValue, formatRupees(p.maturity.amount)),
          ],
        ),
        if (hasSurvival)
          SectionCard(
            title: l.timelineTitle,
            icon: Icons.timeline_rounded,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BenefitTimeline(payments: p.payments),
                Text(l.timelineDeathNote, style: theme.textTheme.bodySmall),
              ],
            ),
          ),
        const SizedBox(height: 8),
        Text(l.projectionNote(p.financialYear), style: theme.textTheme.bodySmall),
        const SizedBox(height: 4),
        Text(l.bonusDisclaimer, style: theme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
