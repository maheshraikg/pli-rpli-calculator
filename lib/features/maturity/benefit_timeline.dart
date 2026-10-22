import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/formatters.dart';
import '../../l10n/app_localizations.dart';

/// Vertical timeline of survival benefits and maturity for money-back plans.
class BenefitTimeline extends StatelessWidget {
  const BenefitTimeline({super.key, required this.payments});

  final List<BenefitPayment> payments;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final dateFormat = DateFormat.yMMMd(Localizations.localeOf(context).toLanguageTag());
    return Column(
      children: [
        for (final (i, p) in payments.indexed)
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 32,
                  child: Column(
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        margin: const EdgeInsets.only(top: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: p.kind == PaymentKind.maturity
                              ? theme.colorScheme.primary
                              : theme.colorScheme.secondary,
                        ),
                      ),
                      if (i < payments.length - 1)
                        Expanded(child: Container(width: 2, color: theme.colorScheme.outlineVariant)),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          [l.timelineYear(p.policyYear), if (p.date != null) dateFormat.format(p.date!)].join(' • '),
                          style: theme.textTheme.labelLarge,
                        ),
                        Text(formatRupees(p.amount), style: theme.textTheme.titleLarge),
                        Text(p.kind == PaymentKind.maturity ? l.timelineMaturity : l.timelineSurvival),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
