import 'package:flutter/material.dart';

/// India Post-style red accent. Not the India Post logo or brand mark.
const kAccentRed = Color(0xFFC8102E);

/// Indian-script fonts to try when the main font lacks a glyph. Android
/// ships these, and lists them explicitly for renderers without system
/// fallback (e.g. screenshot rendering).
const kIndicFontFallback = [
  'Noto Sans Devanagari', 'Noto Sans Kannada', 'Noto Sans Tamil', 'Noto Sans Telugu',
  'Noto Sans Malayalam', 'Noto Sans Gujarati', 'Noto Sans Bengali', 'Noto Sans Gurmukhi',
  'Noto Sans Oriya', 'Noto Naskh Arabic',
];

ThemeData buildTheme(Brightness brightness) {
  final scheme = ColorScheme.fromSeed(
    seedColor: kAccentRed,
    primary: brightness == Brightness.light ? kAccentRed : null,
    brightness: brightness,
  );
  return ThemeData(
    colorScheme: scheme,
    fontFamilyFallback: kIndicFontFallback,
    scaffoldBackgroundColor: brightness == Brightness.light ? Colors.white : null,
    // Tabs sit on the red app bar in light mode.
    tabBarTheme: brightness == Brightness.light
        ? const TabBarThemeData(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.white,
          )
        : null,
    appBarTheme: AppBarTheme(
      backgroundColor: brightness == Brightness.light ? kAccentRed : null,
      foregroundColor: brightness == Brightness.light ? Colors.white : null,
    ),
  );
}
