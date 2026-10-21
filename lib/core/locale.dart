import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// App languages with their names written in that language.
const kAppLanguages = <String, String>{
  'en': 'English',
  'hi': 'हिन्दी',
  'kn': 'ಕನ್ನಡ',
  'ta': 'தமிழ்',
  'te': 'తెలుగు',
  'ml': 'മലയാളം',
  'mr': 'मराठी',
  'gu': 'ગુજરાતી',
  'bn': 'বাংলা',
  'pa': 'ਪੰਜਾਬੀ',
  'or': 'ଓଡ଼ିଆ',
  'as': 'অসমীয়া',
  'ur': 'اردو',
};

/// Chosen app language; null follows the device language.
/// In-memory for now — persisted once local storage arrives (Phase 2).
class LocaleSetting extends Notifier<Locale?> {
  @override
  Locale? build() => null;

  void set(Locale? locale) => state = locale;
}

final localeProvider = NotifierProvider<LocaleSetting, Locale?>(LocaleSetting.new);
