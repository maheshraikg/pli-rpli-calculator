import 'package:flutter/material.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/formatters.dart';
import '../../core/widgets/amount_field.dart';
import '../../core/widgets/data_scaffold.dart';
import '../../core/widgets/info_card.dart';
import '../../core/widgets/number_stepper.dart';
import '../../core/widgets/ui.dart';
import '../../data/data_repository.dart';
import '../../l10n/app_localizations.dart';
import '../common/plan_config_form.dart';

class ReverseScreen extends StatelessWidget {
  const ReverseScreen({super.key});

  @override
  Widget build(BuildContext context) => DataScaffold(
    title: AppLocalizations.of(context).reverseTitle,
    builder: (context, data) => _ReverseBody(data: data),
  );
}

class _ReverseBody extends StatefulWidget {
  const _ReverseBody({required this.data});

  final AppData data;

  @override
  State<_ReverseBody> createState() => _ReverseBodyState();
}

class _ReverseBodyState extends State<_ReverseBody> {
  Scheme _scheme = Scheme.pli;
  int _age = 30;
  int? _budget = 1000;
  PremiumFrequency _frequency = PremiumFrequency.monthly;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final lang = Localizations.localeOf(context).languageCode;
    final theme = Theme.of(context);
    final budget = _budget;
    final options = budget == null || budget <= 0
        ? const <AffordableOption>[]
        : affordableOptions(
            widget.data.rules,
            widget.data.tables,
            scheme: _scheme,
            entryAge: _age,
            budget: Paise.wholeRupees(budget),
            frequency: _frequency,
          );
    const gap = SizedBox(height: 16);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(l.reverseIntro),
        gap,
        SegmentedButton<Scheme>(
          segments: [for (final s in Scheme.values) ButtonSegment(value: s, label: Text(s.code))],
          selected: {_scheme},
          onSelectionChanged: (s) => setState(() => _scheme = s.single),
        ),
        gap,
        NumberStepper(
          label: l.entryAgeLabel,
          value: _age,
          min: 1,
          max: 70,
          onChanged: (v) => setState(() => _age = v),
          valueText: l.ageYears,
        ),
        gap,
        AmountField(label: l.budgetLabel, value: _budget, onChanged: (v) => setState(() => _budget = v)),
        gap,
        Wrap(
          spacing: 8,
          children: [
            for (final f in PremiumFrequency.values)
              ChoiceChip(
                label: Text(frequencyName(l, f)),
                selected: f == _frequency,
                onSelected: (_) => setState(() => _frequency = f),
              ),
          ],
        ),
        gap,
        if (budget != null && options.isEmpty) InfoCard(icon: Icons.info_outline, message: l.reverseNone),
        for (final o in options)
          Card(
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconBadge(o.quote.plan.scheme == Scheme.pli ? Icons.shield_rounded : Icons.agriculture_rounded),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(o.quote.plan.name(lang), style: theme.textTheme.titleSmall),
                        const SizedBox(height: 2),
                        Text(
                          '${columnOptionLabel(l, o.quote.plan, o.quote.column)} • '
                          '${l.premiumShort} ${formatRupees(o.quote.premium)}',
                          style: theme.textTheme.bodySmall,
                        ),
                        const SizedBox(height: 8),
                        Text(l.saShort, style: theme.textTheme.labelSmall),
                        Text(
                          formatRupees(Paise.wholeRupees(o.quote.sumAssured)),
                          style: theme.textTheme.titleLarge?.copyWith(color: theme.colorScheme.primary),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        if (options.isNotEmpty) Text(l.bonusDisclaimer, style: theme.textTheme.bodySmall),
      ],
    );
  }
}
