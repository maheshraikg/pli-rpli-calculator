import 'package:flutter/material.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/formatters.dart';
import '../../core/messages.dart';
import '../../core/widgets/info_card.dart';
import '../../l10n/app_localizations.dart';
import 'plan_evaluation.dart';
import '../../core/app_icons.dart';

class ValueRow extends StatelessWidget {
  const ValueRow(this.label, this.value, {super.key, this.emphasis = false});

  final String label;
  final String value;
  final bool emphasis;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Text(label)),
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: emphasis
                  ? theme.textTheme.titleLarge?.copyWith(color: theme.colorScheme.primary, fontWeight: FontWeight.bold)
                  : theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}

/// Plain-language problems with the inputs, or "rules pending" notices.
class EvaluationIssues extends StatelessWidget {
  const EvaluationIssues({super.key, required this.evaluation});

  final PlanEvaluation evaluation;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final lang = Localizations.localeOf(context).languageCode;
    final error = Theme.of(context).colorScheme.errorContainer;
    final e = evaluation;
    return Column(
      children: [
        for (final v in e.violations)
          InfoCard(icon: AppIcons.warningCircle, color: error, message: violationMessage(l, v, e.plan, lang)),
        if (e.missingRateYear != null)
          InfoCard(icon: AppIcons.warningCircle, color: error, message: l.missingBonusRate(e.missingRateYear!)),
      ],
    );
  }
}

String percentText(double rate) => (rate * 100).toStringAsFixed(2);

/// Two horizontal bars: total premium paid vs total benefits received.
class PaidVsBenefitsChart extends StatelessWidget {
  const PaidVsBenefitsChart({super.key, required this.paid, required this.received});

  final Paise paid;
  final Paise received;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final maxValue = paid.value > received.value ? paid.value : received.value;
    Widget bar(String label, Paise amount, Color color) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Text(label)),
              Text(formatRupees(amount), style: theme.textTheme.titleSmall),
            ],
          ),
          const SizedBox(height: 4),
          LayoutBuilder(
            builder: (context, box) => Align(
              alignment: AlignmentDirectional.centerStart,
              child: Container(
                height: 18,
                width: maxValue == 0 ? 0 : box.maxWidth * amount.value / maxValue,
                decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(4)),
              ),
            ),
          ),
        ],
      ),
    );
    return Semantics(
      label: '${l.chartPaid} ${formatRupees(paid)}, ${l.chartReceived} ${formatRupees(received)}',
      child: ExcludeSemantics(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(l.chartTitle, style: theme.textTheme.titleMedium),
            bar(l.chartPaid, paid, theme.colorScheme.secondary),
            bar(l.chartReceived, received, theme.colorScheme.primary),
          ],
        ),
      ),
    );
  }
}

class IllustrationTable extends StatelessWidget {
  const IllustrationTable({super.key, required this.rows});

  final List<IllustrationRow> rows;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final style = Theme.of(context).textTheme.bodySmall;
    final head = Theme.of(context).textTheme.labelMedium;
    TableRow row(List<String> cells, TextStyle? s) => TableRow(
      children: [
        for (final (i, c) in cells.indexed)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
            child: Text(c, style: s, textAlign: i == 0 ? TextAlign.start : TextAlign.end),
          ),
      ],
    );
    return Table(
      columnWidths: const {0: FlexColumnWidth(0.6)},
      border: TableBorder(horizontalInside: BorderSide(color: Theme.of(context).dividerColor)),
      children: [
        row([l.colYear, l.colPremiumsPaid, l.colBonus, l.colLifeCover], head),
        for (final r in rows)
          row([
            '${r.policyYear}',
            r.premiumsPaid == null ? '—' : formatRupees(r.premiumsPaid!),
            formatRupees(r.accruedBonus),
            formatRupees(r.lifeCover),
          ], style),
      ],
    );
  }
}

/// Expand/collapse wrapper for the year-wise table.
class ExpandableIllustration extends StatefulWidget {
  const ExpandableIllustration({super.key, required this.rows});

  final List<IllustrationRow> rows;

  @override
  State<ExpandableIllustration> createState() => _ExpandableIllustrationState();
}

class _ExpandableIllustrationState extends State<ExpandableIllustration> {
  bool _open = false;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(l.illustrationTitle, style: Theme.of(context).textTheme.titleLarge),
        TextButton.icon(
          icon: Icon(_open ? AppIcons.caretUpLine : AppIcons.caretDownLine),
          label: Text(_open ? l.hideTable : l.showTable),
          onPressed: () => setState(() => _open = !_open),
        ),
        if (_open) IllustrationTable(rows: widget.rows),
      ],
    );
  }
}
