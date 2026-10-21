import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

class RatesFooter extends StatelessWidget {
  const RatesFooter({super.key, required this.financialYear});

  final String financialYear;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          AppLocalizations.of(context).ratesFooter(financialYear),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      );
}
