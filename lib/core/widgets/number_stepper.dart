import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

/// Large −/+ control for small whole numbers such as age or term.
class NumberStepper extends StatelessWidget {
  const NumberStepper({
    super.key,
    required this.label,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    required this.valueText,
  });

  final String label;
  final int value;
  final int min;
  final int max;
  final ValueChanged<int> onChanged;
  final String Function(int) valueText;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return Row(children: [
      Expanded(child: Text(label, style: theme.textTheme.titleMedium)),
      IconButton.outlined(
        tooltip: l.decrease,
        onPressed: value > min ? () => onChanged(value - 1) : null,
        icon: const Icon(Icons.remove),
      ),
      SizedBox(
        width: 96,
        child: Text(valueText(value), textAlign: TextAlign.center, style: theme.textTheme.titleLarge),
      ),
      IconButton.outlined(
        tooltip: l.increase,
        onPressed: value < max ? () => onChanged(value + 1) : null,
        icon: const Icon(Icons.add),
      ),
    ]);
  }
}
