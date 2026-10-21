import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/formatters.dart';
import '../../core/widgets/data_scaffold.dart';
import '../../core/widgets/info_card.dart';
import '../../l10n/app_localizations.dart';
import '../common/plan_config_form.dart';
import '../common/plan_evaluation.dart';
import '../common/result_widgets.dart';
import '../maturity/benefit_timeline.dart';

const premiumConfigKey = 'premium';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) => DataScaffold(
        title: AppLocalizations.of(context).premiumTitle,
        builder: (context, data) => ListView(padding: const EdgeInsets.all(16), children: [
          PlanConfigForm(configKey: premiumConfigKey, data: data),
          const SizedBox(height: 16),
          const PremiumResultView(configKey: premiumConfigKey),
        ]),
      );
}

class PremiumResultView extends ConsumerWidget {
  const PremiumResultView({super.key, required this.configKey, this.showQuotationButton = true});

  final String configKey;
  final bool showQuotationButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final e = ref.watch(planEvaluationProvider(configKey));
    if (e == null) return const SizedBox.shrink();
    if (!e.isValid) return EvaluationIssues(evaluation: e);

    final quote = e.selectedQuote;
    final p = e.projection;
    final freq = e.config.frequency;
    final unavailable = e.premiums[freq];
    const gap = SizedBox(height: 16);

    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      EvaluationIssues(evaluation: e),
      if (quote == null)
        InfoCard(
          icon: Icons.table_chart_outlined,
          title: l.notAvailableTitle,
          message: unavailable is PremiumUnavailable && unavailable.reason == PremiumUnavailableReason.notInTable
              ? l.notInTable
              : l.noTableForPlan,
        )
      else
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              Text('${l.premiumPerInstalment} • ${frequencyName(l, freq)}', style: theme.textTheme.titleMedium),
              Text(
                formatRupees(quote.premium),
                style: theme.textTheme.displaySmall?.copyWith(color: theme.colorScheme.primary, fontWeight: FontWeight.bold),
              ),
              const Divider(height: 24),
              ValueRow('${l.tablePremiumRow} (₹10,000)', formatRupees(quote.tablePremium)),
              ValueRow(l.saRebateRow, '− ${formatRupees(quote.saRebate)}'),
              ValueRow(l.payingTermRow, l.termYears(quote.payingYears)),
              ValueRow(l.totalPremiumRow(quote.totalInstalments), formatRupees(quote.totalPremium)),
              if (p != null) ...[
                ValueRow(p.payments.length > 1 ? l.resultTotalBenefits : l.resultMaturityValue, formatRupees(p.totalBenefits),
                    emphasis: true),
                ValueRow(l.lifeCoverRow, formatRupees(Paise.wholeRupees(p.sumAssured))),
              ],
              if (e.returnRate != null) ValueRow(l.returnRow, l.returnValue(percentText(e.returnRate!))),
            ]),
          ),
        ),
      if (e.premiums.isNotEmpty && quote != null) ...[
        gap,
        Text(l.allFrequenciesTitle, style: theme.textTheme.titleLarge),
        for (final f in PremiumFrequency.values)
          ValueRow(
            frequencyName(l, f),
            switch (e.quoteFor(f)) {
              final q? => formatRupees(q.premium),
              null => l.notInTable,
            },
          ),
      ],
      if (e.projectionPending) ...[
        gap,
        InfoCard(icon: Icons.hourglass_empty, title: l.notAvailableTitle, message: l.rulesPendingBody),
      ],
      if (p != null) ...[
        if (quote != null) ...[gap, PaidVsBenefitsChart(paid: quote.totalPremium, received: p.totalBenefits)],
        if (p.payments.length > 1) ...[
          gap,
          Text(l.timelineTitle, style: theme.textTheme.titleLarge),
          const SizedBox(height: 12),
          BenefitTimeline(payments: p.payments),
          Text(l.timelineDeathNote, style: theme.textTheme.bodySmall),
        ],
        gap,
        ExpandableIllustration(rows: e.illustration),
        Text(l.projectionNote(p.financialYear), style: theme.textTheme.bodySmall),
      ],
      const SizedBox(height: 8),
      Text(l.gstNote, style: theme.textTheme.bodySmall),
      Text(l.bonusDisclaimer, style: theme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold)),
      if (showQuotationButton && quote != null) ...[
        gap,
        FilledButton.icon(
          icon: const Icon(Icons.picture_as_pdf),
          label: Text(l.makeQuotation),
          onPressed: () => context.push('/quotation'),
        ),
      ],
    ]);
  }
}
