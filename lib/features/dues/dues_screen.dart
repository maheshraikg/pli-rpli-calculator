import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:pli_engine/pli_engine.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/formatters.dart';
import '../../core/widgets/data_scaffold.dart';
import '../../core/widgets/info_card.dart';
import '../../core/widgets/ui.dart';
import '../../data/agent_profile.dart';
import '../../data/data_repository.dart';
import '../../data/saved_policy.dart';
import '../../data/storage.dart';
import '../../l10n/app_localizations.dart';
import '../common/plan_config_form.dart' show formatDate;
import '../maturity/maturity_state.dart' show todayProvider;
import '../policies/policies_screen.dart' show policyPayingYears;
import '../policies/policies_state.dart';
import '../policies/policy_detail_screen.dart' show reminderText;
import '../../core/app_icons.dart';

class DueItem {
  const DueItem(this.policy, this.date);
  final SavedPolicy policy;
  final DateTime date;
}

/// Every saved policy's premium dates that fall in [month] (any day of it).
List<DueItem> duesInMonth(AppData data, List<SavedPolicy> policies, DateTime month) {
  final first = DateTime(month.year, month.month);
  final last = DateTime(month.year, month.month + 1, 0);
  final items = <DueItem>[];
  for (final p in policies) {
    final plan = data.rules.plan(p.planId);
    for (final d in upcomingDueDates(
      commencement: p.commencement,
      frequency: p.frequency,
      payingYears: policyPayingYears(plan, p),
      from: first,
      count: 2,
    )) {
      if (!d.isAfter(last)) items.add(DueItem(p, d));
    }
  }
  items.sort((a, b) => a.date.compareTo(b.date));
  return items;
}

/// "98450 00000" → "919845000000" for wa.me; null if not a usable number.
String? whatsAppNumber(String phone) {
  final digits = phone.replaceAll(RegExp(r'\D'), '');
  if (digits.length == 10) return '91$digits';
  if (digits.length == 12 && digits.startsWith('91')) return digits;
  return null;
}

enum DuesFilter { all, pending, collected }

/// Totals for a month's dues, split by what the agent marked collected.
({Paise total, Paise pending, int collectedCount}) duesSummary(List<DueItem> items) {
  var total = Paise.zero, pending = Paise.zero;
  var collected = 0;
  for (final i in items) {
    final amount = Paise.wholeRupees(i.policy.premiumRupees);
    total += amount;
    if (i.policy.isPaid(i.date)) {
      collected++;
    } else {
      pending += amount;
    }
  }
  return (total: total, pending: pending, collectedCount: collected);
}

class DuesScreen extends ConsumerStatefulWidget {
  const DuesScreen({super.key});

  @override
  ConsumerState<DuesScreen> createState() => _DuesScreenState();
}

class _DuesScreenState extends ConsumerState<DuesScreen> {
  int _offset = 0;
  var _filter = DuesFilter.all;

  Future<void> _remind(DueItem item, String message) async {
    final number = whatsAppNumber(item.policy.phone);
    if (number != null) {
      final uri = Uri.parse('https://wa.me/$number?text=${Uri.encodeComponent(message)}');
      if (await launchUrl(uri, mode: LaunchMode.externalApplication)) return;
    }
    await SharePlus.instance.share(ShareParams(text: message));
  }

