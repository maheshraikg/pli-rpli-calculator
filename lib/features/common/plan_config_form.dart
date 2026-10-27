import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/widgets/number_stepper.dart';
import '../../core/widgets/sum_assured_field.dart';
import '../../core/widgets/ui.dart';
import '../../data/data_repository.dart';
import '../../l10n/app_localizations.dart';
import 'plan_config.dart';
import '../../core/app_icons.dart';

String frequencyName(AppLocalizations l, PremiumFrequency f) => switch (f) {
  PremiumFrequency.monthly => l.freqMonthly,
  PremiumFrequency.quarterly => l.freqQuarterly,
  PremiumFrequency.halfYearly => l.freqHalfYearly,
  PremiumFrequency.yearly => l.freqYearly,
};

/// Label for one value of a plan's column option.
String columnOptionLabel(AppLocalizations l, PlanRule plan, int value) => switch (plan.type) {
  PlanType.ea => l.optMaturityAge(value),
  PlanType.wla => l.optCeasingAge(value),
  _ => l.optTerm(value),
};

String formatDate(BuildContext context, DateTime d) =>
    DateFormat.yMMMd(Localizations.localeOf(context).toLanguageTag()).format(d);

Future<DateTime?> pickDate(BuildContext context, DateTime initial, {DateTime? first, DateTime? last}) => showDatePicker(
  context: context,
  initialDate: initial,
  firstDate: first ?? DateTime(1940),
  lastDate: last ?? DateTime(2100),
);

/// Scheme, plan, age (or date of birth), sum assured, options, frequency
/// and start date for the config stored under [configKey].
class PlanConfigForm extends ConsumerWidget {
  const PlanConfigForm({
    super.key,
    required this.configKey,
    required this.data,
    this.showFrequency = true,
    this.showStartDate = true,
  });

  final String configKey;
  final AppData data;
  final bool showFrequency;
  final bool showStartDate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final lang = Localizations.localeOf(context).languageCode;
    final theme = Theme.of(context);
    final c = ref.watch(planConfigProvider(configKey));
    final form = ref.read(planConfigProvider(configKey).notifier);
    final rules = data.rules;
    final plan = rules.plan(c.planId);
    final options = uiColumnOptions(plan);
    const gap = SizedBox(height: 16);

    Widget chips<T>(List<T> values, T? selected, String Function(T) label, ValueChanged<T> onSelected) => Wrap(
      spacing: 8,
      runSpacing: 4,
      children: [
        for (final v in values)
          ChoiceChip(label: Text(label(v)), selected: v == selected, onSelected: (_) => onSelected(v)),
      ],
    );

    Widget group(String title, IconData icon, List<Widget> children) => SectionCard(
      title: title,
      icon: icon,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: children),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        group(l.planLabel, AppIcons.fileText, [
          SegmentedButton<Scheme>(
            segments: [for (final s in Scheme.values) ButtonSegment(value: s, label: Text(s.code))],
            selected: {c.scheme},
            onSelectionChanged: (s) => form.selectScheme(s.single),
          ),
          gap,
          DropdownButtonFormField<String>(
            key: ValueKey('$configKey-${c.scheme}'),
            initialValue: plan.id,
            isExpanded: true,
            decoration: InputDecoration(labelText: l.planLabel),
            items: [
              for (final p in rules.plansFor(c.scheme))
                DropdownMenuItem(
                  value: p.id,
                  child: Text(p.name(lang), overflow: TextOverflow.ellipsis),
                ),
            ],
            onChanged: (id) => form.selectPlan(rules.plan(id!)),
          ),
        ]),
        group(l.sectionPersonTitle, AppIcons.user, [
          if (c.dob == null) ...[
            NumberStepper(
              label: l.entryAgeLabel,
              value: c.manualAge,
              min: 1,
              max: 70,
              onChanged: form.setManualAge,
              valueText: l.ageYears,
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: TextButton.icon(
                icon: const AppIcon(AppIcons.cake),
                label: Text(l.useDobInstead),
                onPressed: () async {
                  final d = await pickDate(
                    context,
                    DateTime(c.commencement.year - c.manualAge, 1, 1),
                    last: c.commencement,
                  );
                  if (d != null) form.setDob(d);
                },
              ),
            ),
          ] else ...[
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const AppIcon(AppIcons.cake),
              title: Text(l.dobLabel),
              subtitle: Text(formatDate(context, c.dob!)),
              onTap: () async {
                final d = await pickDate(context, c.dob!, last: c.commencement);
                if (d != null) form.setDob(d);
              },
            ),
            Text(
              rules.premium.ageBasis == AgeBasis.nearestBirthday
                  ? l.ageFromDobNearest(c.entryAge(rules))
                  : l.ageFromDobLast(c.entryAge(rules)),
              style: theme.textTheme.titleMedium,
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: TextButton(onPressed: () => form.setManualAge(c.entryAge(rules)), child: Text(l.useAgeInstead)),
            ),
          ],
          if (plan.jointLife != null)
            NumberStepper(
              label: l.spouseAgeLabel,
              value: c.spouseAge,
              min: 1,
              max: 70,
              onChanged: form.setSpouseAge,
              valueText: l.ageYears,
            ),
        ]),
        group(l.sectionCoverTitle, AppIcons.shieldCheck, [
          SumAssuredField(
            value: c.sumAssured,
            onChanged: form.setSumAssured,
            maxChip: rules.sumAssuredLimits[c.scheme]!.max,
          ),
          if (options.isNotEmpty) ...[
            gap,
            Text(switch (plan.type) {
              PlanType.ea => l.maturityAgeLabel,
              PlanType.wla => l.premiumCeasingAgeLabel,
              _ => l.termLabel,
            }, style: theme.textTheme.titleMedium),
            const SizedBox(height: 8),
            if (plan.jointLife != null)
              NumberStepper(
                label: l.termLabel,
                value: c.column ?? options.last,
                min: options.first,
                max: options.last,
                onChanged: form.setColumn,
                valueText: l.termYears,
              )
            else
              chips(options, c.column, (v) => plan.type == PlanType.aea ? l.termYears(v) : '$v', form.setColumn),
          ],
          if (showFrequency) ...[
            gap,
            Text(l.frequencyLabel, style: theme.textTheme.titleMedium),
            const SizedBox(height: 8),
            chips(PremiumFrequency.values, c.frequency, (f) => frequencyName(l, f), form.setFrequency),
          ],
          if (showStartDate)
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const AppIcon(AppIcons.calendarBlank),
              title: Text(l.startDateLabel),
              subtitle: Text(formatDate(context, c.commencement)),
              onTap: () async {
                final d = await pickDate(context, c.commencement, first: DateTime(1980));
                if (d != null) form.setCommencement(d);
              },
            ),
        ]),
      ],
    );
  }
}
