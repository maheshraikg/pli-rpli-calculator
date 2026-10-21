import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

class SampleDataBanner extends StatelessWidget {
  const SampleDataBanner({super.key});

  @override
  Widget build(BuildContext context) => Semantics(
        liveRegion: true,
        child: Container(
          width: double.infinity,
          color: const Color(0xFF7A0A1D),
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(Icons.warning_amber_rounded, color: Color(0xFFFFD27A), size: 18),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                AppLocalizations.of(context).sampleDataBanner,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, letterSpacing: 0.4),
              ),
            ),
          ]),
        ),
      );
}
