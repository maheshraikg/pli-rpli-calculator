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
import '../../data/data_repository.dart';
import '../../data/saved_policy.dart';
import '../../data/storage.dart';
import '../../l10n/app_localizations.dart';
import '../common/plan_config_form.dart' show formatDate;
import '../maturity/maturity_state.dart' show todayProvider;
import '../policies/policies_screen.dart' show policyPayingYears;
import '../policies/policies_state.dart';

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

class DuesScreen extends ConsumerStatefulWidget {
  const DuesScreen({super.key});

  @override
  ConsumerState<DuesScreen> createState() => _DuesScreenState();
}

class _DuesScreenState extends ConsumerState<DuesScreen> {
  int _offset = 0;

  Future<void> _remind(DueItem item, String message) async {
    final number = whatsAppNumber(item.policy.phone);
    if (number != null) {
      final uri = Uri.parse('https://wa.me/$number?text=${Uri.encodeComponent(message)}');
      if (await launchUrl(uri, mode: LaunchMode.externalApplication)) return;
    }
    await SharePlus.instance.share(ShareParams(text: message));
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
        final total = items.fold(Paise.zero, (s, i) => s + Paise.wholeRupees(i.policy.premiumRupees));
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
            InfoCard(icon: Icons.folder_open_rounded, message: l.noSavedPolicies)
          else if (items.isEmpty)
            InfoCard(icon: Icons.event_available_rounded, message: l.noDuesInMonth)
          else ...[
            HeroAmountCard(
              icon: Icons.event_note_rounded,
              label: l.duesTotal,
              amount: formatRupees(total),
              caption: l.duesCount(items.length),
            ),
            for (final item in items)
              Card(
                child: InkWell(
                  onTap: () => context.push('/policies/${item.policy.id}'),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14, 12, 8, 12),
                    child: Row(children: [
                      Container(
                        width: 52,
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(children: [
                          Text('${item.date.day}', style: theme.textTheme.titleLarge?.copyWith(color: theme.colorScheme.primary)),
                          Text(DateFormat.MMM(lang).format(item.date), style: theme.textTheme.labelSmall),
                        ]),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          Text(item.policy.holderName, style: theme.textTheme.titleMedium),
                          Text(item.policy.policyNumber, style: theme.textTheme.bodySmall),
                          Text(formatRupees(Paise.wholeRupees(item.policy.premiumRupees)), style: theme.textTheme.titleSmall),
                        ]),
                      ),
                      TextButton.icon(
                        icon: Icon(item.policy.phone.isEmpty ? Icons.share_rounded : Icons.chat_rounded),
                        label: Text(l.remindOnWhatsApp),
                        onPressed: () {
                          final msg = l.dueReminderMessage(
                            item.policy.holderName,
                            formatRupees(Paise.wholeRupees(item.policy.premiumRupees)),
                            item.policy.policyNumber,
                            formatDate(context, item.date),
                          );
                          _remind(item, agent.name.isEmpty ? msg : '$msg\n— ${agent.name}${agent.phone.isEmpty ? '' : ', ${agent.phone}'}');
                        },
                      ),
                    ]),
                  ),
                ),
              ),
          ],
          const SizedBox(height: 8),
          Text(l.savedLocally, style: theme.textTheme.bodySmall),
        ]);
      },
    );
  }
}
