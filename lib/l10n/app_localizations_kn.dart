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

  @override
  String get maturityTitle => 'ಪಕ್ವತೆ ಮತ್ತು ಬೋನಸ್';

  @override
  String get eligibilityTitle => 'ಅರ್ಹತೆ ಪರಿಶೀಲನೆ';

  @override
  String get premiumTitle => 'ಪ್ರೀಮಿಯಂ ಕ್ಯಾಲ್ಕುಲೇಟರ್';

  @override
  String get schemePli => 'ಅಂಚೆ ಜೀವ ವಿಮೆ (PLI)';

  @override
  String get schemeRpli => 'ಗ್ರಾಮೀಣ ಅಂಚೆ ಜೀವ ವಿಮೆ (RPLI)';

  @override
  String get planLabel => 'ಯೋಜನೆ';

  @override
  String rulesPendingSuffix(String plan) {
    return '$plan (ನಿಯಮ ಬಾಕಿ)';
  }

  @override
  String get entryAgeLabel => 'ಪ್ರವೇಶ ವಯಸ್ಸು';

  @override
  String get childAgeLabel => 'ಮಗುವಿನ ವಯಸ್ಸು';

  @override
  String get spouseAgeLabel => 'ಸಂಗಾತಿಯ ವಯಸ್ಸು';

  @override
  String ageYears(int age) {
    return '$age ವರ್ಷ';
  }

  @override
  String get decrease => 'ಕಡಿಮೆ ಮಾಡಿ';

  @override
  String get increase => 'ಹೆಚ್ಚಿಸಿ';

  @override
  String get ageBasisNote =>
      'ಪೂರ್ಣಗೊಂಡ ವರ್ಷಗಳಲ್ಲಿ ವಯಸ್ಸು ನಮೂದಿಸಿ. ಭಾರತೀಯ ಅಂಚೆಯ ವಯಸ್ಸಿನ ನಿಯಮ ದೃಢಪಟ್ಟ ನಂತರ ಜನ್ಮ ದಿನಾಂಕದಿಂದ ವಯಸ್ಸು ಲೆಕ್ಕಹಾಕುವ ಸೌಲಭ್ಯ ಸೇರಿಸಲಾಗುವುದು.';

  @override
  String get sumAssuredLabel => 'ವಿಮಾ ಮೊತ್ತ (₹)';

  @override
  String get maturityAgeLabel => 'ಪಕ್ವತೆ ವಯಸ್ಸು';

  @override
  String get termLabel => 'ಪಾಲಿಸಿ ಅವಧಿ';

  @override
  String termYears(int years) {
    return '$years ವರ್ಷ';
  }

  @override
  String get startDateLabel => 'ಪಾಲಿಸಿ ಆರಂಭ ದಿನಾಂಕ';

  @override
  String get resultMaturityValue => 'ಪಕ್ವತೆ ಮೊತ್ತ';

  @override
  String get resultTotalBenefits => 'ಒಟ್ಟು ಪಡೆಯುವ ಲಾಭ';

  @override
  String get sumAssuredRow => 'ವಿಮಾ ಮೊತ್ತ';

  @override
  String get termRow => 'ಅವಧಿ';

  @override
  String bonusRateRow(String fy) {
    return 'ಬೋನಸ್ ದರ (ಹ.ವ. $fy)';
  }

  @override
  String bonusRateValue(int rate) {
    return 'ಪ್ರತಿ ₹1,000ಕ್ಕೆ ವರ್ಷಕ್ಕೆ ₹$rate';
  }

  @override
  String get annualBonusRow => 'ವಾರ್ಷಿಕ ಬೋನಸ್';

  @override
  String totalBonusRow(int years) {
    return 'ಒಟ್ಟು ಬೋನಸ್ ($years ವರ್ಷ)';
  }

  @override
  String get terminalBonusRow => 'ಅಂತಿಮ ಬೋನಸ್';

  @override
  String projectionNote(String fy) {
    return 'ಅವಧಿಯ ಪ್ರತಿ ವರ್ಷಕ್ಕೂ ಹ.ವ. $fy ಬೋನಸ್ ದರವೇ ಮುಂದುವರಿಯುತ್ತದೆ ಎಂದು ಊಹಿಸಲಾಗಿದೆ.';
  }

  @override
  String get timelineTitle => 'ಬದುಕುಳಿಯುವ ಲಾಭದ ವೇಳಾಪಟ್ಟಿ';

  @override
  String timelineYear(int year) {
    return '$yearನೇ ವರ್ಷ';
  }

  @override
  String get timelineSurvival => 'ಬದುಕುಳಿಯುವ ಲಾಭ';

  @override
  String get timelineMaturity => 'ಪಕ್ವತೆ: ಉಳಿದ ವಿಮಾ ಮೊತ್ತ + ಸಂಪೂರ್ಣ ಬೋನಸ್';

  @override
  String get timelineDeathNote =>
      'ಅವಧಿಯಲ್ಲಿ ಮರಣವಾದರೆ: ಈಗಾಗಲೇ ಪಾವತಿಸಿದ ಲಾಭಗಳನ್ನು ಕಡಿತಗೊಳಿಸದೆ ಸಂಪೂರ್ಣ ವಿಮಾ ಮೊತ್ತ + ಬೋನಸ್.';

  @override
  String get notAvailableTitle => 'ಇನ್ನೂ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get rulesPendingBody =>
      'ಈ ಯೋಜನೆಯ ನಿಯಮಗಳು ಭಾರತೀಯ ಅಂಚೆಯ ಅಧಿಕೃತ ಸುತ್ತೋಲೆಯಿಂದ ದೃಢಪಟ್ಟ ನಂತರ ಲೆಕ್ಕಾಚಾರ ಸೇರಿಸಲಾಗುವುದು.';

  @override
  String get premiumPendingBody =>
      'ಪ್ರೀಮಿಯಂ ಭಾರತೀಯ ಅಂಚೆಯ ಅಧಿಕೃತ ಪ್ರೀಮಿಯಂ ಕೋಷ್ಟಕಗಳಿಂದಲೇ ಬರಬೇಕು. ಅಧಿಕೃತ ಕೋಷ್ಟಕಗಳನ್ನು ಸೇರಿಸಿ ಪರಿಶೀಲಿಸಿದ ನಂತರ ಈ ಕ್ಯಾಲ್ಕುಲೇಟರ್ ಆರಂಭವಾಗುತ್ತದೆ — ಅಂದಾಜು ಪ್ರೀಮಿಯಂ ತೋರಿಸಲಾಗುವುದಿಲ್ಲ.';

  @override
  String missingBonusRate(String fy) {
    return 'ಹ.ವ. $fyಕ್ಕೆ ಘೋಷಿತ ಬೋನಸ್ ದರ ಇಲ್ಲ.';
  }

  @override
  String vEntryAge(String plan, int min, int max, int age) {
    return '$plan ಪ್ರವೇಶ ವಯಸ್ಸು $min–$max. ನಿಮ್ಮ ವಯಸ್ಸು: $age';
  }

  @override
  String vChildAge(int min, int max, int age) {
    return 'ಮಗುವಿನ ವಯಸ್ಸು $min–$max ಇರಬೇಕು. ನಮೂದಿಸಿದ್ದು: $age';
  }

  @override
  String vSpouseAge(int min, int max, int age) {
    return 'ಸಂಗಾತಿಯ ವಯಸ್ಸು $min–$max ಇರಬೇಕು. ನಮೂದಿಸಿದ್ದು: $age';
  }

  @override
  String vSaMin(String min, String sa) {
    return 'ಕನಿಷ್ಠ ವಿಮಾ ಮೊತ್ತ $min. ನಮೂದಿಸಿದ್ದು: $sa';
  }

  @override
  String vSaMax(String max, String sa) {
    return 'ಗರಿಷ್ಠ ವಿಮಾ ಮೊತ್ತ $max (ಈ ಯೋಜನೆಯ ನಿಮ್ಮ ಎಲ್ಲಾ ಪಾಲಿಸಿಗಳು ಸೇರಿ). ನಮೂದಿಸಿದ್ದು: $sa';
  }

  @override
  String vSaMultiple(String multiple) {
    return 'ವಿಮಾ ಮೊತ್ತ $multipleರ ಗುಣಕವಾಗಿರಬೇಕು';
  }

  @override
  String vMaturityNotOffered(int value, String allowed) {
    return 'ಪಕ್ವತೆ ವಯಸ್ಸು $value ಲಭ್ಯವಿಲ್ಲ. ಇವುಗಳಿಂದ ಆರಿಸಿ: $allowed';
  }

  @override
  String vCeasingNotOffered(int value, String allowed) {
    return 'ಪ್ರೀಮಿಯಂ ಪಾವತಿ ವಯಸ್ಸು $value ಲಭ್ಯವಿಲ್ಲ. ಇವುಗಳಿಂದ ಆರಿಸಿ: $allowed';
  }

  @override
  String vTermNotOffered(int value, String allowed) {
    return '$value ವರ್ಷದ ಅವಧಿ ಲಭ್ಯವಿಲ್ಲ. ಇವುಗಳಿಂದ ಆರಿಸಿ: $allowed';
  }

  @override
  String vNotAfterEntry(int value, int age) {
    return 'ಪಕ್ವತೆ ವಯಸ್ಸು $value ಪ್ರವೇಶ ವಯಸ್ಸಿಗಿಂತ ($age) ಹೆಚ್ಚಿರಬೇಕು.';
  }

  @override
  String vTermRange(int min, int max, int term) {
    return 'ಅವಧಿ $min–$max ವರ್ಷ ಇರಬೇಕು. ನಮೂದಿಸಿದ್ದು: $term';
  }

  @override
  String vParentAge(int max, int age) {
    return 'ಪೋಷಕರ ವಯಸ್ಸು $max ಅಥವಾ ಕಡಿಮೆ ಇರಬೇಕು. ನಮೂದಿಸಿದ್ದು: $age';
  }

  @override
  String vTooManyChildren(int max) {
    return 'ಗರಿಷ್ಠ $max ಮಕ್ಕಳಿಗೆ ಮಾತ್ರ ವಿಮೆ ಸಾಧ್ಯ.';
  }

  @override
  String vChildSaCap(String cap, String sa) {
    return 'ಈ ಮಗುವಿಗೆ ಗರಿಷ್ಠ ವಿಮಾ ಮೊತ್ತ $cap. ನಮೂದಿಸಿದ್ದು: $sa';
  }

  @override
  String get vMissing => 'ದಯವಿಟ್ಟು ಎಲ್ಲಾ ವಿವರಗಳನ್ನು ಭರ್ತಿ ಮಾಡಿ.';

  @override
  String get eligibilityIntro =>
      'ವ್ಯಕ್ತಿಗೆ ಅನ್ವಯಿಸುವ ಎಲ್ಲವನ್ನೂ ಆರಿಸಿ, ನಂತರ ವಯಸ್ಸು ನಮೂದಿಸಿ.';

  @override
  String get groupsPli => 'PLI — ಇವುಗಳಲ್ಲಿ ಯಾವುದಾದರೂ ಒಂದು';

  @override
  String get groupsRpli => 'RPLI — ಇವುಗಳಲ್ಲಿ ಯಾವುದಾದರೂ ಒಂದು';

  @override
  String get group_central_state_govt => 'ಕೇಂದ್ರ / ರಾಜ್ಯ ಸರ್ಕಾರಿ ನೌಕರ';

  @override
  String get group_defence_paramilitary => 'ರಕ್ಷಣಾ / ಅರೆಸೇನಾ ಪಡೆ';

  @override
  String get group_psu => 'ಸಾರ್ವಜನಿಕ ವಲಯದ ಉದ್ಯಮ';

  @override
  String get group_banks => 'ಬ್ಯಾಂಕ್ ನೌಕರ';

  @override
  String get group_local_bodies => 'ಸ್ಥಳೀಯ ಸಂಸ್ಥೆ ನೌಕರ';

  @override
  String get group_educational_institutions =>
      'ಶಿಕ್ಷಣ ಸಂಸ್ಥೆ (ಮಾನ್ಯತೆ ಪಡೆದ ಖಾಸಗಿ ಸೇರಿ)';

  @override
  String get group_listed_companies => 'ಪಟ್ಟಿಮಾಡಿದ ಕಂಪನಿ ನೌಕರ';

  @override
  String get group_professionals => 'ವೃತ್ತಿಪರ (ವೈದ್ಯ, ಎಂಜಿನಿಯರ್, ಸಿಎ, ವಕೀಲ…)';

  @override
  String get group_graduates_diploma_holders =>
      'ಪದವೀಧರ ಅಥವಾ ಡಿಪ್ಲೊಮಾ ಹೊಂದಿರುವವರು';

  @override
  String get group_rural_resident => 'ಗ್ರಾಮೀಣ ಪ್ರದೇಶದ ನಿವಾಸಿ';

  @override
  String get group_scheduled_bank_savings_account_holder =>
      'ಅನುಸೂಚಿತ ಬ್ಯಾಂಕ್‌ನಲ್ಲಿ ಉಳಿತಾಯ ಖಾತೆದಾರ';

  @override
  String get ageLabel => 'ವಯಸ್ಸು';

  @override
  String get eligibleFor => 'ಅರ್ಹತೆ ಇದೆ';

  @override
  String plansAtAge(int age) {
    return '$age ವಯಸ್ಸಿನಲ್ಲಿ ಲಭ್ಯವಿರುವ ಯೋಜನೆಗಳು';
  }

  @override
  String get childPlansTitle => 'ಮಕ್ಕಳ ಪಾಲಿಸಿಗಳು (ನಿಮ್ಮ ಮಕ್ಕಳಿಗಾಗಿ)';

  @override
  String get selectGroupPrompt =>
      'ಅರ್ಹ ಯೋಜನೆಗಳನ್ನು ನೋಡಲು ಮೇಲಿನವುಗಳಲ್ಲಿ ಕನಿಷ್ಠ ಒಂದನ್ನು ಆರಿಸಿ.';

  @override
  String noPlansAtAge(int age) {
    return '$age ವಯಸ್ಸಿನಲ್ಲಿ ಯಾವುದೇ ಯೋಜನೆಗೆ ಪ್ರವೇಶವಿಲ್ಲ.';
  }

  @override
  String get eligibilityNote =>
      'ಅಂತಿಮ ಸ್ವೀಕಾರವು ಭಾರತೀಯ ಅಂಚೆಯ ವೈದ್ಯಕೀಯ ಪರಿಶೀಲನೆ ಮತ್ತು ದಾಖಲೆಗಳಿಗೆ ಒಳಪಟ್ಟಿರುತ್ತದೆ.';

  @override
  String get languageLabel => 'ಭಾಷೆ';

  @override
  String get systemLanguage => 'ಸಾಧನದ ಭಾಷೆ';
}
