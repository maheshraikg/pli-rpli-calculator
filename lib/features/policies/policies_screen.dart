import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/formatters.dart';
import '../../core/widgets/data_scaffold.dart';
import '../../core/widgets/info_card.dart';
import '../../data/data_repository.dart';
import '../../data/saved_policy.dart';
import '../../l10n/app_localizations.dart';
import '../common/plan_config_form.dart';
import '../maturity/maturity_state.dart' show todayProvider;
import 'policies_state.dart';

int policyPayingYears(PlanRule plan, SavedPolicy p) =>
    columnDimensionFor(plan) == null ? p.column : payingYears(plan, p.entryAge, p.column);

class PoliciesScreen extends ConsumerWidget {
  const PoliciesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final lang = Localizations.localeOf(context).languageCode;
    final policies = ref.watch(policiesProvider);
    final today = ref.watch(todayProvider);
    return DataScaffold(
        title: l.policiesTitle,
        floatingActionButton: FloatingActionButton.extended(
          icon: const Icon(Icons.add),
          label: Text(l.addPolicy),
          onPressed: () => context.push('/policies/new'),
        ),
        builder: (context, data) => policies.isEmpty
            ? ListView(padding: const EdgeInsets.all(16), children: [
                InfoCard(icon: Icons.folder_open, message: l.noPolicies),
                const SizedBox(height: 8),
                Text(l.savedLocally, style: Theme.of(context).textTheme.bodySmall),
              ])
            : ListView(padding: const EdgeInsets.fromLTRB(16, 16, 16, 88), children: [
                for (final p in policies) _PolicyTile(policy: p, data: data, today: today, lang: lang),
                Text(l.savedLocally, style: Theme.of(context).textTheme.bodySmall),
              ]),
    );
  }
}

class _PolicyTile extends StatelessWidget {
  const _PolicyTile({required this.policy, required this.data, required this.today, required this.lang});

  final SavedPolicy policy;
  final AppData data;
  final DateTime today;
  final String lang;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final plan = data.rules.plan(policy.planId);
    final next = upcomingDueDates(
      commencement: policy.commencement,
      frequency: policy.frequency,
      payingYears: policyPayingYears(plan, policy),
      from: today,
      count: 1,
    );
    return Card(
      child: ListTile(
        leading: Icon(policy.reminders ? Icons.notifications_active_outlined : Icons.description_outlined),
        title: Text(policy.holderName),
        subtitle: Text('${plan.name(lang)}\n${policy.policyNumber} • ${formatRupees(Paise.wholeRupees(policy.sumAssured))}\n'
            '${next.isEmpty ? l.noMoreDues : l.nextDue(formatDate(context, next.first))}'),
        isThreeLine: true,
        onTap: () => context.push('/policies/${policy.id}'),
      ),
    );
  }
}
