import 'package:flutter/material.dart';
import '../app_icons.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.icon, required this.message, this.title, this.color});

  final IconData icon;
  final String? title;
  final String message;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card.filled(
      color: color ?? theme.colorScheme.surfaceContainerHighest,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AppIcon(icon),
          const SizedBox(width: 12),
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              if (title != null) Text(title!, style: theme.textTheme.titleMedium),
              Text(message),
            ]),
          ),
        ]),
      ),
    );
  }
}
