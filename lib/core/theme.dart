import 'package:flutter/material.dart';

/// India Post-style red accent. Not the India Post logo or brand mark.
const kAccentRed = Color(0xFFC8102E);
const kAccentRedDark = Color(0xFF8E0B21);

/// Warm gold used sparingly for highlights (returns, badges).
const kAccentGold = Color(0xFFE8A317);

/// Indian-script fonts to try when the main font lacks a glyph. Android
/// ships these, and lists them explicitly for renderers without system
/// fallback (e.g. screenshot rendering).
const kIndicFontFallback = [
  'Noto Sans Devanagari', 'Noto Sans Kannada', 'Noto Sans Tamil', 'Noto Sans Telugu',
  'Noto Sans Malayalam', 'Noto Sans Gujarati', 'Noto Sans Bengali', 'Noto Sans Gurmukhi',
  'Noto Sans Oriya', 'Noto Naskh Arabic',
];

/// Red gradient for headers and headline result cards.
const kHeroGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFD7193A), kAccentRedDark],
);

const kRadius = 20.0;

ThemeData buildTheme(Brightness brightness) {
  final light = brightness == Brightness.light;
  final scheme = ColorScheme.fromSeed(
    seedColor: kAccentRed,
    primary: light ? kAccentRed : null,
    brightness: brightness,
  );
  final base = ThemeData(colorScheme: scheme, brightness: brightness);
  final text = base.textTheme;
  final fieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(14),
    borderSide: BorderSide(color: scheme.outlineVariant),
  );

  return base.copyWith(
    scaffoldBackgroundColor: light ? const Color(0xFFF6F3F3) : scheme.surface,
    textTheme: text.copyWith(
      displaySmall: text.displaySmall?.copyWith(fontWeight: FontWeight.w700, letterSpacing: -0.5),
      headlineSmall: text.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
      titleLarge: text.titleLarge?.copyWith(fontWeight: FontWeight.w700),
      titleMedium: text.titleMedium?.copyWith(fontWeight: FontWeight.w600),
      labelLarge: text.labelLarge?.copyWith(fontWeight: FontWeight.w600),
    ).apply(fontFamilyFallback: kIndicFontFallback),
    appBarTheme: AppBarTheme(
      backgroundColor: light ? kAccentRed : scheme.surface,
      foregroundColor: light ? Colors.white : scheme.onSurface,
      elevation: 0,
      scrolledUnderElevation: 0,
      titleTextStyle: text.titleLarge?.copyWith(
        color: light ? Colors.white : scheme.onSurface,
        fontWeight: FontWeight.w700,
        fontFamilyFallback: kIndicFontFallback,
      ),
    ),
    // Tabs sit on the red app bar in light mode.
    tabBarTheme: light
        ? const TabBarThemeData(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.white,
            dividerColor: Colors.transparent,
          )
        : null,
    cardTheme: CardThemeData(
      elevation: 0,
      color: light ? Colors.white : scheme.surfaceContainer,
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kRadius),
        side: BorderSide(color: light ? const Color(0xFFEDE4E5) : scheme.outlineVariant),
      ),
      clipBehavior: Clip.antiAlias,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: light ? Colors.white : scheme.surfaceContainerHigh,
      border: fieldBorder,
      enabledBorder: fieldBorder,
      focusedBorder: fieldBorder.copyWith(borderSide: BorderSide(color: scheme.primary, width: 2)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    ),
    chipTheme: base.chipTheme.copyWith(
      shape: const StadiumBorder(),
      side: BorderSide(color: scheme.outlineVariant),
      backgroundColor: light ? Colors.white : null,
      selectedColor: scheme.primaryContainer,
      labelStyle: text.labelLarge?.copyWith(fontFamilyFallback: kIndicFontFallback),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
    ),
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: ButtonStyle(
        visualDensity: VisualDensity.standard,
        textStyle: WidgetStatePropertyAll(text.labelLarge),
        backgroundColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? scheme.primary : (light ? Colors.white : null),
        ),
        foregroundColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? scheme.onPrimary : scheme.onSurface,
        ),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        minimumSize: const Size.fromHeight(52),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        textStyle: text.titleMedium?.copyWith(fontWeight: FontWeight.w600),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size.fromHeight(52),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    ),
    expansionTileTheme: const ExpansionTileThemeData(shape: Border(), collapsedShape: Border()),
    dividerTheme: DividerThemeData(color: scheme.outlineVariant.withValues(alpha: 0.6), space: 24),
    listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.symmetric(horizontal: 16)),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
    ),
  );
}
