import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/formatters.dart';
import '../../core/widgets/data_scaffold.dart';
import '../../core/widgets/info_card.dart';
import '../../core/widgets/ui.dart';
import '../../l10n/app_localizations.dart';
import '../common/plan_config_form.dart';
import '../common/plan_evaluation.dart';
import '../common/result_widgets.dart';
import '../maturity/benefit_timeline.dart';
import '../../core/app_icons.dart';

const premiumConfigKey = 'premium';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) => DataScaffold(
    title: AppLocalizations.of(context).premiumTitle,
    builder: (context, data) => ListView(
      padding: const EdgeInsets.all(16),
      children: [
        PlanConfigForm(configKey: premiumConfigKey, data: data),
        const SizedBox(height: 16),
        const PremiumResultView(configKey: premiumConfigKey),
      ],
    ),
  );
}

class PremiumResultView extends ConsumerWidget {
  const PremiumResultView({super.key, required this.configKey, this.showQuotationButton = true});

  final String configKey;
  final bool showQuotationButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final e = ref.watch(planEvaluationProvider(configKey));
    if (e == null) return const SizedBox.shrink();
    if (!e.isValid) return EvaluationIssues(evaluation: e);

    final quote = e.selectedQuote;
    final p = e.projection;
    final freq = e.config.frequency;
    final unavailable = e.premiums[freq];
    const gap = SizedBox(height: 16);

    final notes = Theme.of(context).textTheme.bodySmall;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        EvaluationIssues(evaluation: e),
        if (quote == null)
          InfoCard(
            icon: AppIcons.table,
            title: l.notAvailableTitle,
            message: unavailable is PremiumUnavailable && unavailable.reason == PremiumUnavailableReason.notInTable
                ? l.notInTable
                : l.noTableForPlan,
          )
        else ...[
          HeroAmountCard(
            label: '${l.premiumPerInstalment} • ${frequencyName(l, freq)}',
            amount: formatRupees(quote.premium),
            caption: e.plan.name(Localizations.localeOf(context).languageCode),
            details: [
              ('${l.tablePremiumRow} (₹10,000)', formatRupees(quote.tablePremium)),
              (l.saRebateRow, '− ${formatRupees(quote.saRebate)}'),
              (l.payingTermRow, l.termYears(quote.payingYears)),
            ],
          ),
          StatGrid(
            tiles: [
              StatTile(
                icon: AppIcons.money,
                label: l.totalPremiumRow(quote.totalInstalments),
                value: formatRupees(quote.totalPremium),
              ),
              if (p != null)
                StatTile(
                  icon: AppIcons.handCoins,
                  color: const Color(0xFF2E7D32),
                  label: p.payments.length > 1 ? l.resultTotalBenefits : l.resultMaturityValue,
                  value: formatRupees(p.totalBenefits),
                ),
              if (p != null)
                StatTile(
                  icon: AppIcons.shieldCheck,
                  color: const Color(0xFF3949AB),
                  label: l.lifeCoverRow,
                  value: formatRupees(Paise.wholeRupees(p.sumAssured)),
                ),
            ],
          ),
          SectionCard(
            title: l.allFrequenciesTitle,
            icon: AppIcons.clockCounterClockwise,
            child: Column(
              children: [
                for (final f in PremiumFrequency.values)
                  _FrequencyRow(
                    label: frequencyName(l, f),
                    value: switch (e.quoteFor(f)) {
                      final q? => formatRupees(q.premium),
                      null => l.notInTable,
                    },
                    selected: f == freq,
                  ),
              ],
            ),
          ),
        ],
        if (e.projectionPending)
          InfoCard(icon: AppIcons.hourglassMedium, title: l.notAvailableTitle, message: l.rulesPendingBody),
        if (p != null) ...[
          if (quote != null)
            SectionCard(
              child: PaidVsBenefitsChart(paid: quote.totalPremium, received: p.totalBenefits),
            ),
          if (p.payments.length > 1)
            SectionCard(
              title: l.timelineTitle,
              icon: AppIcons.chartLineUp,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BenefitTimeline(payments: p.payments),
                  Text(l.timelineDeathNote, style: notes),
                ],
              ),
            ),
          SectionCard(child: ExpandableIllustration(rows: e.illustration)),
        ],
        const SizedBox(height: 8),
        _Notes(lines: [if (p != null) l.projectionNote(p.financialYear), l.gstNote, l.bonusDisclaimer]),
        if (showQuotationButton && quote != null) ...[
          gap,
          FilledButton.icon(
            icon: const AppIcon(AppIcons.filePdf),
            label: Text(l.makeQuotation),
            onPressed: () => context.push('/quotation'),
          ),
        ],
      ],
    );
  }
}

class _FrequencyRow extends StatelessWidget {
  const _FrequencyRow({required this.label, required this.value, required this.selected});

  final String label;
  final String value;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: selected ? theme.colorScheme.primaryContainer.withValues(alpha: 0.6) : null,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(child: Text(label, style: selected ? theme.textTheme.titleSmall : theme.textTheme.bodyMedium)),
          Text(value, style: theme.textTheme.titleMedium),
        ],
      ),
    );
  }
}

/// Disclaimers in a quiet tinted box.
class _Notes extends StatelessWidget {
  const _Notes({required this.lines});

  final List<String> lines;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(AppIcons.infoLine, size: 18, color: theme.colorScheme.onSurfaceVariant),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final (i, t) in lines.indexed)
                  Padding(
                    padding: EdgeInsets.only(top: i == 0 ? 0 : 6),
                    child: Text(
                      t,
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontWeight: i == lines.length - 1 ? FontWeight.w700 : null,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
