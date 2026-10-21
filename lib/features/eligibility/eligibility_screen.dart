import 'package:flutter/material.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/messages.dart';
import '../../core/widgets/data_scaffold.dart';
import '../../core/widgets/info_card.dart';
import '../../core/widgets/number_stepper.dart';
import '../../l10n/app_localizations.dart';

class EligibilityScreen extends StatelessWidget {
  const EligibilityScreen({super.key});

  @override
  Widget build(BuildContext context) => DataScaffold(
        title: AppLocalizations.of(context).eligibilityTitle,
        builder: (context, data) => _EligibilityBody(rules: data.rules),
      );
}

class _EligibilityBody extends StatefulWidget {
  const _EligibilityBody({required this.rules});

  final RuleSet rules;

  @override
  State<_EligibilityBody> createState() => _EligibilityBodyState();
}

class _EligibilityBodyState extends State<_EligibilityBody> {
  final _groups = <String>{};
  int _age = 30;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final lang = Localizations.localeOf(context).languageCode;
    final theme = Theme.of(context);
    final rules = widget.rules;
    final result = checkEligibility(rules, groups: _groups, age: _age);

    Widget groupSection(Scheme scheme, String title) => Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title, style: theme.textTheme.titleMedium),
          const SizedBox(height: 8),
          Wrap(spacing: 8, runSpacing: 4, children: [
            for (final g in rules.eligibilityGroups[scheme]!)
              FilterChip(
                label: Text(groupLabel(l, g)),
                selected: _groups.contains(g),
                onSelected: (on) => setState(() => on ? _groups.add(g) : _groups.remove(g)),
              ),
          ]),
          const SizedBox(height: 16),
        ]);

    Widget planList(List<PlanRule> plans) => Column(children: [
          for (final p in plans)
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.check_circle_outline),
              title: Text(p.name(lang)),
              subtitle: Text(schemeName(l, p.scheme)),
            ),
        ]);

    return ListView(padding: const EdgeInsets.all(16), children: [
      Text(l.eligibilityIntro),
      const SizedBox(height: 16),
      groupSection(Scheme.pli, l.groupsPli),
      groupSection(Scheme.rpli, l.groupsRpli),
      NumberStepper(
        label: l.ageLabel,
        value: _age,
        min: 1,
        max: 70,
        onChanged: (v) => setState(() => _age = v),
        valueText: l.ageYears,
      ),
      const Divider(height: 32),
      if (_groups.isEmpty)
        InfoCard(icon: Icons.info_outline, message: l.selectGroupPrompt)
      else ...[
        Text(l.eligibleFor, style: theme.textTheme.titleMedium),
        const SizedBox(height: 8),
        Wrap(spacing: 8, children: [
          for (final s in result.eligibleSchemes)
            Chip(
              avatar: const Icon(Icons.verified, size: 18),
              label: Text(schemeName(l, s)),
            ),
        ]),
        const SizedBox(height: 16),
        Text(l.plansAtAge(_age), style: theme.textTheme.titleMedium),
        if (result.plansForSelf.isEmpty)
          Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: Text(l.noPlansAtAge(_age)))
        else
          planList(result.plansForSelf),
        if (result.childPlans.isNotEmpty) ...[
          const SizedBox(height: 8),
          Text(l.childPlansTitle, style: theme.textTheme.titleMedium),
          planList(result.childPlans),
        ],
        const SizedBox(height: 8),
        Text(l.eligibilityNote, style: theme.textTheme.bodySmall),
      ],
    ]);
  }
}
