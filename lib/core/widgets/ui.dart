import 'package:flutter/material.dart';

import '../theme.dart';
import '../app_icons.dart';

/// Tinted rounded square holding an icon.
class IconBadge extends StatelessWidget {
  const IconBadge(this.icon, {super.key, this.color, this.size = 44});

  final IconData icon;
  final Color? color;
  final double size;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final base = color ?? Theme.of(context).colorScheme.primary;
    // Lift saturated colours so they stay readable on dark surfaces.
    final c = dark ? Color.lerp(base, Colors.white, 0.45)! : base;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: c.withValues(alpha: dark ? 0.18 : 0.12), borderRadius: BorderRadius.circular(size * 0.32)),
      child: AppIcon(icon, color: c, size: size * 0.6),
    );
  }
}

/// White card with an icon + title header, for grouping form fields or results.
class SectionCard extends StatelessWidget {
  const SectionCard({super.key, required this.child, this.title, this.icon, this.padding = const EdgeInsets.all(16)});

  final String? title;
  final IconData? icon;
  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: padding,
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          if (title != null) ...[
            Row(children: [
              if (icon != null) ...[IconBadge(icon!, size: 32), const SizedBox(width: 10)],
              Expanded(child: Text(title!, style: theme.textTheme.titleMedium)),
            ]),
            const SizedBox(height: 14),
          ],
          child,
        ]),
      ),
    );
  }
}

/// Headline amount on the red gradient, with optional detail lines.
class HeroAmountCard extends StatelessWidget {
  const HeroAmountCard({
    super.key,
    required this.label,
    required this.amount,
    this.caption,
    this.details = const [],
    this.icon = AppIcons.currencyInr,
  });

  final String label;
  final String amount;
  final String? caption;
  final List<(String, String)> details;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    const white = Colors.white;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        gradient: kHeroGradient,
        borderRadius: BorderRadius.circular(kRadius),
        boxShadow: [BoxShadow(color: kAccentRed.withValues(alpha: 0.14), blurRadius: 12, offset: const Offset(0, 4))],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Row(children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(color: white.withValues(alpha: 0.18), borderRadius: BorderRadius.circular(10)),
            child: AppIcon(icon, color: white, size: 18),
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(label, style: text.titleSmall?.copyWith(color: white.withValues(alpha: 0.9)))),
        ]),
        const SizedBox(height: 10),
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(amount, style: text.displaySmall?.copyWith(color: white, fontWeight: FontWeight.w800)),
        ),
        if (caption != null)
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(caption!, style: text.bodyMedium?.copyWith(color: white.withValues(alpha: 0.85))),
          ),
        if (details.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Divider(height: 1, color: white.withValues(alpha: 0.25)),
          ),
          for (final (k, v) in details)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Expanded(child: Text(k, style: text.bodyMedium?.copyWith(color: white.withValues(alpha: 0.85)))),
                const SizedBox(width: 12),
                Flexible(
                  child: Text(v,
                      textAlign: TextAlign.end, style: text.titleSmall?.copyWith(color: white, fontWeight: FontWeight.w700)),
                ),
              ]),
            ),
        ],
      ]),
    );
  }
}

/// Small figure tile; lay out several with [StatGrid].
class StatTile extends StatelessWidget {
  const StatTile({super.key, required this.icon, required this.label, required this.value, this.color});

  final IconData icon;
  final String label;
  final String value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          IconBadge(icon, color: color, size: 34),
          const SizedBox(height: 10),
          Text(label, style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurfaceVariant)),
          const SizedBox(height: 2),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(value, style: theme.textTheme.titleLarge),
          ),
        ]),
      ),
    );
  }
}

/// Two tiles per row.
class StatGrid extends StatelessWidget {
  const StatGrid({super.key, required this.tiles});

  final List<Widget> tiles;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Column(children: [
          for (var i = 0; i < tiles.length; i += 2)
            Padding(
              padding: EdgeInsets.only(top: i == 0 ? 0 : 10),
              child: IntrinsicHeight(
                child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                  Expanded(child: tiles[i]),
                  // A lone last tile spans the full width.
                  if (i + 1 < tiles.length) ...[const SizedBox(width: 10), Expanded(child: tiles[i + 1])],
                ]),
              ),
            ),
        ]),
      );
}

/// Section heading used between groups on a page.
class SectionHeading extends StatelessWidget {
  const SectionHeading(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.fromLTRB(4, 18, 4, 8),
        child: Text(text, style: Theme.of(context).textTheme.titleMedium),
      );
}
