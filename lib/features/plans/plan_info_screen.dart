import 'package:flutter/material.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/formatters.dart';
import '../../core/messages.dart';
import '../../core/widgets/data_scaffold.dart';
import '../../l10n/app_localizations.dart';

String _rs(int rupees) => formatRupees(Paise.wholeRupees(rupees));

/// Facts about one plan, all taken from the rules data.
List<String> planFacts(AppLocalizations l, RuleSet rules, PlanRule plan) {
  final facts = <String>[];
  final entry = plan.entryAge;
  if (entry != null) facts.add(l.entryAgeInfo(entry.min, entry.max));
  if (plan.maturityAges.isNotEmpty) facts.add(l.maturityAgesInfo(plan.maturityAges.join(', ')));
  if (plan.premiumCeasingAges.isNotEmpty) {
    facts.add(l.ceasingAgesInfo(plan.premiumCeasingAges.join(', '), plan.wholeLifeMaturityAge ?? 0));
  }
  for (final t in plan.aeaTerms) {
    facts.add('${l.termsInfo('${t.years}')} • ${l.entryAgeInfo(t.entryAge.min, t.entryAge.max)}');
    facts.add(
      l.survivalInfo(
        [
          for (final b in t.survivalBenefits) l.survivalItem(b.percentOfSA, b.year),
          l.survivalItem(t.maturityPercentOfSA, t.years),
        ].join(', '),
      ),
    );
  }
  final joint = plan.jointLife;
  if (joint != null) {
    facts.add(
      l.jointInfo(joint.entryAgeEachSpouse.min, joint.entryAgeEachSpouse.max, joint.termYears.min, joint.termYears.max),
    );
  }
  final child = plan.childPlan;
  if (child != null) {
    facts.add(
      l.childInfo(
        child.childAge.min,
        child.childAge.max,
        child.parentMaxAge,
        child.maxChildren,
        _rs(child.sumAssuredMax),
      ),
    );
  } else {
    final limit = rules.sumAssuredLimits[plan.scheme]!;
    facts.add(l.saLimitInfo(_rs(limit.min), _rs(limit.max)));
  }
  final conversion = plan.raw['conversion'];
  if (conversion is Map && conversion['earliestAfterYears'] is int) {
    facts.add(l.conversionInfo(conversion['earliestAfterYears'] as int));
  }
  final wlaConversion = plan.raw['wlaConversionMaxAge'];
  if (wlaConversion is int) facts.add(l.wlaConversionInfo(wlaConversion));
  facts.add(plan.loanAfterYears == null ? l.noLoanInfo : l.loanInfo(plan.loanAfterYears!));
  facts.add(plan.surrenderAfterYears == null ? l.noSurrenderInfo : l.surrenderInfo(plan.surrenderAfterYears!));
  if (plan.surrenderAfterYears != null) facts.add(l.surrenderBonusInfo);
  final cls = plan.type == PlanType.cwla ? 'CWLA_BEFORE_CONVERSION' : plan.bonusClass;
  final rate = rules.bonusRatesPer1000[plan.scheme]?[rules.financialYear]?[cls];
  if (rate != null) facts.add(l.bonusInfo(rules.financialYear, rate));
  return facts;
}

class PlanInfoScreen extends StatelessWidget {
  const PlanInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final lang = Localizations.localeOf(context).languageCode;
    final theme = Theme.of(context);
    return DataScaffold(
      title: l.planInfoTitle,
      builder: (context, data) => ListView(
        padding: const EdgeInsets.all(16),
        children: [
          for (final scheme in Scheme.values) ...[
            Text(schemeName(l, scheme), style: theme.textTheme.titleLarge),
            for (final plan in data.rules.plansFor(scheme))
              Card(
                child: ExpansionTile(
                  title: Text(plan.name(lang)),
                  childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (final f in planFacts(l, data.rules, plan))
                      Padding(padding: const EdgeInsets.symmetric(vertical: 2), child: Text('• $f')),
                  ],
                ),
              ),
            const SizedBox(height: 16),
          ],
          Text(l.faqTitle, style: theme.textTheme.titleLarge),
          for (final (q, a) in [
            (l.faq1q, l.faq1a),
            (l.faq2q, l.faq2a),
            (l.faq3q, l.faq3a),
            (l.faq4q, l.faq4a),
            (l.faq5q, l.faq5a),
          ])
            ExpansionTile(
              title: Text(q),
              childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(a)],
            ),
        ],
      ),
    );
  }
}