  Future<void> _setCollected(AppData data, DueItem item, bool collected) async {
    final p = item.policy.withPaid(item.date, collected);
    // Re-saving also drops the reminder for a collected due.
    await ref.read(policiesProvider.notifier).save(
          p,
          payingYears: policyPayingYears(data.rules.plan(p.planId), p),
          text: reminderText(context),
        );
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final lang = Localizations.localeOf(context).toLanguageTag();
    final theme = Theme.of(context);
    final today = ref.watch(todayProvider);
    final policies = ref.watch(policiesProvider);
    final agent = ref.watch(agentProfileProvider);
    final months = [for (var i = 0; i < 3; i++) DateTime(today.year, today.month + i)];

    return DataScaffold(
      title: l.duesTitle,
      builder: (context, data) {
        final items = duesInMonth(data, policies, months[_offset]);
        final sum = duesSummary(items);
        final shown = [
          for (final i in items)
            if (switch (_filter) {
              DuesFilter.all => true,
              DuesFilter.pending => !i.policy.isPaid(i.date),
              DuesFilter.collected => i.policy.isPaid(i.date),
            })
              i,
        ];
        return ListView(padding: const EdgeInsets.all(16), children: [
          Wrap(spacing: 8, children: [
            for (final (i, m) in months.indexed)
              ChoiceChip(
                label: Text(DateFormat.yMMMM(lang).format(m)),
                selected: _offset == i,
                onSelected: (_) => setState(() => _offset = i),
              ),
          ]),
          const SizedBox(height: 8),
          if (policies.isEmpty)
            InfoCard(icon: AppIcons.folderOpen, message: l.noSavedPolicies)
          else if (items.isEmpty)
            InfoCard(icon: AppIcons.calendarCheck, message: l.noDuesInMonth)
          else ...[
            HeroAmountCard(
              icon: AppIcons.calendarDots,
              label: l.duesPendingTotal,
              amount: formatRupees(sum.pending),
              caption: l.duesCollectedOf(sum.collectedCount, items.length),
              details: [(l.duesMonthTotal, '${formatRupees(sum.total)} • ${l.duesCount(items.length)}')],
            ),
            const SizedBox(height: 4),
            Wrap(spacing: 8, children: [
              for (final (f, label) in [
                (DuesFilter.all, l.filterAll),
                (DuesFilter.pending, l.filterPending),
                (DuesFilter.collected, l.filterCollected),
              ])
                ChoiceChip(label: Text(label), selected: _filter == f, onSelected: (_) => setState(() => _filter = f)),
            ]),
            const SizedBox(height: 4),
            if (shown.isEmpty) InfoCard(icon: AppIcons.listChecks, message: l.noDuesInFilter),
            for (final item in shown) _dueCard(context, data, item, agent, lang),
            const SizedBox(height: 4),
            Text(l.collectedNote, style: theme.textTheme.bodySmall),
          ],
          const SizedBox(height: 8),
          Text(l.savedLocally, style: theme.textTheme.bodySmall),
        ]);
      },
    );
  }

  Widget _dueCard(BuildContext context, AppData data, DueItem item, AgentProfile agent, String lang) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final paid = item.policy.isPaid(item.date);
    final amount = formatRupees(Paise.wholeRupees(item.policy.premiumRupees));
    return Card(
      child: InkWell(
        onTap: () => context.push('/policies/${item.policy.id}'),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 12, 8, 8),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: 52,
              padding: const EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                color: paid ? scheme.surfaceContainerHighest : scheme.primaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(children: [
                Text('${item.date.day}',
                    style: theme.textTheme.titleLarge?.copyWith(color: paid ? scheme.onSurfaceVariant : scheme.primary)),
                Text(DateFormat.MMM(lang).format(item.date), style: theme.textTheme.labelSmall),
              ]),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(item.policy.holderName, style: theme.textTheme.titleMedium),
                Text(item.policy.policyNumber, style: theme.textTheme.bodySmall),
                Text(
                  amount,
                  style: theme.textTheme.titleSmall?.copyWith(
                    decoration: paid ? TextDecoration.lineThrough : null,
                    color: paid ? scheme.onSurfaceVariant : null,
                  ),
                ),
                const SizedBox(height: 4),
                Wrap(spacing: 8, runSpacing: 4, crossAxisAlignment: WrapCrossAlignment.center, children: [
                  FilterChip(
                    label: Text(l.filterCollected),
                    selected: paid,
                    tooltip: paid ? l.markNotCollected : l.markCollected,
                    onSelected: (v) => _setCollected(data, item, v),
                  ),
                  if (!paid)
                    TextButton.icon(
                      icon: AppIcon(item.policy.phone.isEmpty ? AppIcons.shareNetworkLine : AppIcons.whatsappLogo),
                      label: Text(l.remindOnWhatsApp),
                      onPressed: () {
                        final msg = l.dueReminderMessage(
                          item.policy.holderName,
                          amount,
                          item.policy.policyNumber,
                          formatDate(context, item.date),
                        );
                        _remind(item, agent.name.isEmpty ? msg : '$msg\n— ${agent.name}${agent.phone.isEmpty ? '' : ', ${agent.phone}'}');
                      },
                    ),
                ]),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
