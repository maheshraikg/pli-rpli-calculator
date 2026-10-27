import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/storage.dart';

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

/// Chosen app language, saved on the device; null follows the device.
class LocaleSetting extends Notifier<Locale?> {
  @override
  Locale? build() {
    final code = ref.read(settingsStoreProvider).languageCode;
    return code == null || !kAppLanguages.containsKey(code) ? null : Locale(code);
  }

  void set(Locale? locale) {
    state = locale;
    ref.read(settingsStoreProvider).setLanguageCode(locale?.languageCode);
  }
}

final localeProvider = NotifierProvider<LocaleSetting, Locale?>(LocaleSetting.new);
