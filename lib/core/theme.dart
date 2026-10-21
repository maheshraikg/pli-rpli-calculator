import 'package:flutter/material.dart';

/// India Post-style red accent. Not the India Post logo or brand mark.
const kAccentRed = Color(0xFFC8102E);

ThemeData buildTheme(Brightness brightness) {
  final scheme = ColorScheme.fromSeed(
    seedColor: kAccentRed,
    primary: brightness == Brightness.light ? kAccentRed : null,
    brightness: brightness,
  );
  return ThemeData(
    colorScheme: scheme,
    scaffoldBackgroundColor: brightness == Brightness.light ? Colors.white : null,
    appBarTheme: AppBarTheme(
      backgroundColor: brightness == Brightness.light ? kAccentRed : null,
      foregroundColor: brightness == Brightness.light ? Colors.white : null,
    ),
  );
}
