import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/formatters.dart';
import '../../core/widgets/data_scaffold.dart';
import '../../core/widgets/info_card.dart';
import '../../data/backup.dart';
import '../../data/data_repository.dart';
import '../../data/saved_policy.dart';
import '../../l10n/app_localizations.dart';
import '../common/plan_config_form.dart';
import '../maturity/maturity_state.dart' show todayProvider;
import '../../services/share_export.dart';
import 'policies_state.dart';
import 'policy_detail_screen.dart' show reminderText;
import '../../core/app_icons.dart';

int policyPayingYears(PlanRule plan, SavedPolicy p) =>
    columnDimensionFor(plan) == null ? p.column : payingYears(plan, p.entryAge, p.column);

enum PolicySort { name, nextDue, sumAssured }

/// Next premium date of [p] on or after [today]; null once premiums stop.
DateTime? nextDueDate(AppData data, SavedPolicy p, DateTime today) => upcomingDueDates(
      commencement: p.commencement,
      frequency: p.frequency,
      payingYears: policyPayingYears(data.rules.plan(p.planId), p),
      from: today,
      count: 1,
    ).firstOrNull;

/// Policies matching [query] (holder name, policy number or mobile digits),
/// in [sort] order. Fully paid policies sort last by next due.
List<SavedPolicy> findPolicies(AppData data, List<SavedPolicy> policies, String query, PolicySort sort, DateTime today) {
  final q = query.trim().toLowerCase();
  final digits = q.replaceAll(RegExp(r'\D'), '');
  final found = [
    for (final p in policies)
      if (q.isEmpty ||
          p.holderName.toLowerCase().contains(q) ||
          p.policyNumber.toLowerCase().contains(q) ||
          (digits.isNotEmpty && p.phone.replaceAll(RegExp(r'\D'), '').contains(digits)))
        p,
  ];
  int byName(SavedPolicy a, SavedPolicy b) => a.holderName.toLowerCase().compareTo(b.holderName.toLowerCase());
  switch (sort) {
    case PolicySort.name:
      found.sort(byName);
    case PolicySort.sumAssured:
      found.sort((a, b) => b.sumAssured != a.sumAssured ? b.sumAssured.compareTo(a.sumAssured) : byName(a, b));
    case PolicySort.nextDue:
      final next = {for (final p in found) p.id: nextDueDate(data, p, today)};
      found.sort((a, b) {
        final x = next[a.id], y = next[b.id];
        if (x == null || y == null) return x == y ? byName(a, b) : (x == null ? 1 : -1);
        return x != y ? x.compareTo(y) : byName(a, b);
      });
  }
  return found;
}

class PoliciesScreen extends ConsumerStatefulWidget {
  const PoliciesScreen({super.key});

  @override
  ConsumerState<PoliciesScreen> createState() => _PoliciesScreenState();
}

class _PoliciesScreenState extends ConsumerState<PoliciesScreen> {
  final _search = TextEditingController();
  var _sort = PolicySort.name;

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final lang = Localizations.localeOf(context).languageCode;
    final policies = ref.watch(policiesProvider);
    final today = ref.watch(todayProvider);
    return DataScaffold(
      title: l.policiesTitle,
      actions: [
        PopupMenuButton<String>(
          icon: const Icon(AppIcons.dotsThreeVerticalBold),
          onSelected: (v) => v == 'export' ? _export(context, ref) : _import(context, ref),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 'export',
              enabled: policies.isNotEmpty,
              child: ListTile(leading: const Icon(AppIcons.cloudArrowUpLine), title: Text(l.exportBackup)),
            ),
            PopupMenuItem(
              value: 'import',
              child: ListTile(leading: const Icon(AppIcons.clockCounterClockwiseLine), title: Text(l.importBackup)),
            ),
          ],
        ),
      ],
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(AppIcons.plusBold),
        label: Text(l.addPolicy),
        onPressed: () => context.push('/policies/new'),
      ),
      builder: (context, data) {
        if (policies.isEmpty) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              InfoCard(icon: AppIcons.folderOpen, message: l.noPolicies),
              const SizedBox(height: 8),
              Text(l.savedLocally, style: Theme.of(context).textTheme.bodySmall),
            ],
          );
        }
        final shown = findPolicies(data, policies, _search.text, _sort, today);
        return ListView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 88),
          children: [
            TextField(
              controller: _search,
              onChanged: (_) => setState(() {}),
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                prefixIcon: const Icon(AppIcons.magnifyingGlassLine),
                hintText: l.searchPolicies,
                suffixIcon: _search.text.isEmpty
                    ? null
                    : IconButton(
                        icon: const Icon(AppIcons.xLine),
                        tooltip: MaterialLocalizations.of(context).deleteButtonTooltip,
                        onPressed: () => setState(_search.clear),
                      ),
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 4,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(l.sortLabel, style: Theme.of(context).textTheme.labelLarge),
                for (final (sort, label) in [
                  (PolicySort.name, l.sortName),
                  (PolicySort.nextDue, l.sortNextDue),
                  (PolicySort.sumAssured, l.sortSumAssured),
                ])
                  ChoiceChip(label: Text(label), selected: _sort == sort, onSelected: (_) => setState(() => _sort = sort)),
              ],
            ),
            const SizedBox(height: 8),
            if (shown.isEmpty) InfoCard(icon: AppIcons.magnifyingGlassMinus, message: l.noSearchResults(_search.text.trim())),
            for (final p in shown) _PolicyTile(policy: p, data: data, today: today, lang: lang),
            Text(l.savedLocally, style: Theme.of(context).textTheme.bodySmall),
          ],
        );
      },
    );
  }
}

