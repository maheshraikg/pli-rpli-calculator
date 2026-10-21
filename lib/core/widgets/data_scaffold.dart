import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/data_repository.dart';
import '../../l10n/app_localizations.dart';
import 'language_button.dart';
import 'rates_footer.dart';
import 'sample_data_banner.dart';

/// Scaffold used by every screen: sample-data banner (when applicable) on
/// top and the rate-year footer at the bottom.
class DataScaffold extends ConsumerWidget {
  const DataScaffold({super.key, required this.title, required this.builder});

  final String title;
  final Widget Function(BuildContext context, AppData data) builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(appDataProvider);
    return Scaffold(
      appBar: AppBar(title: Text(title), actions: const [LanguageButton()]),
      body: switch (data) {
        AsyncData(:final value) => Column(children: [
            if (value.usesSampleData) const SampleDataBanner(),
            Expanded(child: builder(context, value)),
            RatesFooter(financialYear: value.rules.financialYear),
          ]),
        AsyncError(:final error) => Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(AppLocalizations.of(context).dataLoadError('$error')),
            ),
          ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
