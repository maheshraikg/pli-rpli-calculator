import 'package:flutter/material.dart';

import '../../core/widgets/data_scaffold.dart';
import '../../core/widgets/info_card.dart';
import '../../l10n/app_localizations.dart';

/// Placeholder until official premium tables are bundled and verified.
class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return DataScaffold(
      title: l.premiumTitle,
      builder: (context, data) => ListView(padding: const EdgeInsets.all(16), children: [
        InfoCard(icon: Icons.table_chart_outlined, title: l.notAvailableTitle, message: l.premiumPendingBody),
      ]),
    );
  }
}
