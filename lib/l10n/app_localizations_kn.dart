// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appTitle => 'ಪಿಎಲ್‌ಐ ಸಹಾಯಕ';

  @override
  String get tilePremium => 'ಪ್ರೀಮಿಯಂ';

  @override
  String get tileMaturity => 'ಪಕ್ವತೆ ಮೊತ್ತ';

  @override
  String get tileCompare => 'ಹೋಲಿಕೆ';

  @override
  String get tileEligibility => 'ಅರ್ಹತೆ';

  @override
  String get tileMyPolicies => 'ನನ್ನ ಪಾಲಿಸಿಗಳು';

  @override
  String get tileQuotation => 'ಉಲ್ಲೇಖ ಪತ್ರ';

  @override
  String get comingSoon => 'ಶೀಘ್ರದಲ್ಲೇ';

  @override
  String get sampleDataBanner => 'ಮಾದರಿ ದತ್ತಾಂಶ – ಅಧಿಕೃತವಲ್ಲ';

  @override
  String ratesFooter(String financialYear) {
    return 'ದರಗಳು ಹಣಕಾಸು ವರ್ಷ $financialYear • ಮೂಲ: ಭಾರತೀಯ ಅಂಚೆ';
  }

  @override
  String get bonusDisclaimer =>
      'ಬೋನಸ್ ದರಗಳನ್ನು ಪ್ರತಿ ವರ್ಷ ಘೋಷಿಸಲಾಗುತ್ತದೆ ಮತ್ತು ಭವಿಷ್ಯಕ್ಕೆ ಖಾತರಿಯಿಲ್ಲ. ಅಂತಿಮ ಮೊತ್ತ ಭಾರತೀಯ ಅಂಚೆ ಪ್ರಕಾರ.';

  @override
  String get independentDisclaimerTitle => 'ಪ್ರಾರಂಭಿಸುವ ಮೊದಲು';

  @override
  String get independentDisclaimer =>
      'ಇದು ಸ್ವತಂತ್ರ ಕ್ಯಾಲ್ಕುಲೇಟರ್, ಭಾರತೀಯ ಅಂಚೆಯ ಅಧಿಕೃತ ಆ್ಯಪ್ ಅಲ್ಲ. ಎಲ್ಲಾ ಲೆಕ್ಕಾಚಾರಗಳು ನಿಮ್ಮ ಫೋನ್‌ನಲ್ಲೇ ನಡೆಯುತ್ತವೆ; ಯಾವುದೇ ದತ್ತಾಂಶ ಸಂಗ್ರಹಿಸಲಾಗುವುದಿಲ್ಲ.';

  @override
  String get understood => 'ಅರ್ಥವಾಯಿತು';

  @override
  String dataLoadError(String error) {
    return 'ದರ ದತ್ತಾಂಶ ಲೋಡ್ ಆಗಲಿಲ್ಲ: $error';
  }
}
