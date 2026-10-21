import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

class SampleDataBanner extends StatelessWidget {
  const SampleDataBanner({super.key});

  @override
  Widget build(BuildContext context) => Semantics(
        liveRegion: true,
        child: Container(
          width: double.infinity,
          color: Colors.red.shade900,
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          child: Text(
            AppLocalizations.of(context).sampleDataBanner,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      );
}
