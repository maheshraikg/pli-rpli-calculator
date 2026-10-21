import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../l10n/app_localizations.dart';
import '../locale.dart';

class LanguageButton extends ConsumerWidget {
  const LanguageButton({super.key});

  static const _system = '';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final current = ref.watch(localeProvider)?.languageCode ?? _system;
    return PopupMenuButton<String>(
      icon: const Icon(Icons.translate),
      tooltip: l.languageLabel,
      initialValue: current,
      onSelected: (code) => ref.read(localeProvider.notifier).set(code == _system ? null : Locale(code)),
      itemBuilder: (context) => [
        PopupMenuItem(value: _system, child: Text(l.systemLanguage)),
        for (final MapEntry(key: code, value: name) in kAppLanguages.entries)
          PopupMenuItem(value: code, child: Text(name)),
      ],
    );
  }
}
