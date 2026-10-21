import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/data_scaffold.dart';
import '../../l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final tiles = [
      (Icons.calculate, l.tilePremium, '/premium'),
      (Icons.savings, l.tileMaturity, '/maturity'),
      (Icons.compare_arrows, l.tileCompare, null),
      (Icons.verified_user, l.tileEligibility, '/eligibility'),
      (Icons.folder_shared, l.tileMyPolicies, null),
      (Icons.picture_as_pdf, l.tileQuotation, null),
    ];
    return DataScaffold(
      title: l.appTitle,
      builder: (context, data) => GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        children: [
          for (final (icon, label, route) in tiles)
            Card.outlined(
              child: InkWell(
                onTap: route != null
                    ? () => context.go(route)
                    : () => ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(SnackBar(content: Text(l.comingSoon))),
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(icon, size: 40, color: Theme.of(context).colorScheme.primary),
                  const SizedBox(height: 8),
                  Text(label, style: Theme.of(context).textTheme.titleMedium, textAlign: TextAlign.center),
                ]),
              ),
            ),
        ],
      ),
    );
  }
}
