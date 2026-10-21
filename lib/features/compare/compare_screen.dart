import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/formatters.dart';
import '../../core/widgets/data_scaffold.dart';
import '../../data/data_repository.dart';
import '../../l10n/app_localizations.dart';
import '../common/plan_config_form.dart';
import '../common/plan_evaluation.dart';
import '../common/result_widgets.dart';

String compareKey(int i) => 'compare$i';

class CompareScreen extends StatelessWidget {
  const CompareScreen({super.key});

  @override
  Widget build(BuildContext context) => DataScaffold(
        title: AppLocalizations.of(context).compareTitle,
        builder: (context, data) => _CompareBody(data: data),
      );
}

class _CompareBody extends StatefulWidget {
  const _CompareBody({required this.data});

  final AppData data;

  @override
  State<_CompareBody> createState() => _CompareBodyState();
}

class _CompareBodyState extends State<_CompareBody> {
  int _count = 2;
  int _editing = 0;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return ListView(padding: const EdgeInsets.all(16), children: [
      Wrap(spacing: 8, runSpacing: 4, crossAxisAlignment: WrapCrossAlignment.center, children: [
        for (var i = 0; i < _count; i++)
          ChoiceChip(label: Text(l.optionN(i + 1)), selected: _editing == i, onSelected: (_) => setState(() => _editing = i)),
        if (_count < 3)
          ActionChip(
            avatar: const Icon(Icons.add, size: 18),
            label: Text(l.addOption),
            onPressed: () => setState(() => _editing = _count++),
          )
        else
          ActionChip(
            avatar: const Icon(Icons.remove, size: 18),
            label: Text(l.removeOption),
            onPressed: () => setState(() {
              _count--;
              if (_editing >= _count) _editing = _count - 1;
            }),
          ),
      ]),
      const SizedBox(height: 16),
      PlanConfigForm(key: ValueKey(_editing), configKey: compareKey(_editing), data: widget.data, showStartDate: false),
      const Divider(height: 32),
      _ComparisonTable(count: _count),
    ]);
  }
}

class _ComparisonTable extends ConsumerWidget {
  const _ComparisonTable({required this.count});

  final int count;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final lang = Localizations.localeOf(context).languageCode;
    final theme = Theme.of(context);
    final evals = [for (var i = 0; i < count; i++) ref.watch(planEvaluationProvider(compareKey(i)))];

    String cell(PlanEvaluation? e, String Function(PlanEvaluation e) f) => e == null || !e.isValid ? '—' : f(e);
    String money(Paise? p) => p == null ? '—' : formatRupees(p);

    final rows = <(String, String Function(PlanEvaluation))>[
      (l.planLabel, (e) => e.plan.name(lang)),
      (l.premiumShort, (e) => e.selectedQuote == null ? l.notInTable : '${formatRupees(e.selectedQuote!.premium)} • ${frequencyName(l, e.config.frequency)}'),
      (l.totalPaidShort, (e) => money(e.selectedQuote?.totalPremium)),
      (l.maturityShort, (e) => money(e.projection?.totalBenefits)),
      (l.returnShort, (e) => e.returnRate == null ? '—' : l.returnValue(percentText(e.returnRate!))),
      (l.lifeCoverShort, (e) => formatRupees(Paise.wholeRupees(e.config.sumAssured ?? 0))),
    ];

    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Text(l.comparisonTitle, style: theme.textTheme.titleLarge),
      const SizedBox(height: 8),
      Table(
        columnWidths: const {0: FlexColumnWidth(0.9)},
        border: TableBorder(horizontalInside: BorderSide(color: theme.dividerColor)),
        children: [
          TableRow(children: [
            const SizedBox.shrink(),
            for (var i = 0; i < count; i++)
              Padding(
                padding: const EdgeInsets.all(4),
                child: Text(l.optionN(i + 1), style: theme.textTheme.labelLarge, textAlign: TextAlign.center),
              ),
          ]),
          for (final (label, f) in rows)
            TableRow(children: [
              Padding(padding: const EdgeInsets.all(4), child: Text(label, style: theme.textTheme.labelMedium)),
              for (final e in evals)
                Padding(padding: const EdgeInsets.all(4), child: Text(cell(e, f), textAlign: TextAlign.center)),
            ]),
        ],
      ),
      for (final (i, e) in evals.indexed)
        if (e != null && !e.isValid)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              Text(l.optionN(i + 1), style: theme.textTheme.labelLarge),
              EvaluationIssues(evaluation: e),
            ]),
          ),
      const SizedBox(height: 8),
      Text(l.bonusDisclaimer, style: theme.textTheme.bodySmall),
    ]);
  }
}
