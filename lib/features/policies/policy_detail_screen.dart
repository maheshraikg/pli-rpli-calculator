import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/formatters.dart';
import '../../core/widgets/data_scaffold.dart';
import '../../core/widgets/info_card.dart';
import '../../data/saved_policy.dart';
import '../../l10n/app_localizations.dart';
import '../common/plan_config_form.dart';
import '../common/result_widgets.dart';
import '../maturity/maturity_state.dart' show todayProvider;
import 'policies_screen.dart';
import 'policies_state.dart';

ReminderText reminderText(BuildContext context) {
  final l = AppLocalizations.of(context);
  return (
    title: l.reminderTitle,
    body: (SavedPolicy p, DateTime due) =>
        l.reminderBody(p.holderName, formatRupees(Paise.wholeRupees(p.premiumRupees)), formatDate(context, due), p.policyNumber),
  );
}

class PolicyDetailScreen extends ConsumerWidget {
  const PolicyDetailScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final lang = Localizations.localeOf(context).languageCode;
    final theme = Theme.of(context);
    final policy = ref.watch(policiesProvider).where((p) => p.id == id).firstOrNull;
    final today = ref.watch(todayProvider);

    return DataScaffold(
      title: policy?.holderName ?? l.policiesTitle,
      actions: [
        if (policy != null) ...[
          IconButton(tooltip: l.editPolicy, icon: const Icon(Icons.edit), onPressed: () => context.push('/policies/$id/edit')),
          IconButton(
            tooltip: l.delete,
            icon: const Icon(Icons.delete_outline),
            onPressed: () async {
              final ok = await showDialog<bool>(
                context: context,
                builder: (context) => AlertDialog(
                  content: Text(l.deleteConfirm),
                  actions: [
                    TextButton(onPressed: () => Navigator.pop(context, false), child: Text(l.cancel)),
                    FilledButton(onPressed: () => Navigator.pop(context, true), child: Text(l.delete)),
                  ],
                ),
              );
              if (ok == true) {
                await ref.read(policiesProvider.notifier).delete(policy);
                if (context.mounted) context.pop();
              }
            },
          ),
        ],
      ],
      builder: (context, data) {
        if (policy == null) return const SizedBox.shrink();
        final rules = data.rules;
        final plan = rules.plan(policy.planId);
        final paying = policyPayingYears(plan, policy);
        final dues = upcomingDueDates(
            commencement: policy.commencement, frequency: policy.frequency, payingYears: paying, from: today, count: 5);
        final inForce = yearsInForce(policy.commencement, today);
        final bonus = accruedBonus(rules, plan,
            sumAssured: policy.sumAssured, commencement: policy.commencement, asOf: today, maxYears: _bonusYears(plan, policy));
        MaturityProjection? projection;
        if (projectionPendingReason(plan.type) == null) {
          try {
            projection = projectNewPolicy(
              rules,
              planId: plan.id,
              sumAssured: policy.sumAssured,
              entryAge: policy.entryAge,
              maturityAge: plan.type == PlanType.ea ? policy.column : null,
              premiumCeasingAge: plan.type == PlanType.wla ? policy.column : null,
              termYears: plan.type == PlanType.aea || plan.type == PlanType.jointEa ? policy.column : null,
              commencement: policy.commencement,
            );
          } on Object {
            projection = null;
          }
        }

        return ListView(padding: const EdgeInsets.all(16), children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                Text(plan.name(lang), style: theme.textTheme.titleMedium),
                ValueRow(l.policyNumberLabel, policy.policyNumber),
                ValueRow(l.sumAssuredRow, formatRupees(Paise.wholeRupees(policy.sumAssured))),
                ValueRow(l.startDateLabel, formatDate(context, policy.commencement)),
                ValueRow(l.premiumShort, '${formatRupees(Paise.wholeRupees(policy.premiumRupees))} • ${frequencyName(l, policy.frequency)}'),
                ValueRow(l.yearsInForceRow, '$inForce'),
                ValueRow(l.accruedBonusRow, formatRupees(bonus.total), emphasis: true),
                if (projection != null) ...[
                  ValueRow(l.projectedMaturityRow, formatRupees(projection.maturity.amount)),
                  if (projection.maturity.date != null) Text(l.maturityOn(formatDate(context, projection.maturity.date!))),
                ],
              ]),
            ),
          ),
          if (!bonus.isComplete)
            InfoCard(icon: Icons.info_outline, message: l.bonusMissingYears(bonus.missingYears.join(', '))),
          const SizedBox(height: 16),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(l.remindersLabel),
            value: policy.reminders,
            onChanged: (on) async {
              final text = reminderText(context);
              final granted = await ref
                  .read(policiesProvider.notifier)
                  .save(policy.copyWith(reminders: on), payingYears: paying, text: text);
              if (!granted && context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l.remindersDenied)));
              }
            },
          ),
          Text(l.upcomingDues, style: theme.textTheme.titleLarge),
          if (dues.isEmpty) Text(l.noMoreDues),
          for (final d in dues)
            ListTile(contentPadding: EdgeInsets.zero, leading: const Icon(Icons.event), title: Text(formatDate(context, d))),
          const SizedBox(height: 8),
          Text(l.bonusDisclaimer, style: theme.textTheme.bodySmall),
        ]);
      },
    );
  }

  /// Bonus stops accruing at maturity.
  int? _bonusYears(PlanRule plan, SavedPolicy p) => switch (plan.type) {
        PlanType.ea => p.column - p.entryAge,
        PlanType.wla => plan.wholeLifeMaturityAge! - p.entryAge,
        PlanType.aea || PlanType.jointEa => p.column,
        _ => null,
      };
}