Future<void> _export(BuildContext context, WidgetRef ref) async {
  final l = AppLocalizations.of(context);
  final today = ref.read(todayProvider);
  final json = exportPolicies(ref.read(policiesProvider), DateTime.now());
  final stamp = '${today.year}${today.month.toString().padLeft(2, '0')}${today.day.toString().padLeft(2, '0')}';
  await shareBytes(utf8.encode(json), fileName: 'pli_policies_backup_$stamp.json', mimeType: 'application/json', text: l.backupNote);
}

Future<void> _import(BuildContext context, WidgetRef ref) async {
  final l = AppLocalizations.of(context);
  final file = await FilePicker.pickFile(type: FileType.custom, allowedExtensions: ['json']);
  if (file == null || !context.mounted) return;
  final List<SavedPolicy> policies;
  try {
    policies = parseBackup(utf8.decode(await file.readAsBytes()));
  } on FormatException {
    if (context.mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l.importFailed)));
    return;
  }
  if (!context.mounted) return;
  final ok = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      content: Text(l.importConfirm(policies.length)),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context, false), child: Text(l.cancel)),
        FilledButton(onPressed: () => Navigator.pop(context, true), child: Text(l.restore)),
      ],
    ),
  );
  if (ok != true || !context.mounted) return;
  final rules = ref.read(appDataProvider).value!.rules;
  await ref.read(policiesProvider.notifier).restore(
        policies,
        payingYears: (p) => policyPayingYears(rules.plan(p.planId), p),
        text: reminderText(context),
      );
  if (context.mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l.importDone(policies.length))));
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
    final next = nextDueDate(data, policy, today);
    final theme = Theme.of(context);
    final initial = policy.holderName.isEmpty ? '?' : policy.holderName.characters.first.toUpperCase();
    return Card(
      child: InkWell(
        onTap: () => context.push('/policies/${policy.id}'),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: theme.colorScheme.primaryContainer,
                child: Text(initial, style: theme.textTheme.titleLarge?.copyWith(color: theme.colorScheme.primary)),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(child: Text(policy.holderName, style: theme.textTheme.titleMedium)),
                        if (policy.reminders)
                          AppIcon(AppIcons.bellRinging, size: 18, color: theme.colorScheme.primary),
                      ],
                    ),
                    Text(
                      plan.name(lang),
                      style: theme.textTheme.bodySmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      '${policy.policyNumber} • ${formatRupees(Paise.wholeRupees(policy.sumAssured))}',
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.secondaryContainer,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AppIcon(AppIcons.calendarBlank, size: 14, color: theme.colorScheme.onSecondaryContainer),
                          const SizedBox(width: 6),
                          Flexible(
                            child: Text(
                              next == null ? l.noMoreDues : l.nextDue(formatDate(context, next)),
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: theme.colorScheme.onSecondaryContainer,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
