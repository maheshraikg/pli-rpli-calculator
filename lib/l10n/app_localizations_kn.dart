// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appTitle => 'PLI & RPLI ಕ್ಯಾಲ್ಕುಲೇಟರ್';

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

  @override
  String get tileAfford => 'ಎಷ್ಟು ಸಾಧ್ಯ';

  @override
  String get tileTools => 'ಪಾಲಿಸಿ ಸಾಧನಗಳು';

  @override
  String get tilePlans => 'ಯೋಜನೆಗಳು';

  @override
  String get tileAbout => 'ಕುರಿತು';

  @override
  String get dobLabel => 'ಜನ್ಮ ದಿನಾಂಕ';

  @override
  String get useAgeInstead => 'ಬದಲಿಗೆ ವಯಸ್ಸು ನಮೂದಿಸಿ';

  @override
  String get useDobInstead => 'ಜನ್ಮ ದಿನಾಂಕ ನಮೂದಿಸಿ';

  @override
  String ageFromDobNearest(int age) {
    return 'ಆರಂಭ ದಿನಾಂಕದಂದು ಪ್ರವೇಶ ವಯಸ್ಸು: $age (ಹತ್ತಿರದ ಜನ್ಮದಿನದ ವಯಸ್ಸು)';
  }

  @override
  String ageFromDobLast(int age) {
    return 'ಆರಂಭ ದಿನಾಂಕದಂದು ಪ್ರವೇಶ ವಯಸ್ಸು: $age (ಕೊನೆಯ ಜನ್ಮದಿನದ ವಯಸ್ಸು)';
  }

  @override
  String get premiumCeasingAgeLabel => 'ಪ್ರೀಮಿಯಂ ಪಾವತಿ ವಯಸ್ಸು';

  @override
  String get frequencyLabel => 'ಪಾವತಿ ಆವರ್ತನ';

  @override
  String get freqMonthly => 'ಮಾಸಿಕ';

  @override
  String get freqQuarterly => 'ತ್ರೈಮಾಸಿಕ';

  @override
  String get freqHalfYearly => 'ಅರ್ಧವಾರ್ಷಿಕ';

  @override
  String get freqYearly => 'ವಾರ್ಷಿಕ';

  @override
  String get premiumPerInstalment => 'ಪ್ರತಿ ಕಂತಿನ ಪ್ರೀಮಿಯಂ';

  @override
  String get tablePremiumRow => 'ಕೋಷ್ಟಕ ಪ್ರೀಮಿಯಂ';

  @override
  String get saRebateRow => 'ವಿಮಾ ಮೊತ್ತ ರಿಯಾಯಿತಿ';

  @override
  String totalPremiumRow(int count) {
    return 'ಒಟ್ಟು ಪ್ರೀಮಿಯಂ ($count ಕಂತುಗಳು)';
  }

  @override
  String get payingTermRow => 'ಪ್ರೀಮಿಯಂ ಪಾವತಿ ಅವಧಿ';

  @override
  String get returnRow => 'ಪರಿಣಾಮಕಾರಿ ಲಾಭ (XIRR)';

  @override
  String returnValue(String percent) {
    return 'ವರ್ಷಕ್ಕೆ $percent%';
  }

  @override
  String get lifeCoverRow => 'ಜೀವ ವಿಮಾ ರಕ್ಷಣೆ';

  @override
  String get allFrequenciesTitle => 'ಎಲ್ಲಾ ಪಾವತಿ ಆವರ್ತನಗಳು';

  @override
  String get notInTable => 'ಅಧಿಕೃತ ಕೋಷ್ಟಕದಲ್ಲಿ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get noTableForPlan => 'ಈ ಯೋಜನೆಯ ಪ್ರೀಮಿಯಂ ಕೋಷ್ಟಕ ಇನ್ನೂ ಸೇರಿಸಿಲ್ಲ.';

  @override
  String get illustrationTitle => 'ವರ್ಷವಾರು ಲಾಭ ವಿವರ';

  @override
  String get colYear => 'ವರ್ಷ';

  @override
  String get colPremiumsPaid => 'ಪಾವತಿಸಿದ ಪ್ರೀಮಿಯಂ';

  @override
  String get colBonus => 'ಬೋನಸ್';

  @override
  String get colLifeCover => 'ಜೀವ ರಕ್ಷಣೆ';

  @override
  String get makeQuotation => 'ಉಲ್ಲೇಖ ಪತ್ರ ತಯಾರಿಸಿ';

  @override
  String get gstNote =>
      'ಜಿಎಸ್‌ಟಿ: 22 ಸೆಪ್ಟೆಂಬರ್ 2025 ಅಥವಾ ನಂತರ ಪಾವತಿಸಿದ ವೈಯಕ್ತಿಕ ಜೀವ ವಿಮಾ ಪ್ರೀಮಿಯಂಗೆ ಇಲ್ಲ.';

  @override
  String get chartTitle => 'ಪಾವತಿಸಿದ ಪ್ರೀಮಿಯಂ ಮತ್ತು ಲಾಭ';

  @override
  String get chartPaid => 'ಒಟ್ಟು ಪ್ರೀಮಿಯಂ';

  @override
  String get chartReceived => 'ಒಟ್ಟು ಲಾಭ';

  @override
  String get showTable => 'ವರ್ಷವಾರು ಕೋಷ್ಟಕ ತೋರಿಸಿ';

  @override
  String get hideTable => 'ವರ್ಷವಾರು ಕೋಷ್ಟಕ ಮರೆಮಾಡಿ';

  @override
  String get reverseTitle => 'ನನಗೆ ಎಷ್ಟು ಸಾಧ್ಯ?';

  @override
  String get budgetLabel => 'ಪ್ರತಿ ಕಂತಿನ ಬಜೆಟ್ (₹)';

  @override
  String get reverseIntro =>
      'ನೀವು ಎಷ್ಟು ಪಾವತಿಸಬಲ್ಲಿರಿ ಎಂದು ನಮೂದಿಸಿ. ಪ್ರತಿ ಯೋಜನೆ ಆಯ್ಕೆಗೆ ಆ ಮೊತ್ತದೊಳಗಿನ ಗರಿಷ್ಠ ವಿಮಾ ಮೊತ್ತ ತೋರಿಸಲಾಗುತ್ತದೆ.';

  @override
  String optMaturityAge(int age) {
    return '$ageರಲ್ಲಿ ಪಕ್ವತೆ';
  }

  @override
  String optCeasingAge(int age) {
    return '$age ವಯಸ್ಸಿನವರೆಗೆ ಪ್ರೀಮಿಯಂ';
  }

  @override
  String optTerm(int years) {
    return '$years ವರ್ಷದ ಅವಧಿ';
  }

  @override
  String get reverseNone =>
      'ಈ ವಯಸ್ಸಿನಲ್ಲಿ ಈ ಬಜೆಟ್‌ಗೆ ಯಾವುದೇ ಯೋಜನೆ ಹೊಂದುವುದಿಲ್ಲ.';

  @override
  String get saShort => 'ವಿಮಾ ಮೊತ್ತ';

  @override
  String get premiumShort => 'ಪ್ರೀಮಿಯಂ';

  @override
  String get compareTitle => 'ಯೋಜನೆಗಳ ಹೋಲಿಕೆ';

  @override
  String optionN(int n) {
    return 'ಆಯ್ಕೆ $n';
  }

  @override
  String get addOption => 'ಆಯ್ಕೆ ಸೇರಿಸಿ';

  @override
  String get removeOption => 'ಆಯ್ಕೆ ತೆಗೆಯಿರಿ';

  @override
  String get maturityShort => 'ಪಕ್ವತೆ / ಲಾಭ';

  @override
  String get totalPaidShort => 'ಒಟ್ಟು ಪಾವತಿ';

  @override
  String get returnShort => 'ಲಾಭ ದರ';

  @override
  String get lifeCoverShort => 'ಜೀವ ರಕ್ಷಣೆ';

  @override
  String get comparisonTitle => 'ಹೋಲಿಕೆ';

  @override
  String get toolsTitle => 'ಪಾಲಿಸಿ ಸಾಧನಗಳು';

  @override
  String get tabLoan => 'ಸಾಲ';

  @override
  String get tabPaidUp => 'ಪೇಡ್-ಅಪ್';

  @override
  String get tabRevival => 'ಪುನರುಜ್ಜೀವನ';

  @override
  String get tabAdvance => 'ಮುಂಗಡ';

  @override
  String get yearsInForceLabel => 'ಪಾಲಿಸಿ ಜಾರಿಯಲ್ಲಿರುವ ವರ್ಷಗಳು';

  @override
  String get loanAmountLabel => 'ಸಾಲದ ಮೊತ್ತ (₹)';

  @override
  String get loanMonthsLabel => 'ಮರುಪಾವತಿಯವರೆಗಿನ ತಿಂಗಳುಗಳು';

  @override
  String monthsValue(int months) {
    return '$months ತಿಂಗಳು';
  }

  @override
  String get loanInterestRow => 'ಬಡ್ಡಿ';

  @override
  String get loanTotalRow => 'ಒಟ್ಟು ಮರುಪಾವತಿ';

  @override
  String loanRateNote(String rate) {
    return 'ವರ್ಷಕ್ಕೆ $rate% ಬಡ್ಡಿ, ಅರ್ಧವಾರ್ಷಿಕ ಚಕ್ರಬಡ್ಡಿ.';
  }

  @override
  String loanAvailableAfter(int years) {
    return '$years ವರ್ಷಗಳ ನಂತರ ಸಾಲ ಲಭ್ಯ.';
  }

  @override
  String get loanNotOffered => 'ಈ ಯೋಜನೆಯಲ್ಲಿ ಸಾಲ ಸೌಲಭ್ಯವಿಲ್ಲ.';

  @override
  String get loanEligibleYes => 'ಸಾಲಕ್ಕೆ ಅರ್ಹ';

  @override
  String get loanEligibleNo => 'ಇನ್ನೂ ಸಾಲಕ್ಕೆ ಅರ್ಹವಲ್ಲ';

  @override
  String get loanAmountNote =>
      'ಗರಿಷ್ಠ ಸಾಲವು ಸರೆಂಡರ್ ಮೌಲ್ಯವನ್ನು ಅವಲಂಬಿಸಿದೆ; ಅದನ್ನು ಭಾರತೀಯ ಅಂಚೆ ಲೆಕ್ಕಹಾಕುತ್ತದೆ.';

  @override
  String get premiumsPaidLabel => 'ಪಾವತಿಸಿದ ಕಂತುಗಳು';

  @override
  String get premiumsPayableLabel => 'ಪಾವತಿಸಬೇಕಾದ ಒಟ್ಟು ಕಂತುಗಳು';

  @override
  String get paidUpSaRow => 'ಪೇಡ್-ಅಪ್ ವಿಮಾ ಮೊತ್ತ';

  @override
  String get paidUpNote =>
      'ಅಂದಾಜು. ಈಗಾಗಲೇ ಗಳಿಸಿದ ಬೋನಸ್ ಭಾರತೀಯ ಅಂಚೆ ದಾಖಲೆಯಂತೆ ಸೇರಿಸಲಾಗುತ್ತದೆ. ಸರೆಂಡರ್ ಮೌಲ್ಯಕ್ಕೆ ಅಧಿಕೃತ ಸರೆಂಡರ್ ಅಂಶಗಳು ಬೇಕು, ಅದನ್ನು ಲೆಕ್ಕಹಾಕಿಲ್ಲ.';

  @override
  String paidUpNotEligible(int years) {
    return 'ಪಾಲಿಸಿ $years ವರ್ಷ ಜಾರಿಯಲ್ಲಿದ್ದ ನಂತರವೇ ಪೇಡ್-ಅಪ್ ಆಗಬಹುದು.';
  }

  @override
  String get paidUpInvalid =>
      'ಪಾವತಿಸಿದ ಕಂತುಗಳು ಪಾವತಿಸಬೇಕಾದ ಕಂತುಗಳಿಗಿಂತ ಹೆಚ್ಚಿರಬಾರದು.';

  @override
  String get instalmentLabel => 'ಪ್ರತಿ ಕಂತಿನ ಪ್ರೀಮಿಯಂ (₹)';

  @override
  String get firstUnpaidLabel => 'ಮೊದಲ ಬಾಕಿ ಕಂತಿನ ದಿನಾಂಕ';

  @override
  String get payDateLabel => 'ಪಾವತಿ ದಿನಾಂಕ';

  @override
  String get missedRow => 'ಬಾಕಿ ಕಂತುಗಳು';

  @override
  String get arrearsRow => 'ಬಾಕಿ ಮೊತ್ತ';

  @override
  String get defaultFeeRow => 'ವಿಳಂಬ ಶುಲ್ಕ';

  @override
  String get totalPayableRow => 'ಒಟ್ಟು ಪಾವತಿಸಬೇಕಾದ್ದು';

  @override
  String revivalNote(String percent) {
    return 'ವಿಳಂಬದ ಪ್ರತಿ ತಿಂಗಳಿಗೆ ಕಂತಿನ $percent% ವಿಳಂಬ ಶುಲ್ಕ. ದೀರ್ಘ ಕಾಲದ ನಂತರ ಪುನರುಜ್ಜೀವನಕ್ಕೆ ವೈದ್ಯಕೀಯ ಪ್ರಮಾಣಪತ್ರ ಬೇಕಾಗಬಹುದು.';
  }

  @override
  String revivalLine(String date, int months, String fee) {
    return '$date ಬಾಕಿ • $months ತಿಂಗಳು ತಡ • ಶುಲ್ಕ $fee';
  }

  @override
  String get nothingDue => 'ಆ ದಿನಾಂಕಕ್ಕೆ ಯಾವುದೇ ಬಾಕಿ ಇಲ್ಲ.';

  @override
  String get monthsAdvanceLabel => 'ಮುಂಗಡವಾಗಿ ಪಾವತಿಸುವ ತಿಂಗಳುಗಳು';

  @override
  String rebateRow(String percent) {
    return 'ರಿಯಾಯಿತಿ ($percent%)';
  }

  @override
  String get amountDueRow => 'ಬಾಕಿ ಮೊತ್ತ';

  @override
  String get payableRow => 'ನೀವು ಪಾವತಿಸುವುದು';

  @override
  String get advanceNote =>
      'ತೋರಿಸಿದ ರಿಯಾಯಿತಿ ದರ ದತ್ತಾಂಶದ ಮುಂಗಡ ಪಾವತಿ ರಿಯಾಯಿತಿಯಂತೆ; ಪ್ರೀಮಿಯಂ ಮುಂಗಡವಾಗಿ ಪಾವತಿಸಿದಾಗ ಅನ್ವಯ.';

  @override
  String get policiesTitle => 'ನನ್ನ ಪಾಲಿಸಿಗಳು';

  @override
  String get noPolicies => 'ಇನ್ನೂ ಯಾವುದೇ ಪಾಲಿಸಿ ಉಳಿಸಿಲ್ಲ. ಸೇರಿಸಲು + ಒತ್ತಿ.';

  @override
  String get addPolicy => 'ಪಾಲಿಸಿ ಸೇರಿಸಿ';

  @override
  String get editPolicy => 'ಪಾಲಿಸಿ ತಿದ್ದಿ';

  @override
  String get holderNameLabel => 'ಪಾಲಿಸಿದಾರರ ಹೆಸರು';

  @override
  String get policyNumberLabel => 'ಪಾಲಿಸಿ ಸಂಖ್ಯೆ';

  @override
  String get premiumAmountLabel => 'ಪ್ರತಿ ಕಂತಿನ ಪ್ರೀಮಿಯಂ (₹, ರಸೀದಿಯಂತೆ)';

  @override
  String get save => 'ಉಳಿಸಿ';

  @override
  String get delete => 'ಅಳಿಸಿ';

  @override
  String get deleteConfirm => 'ಈ ಪಾಲಿಸಿಯನ್ನು ಅಳಿಸುವುದೇ?';

  @override
  String get cancel => 'ರದ್ದು';

  @override
  String nextDue(String date) {
    return 'ಮುಂದಿನ ಕಂತು: $date';
  }

  @override
  String get noMoreDues => 'ಎಲ್ಲಾ ಪ್ರೀಮಿಯಂ ಪಾವತಿಯಾಗಿದೆ';

  @override
  String get remindersLabel => 'ಪ್ರತಿ ಕಂತಿಗೆ 3 ದಿನ ಮೊದಲು ನೆನಪಿಸಿ';

  @override
  String get remindersDenied => 'ಈ ಆ್ಯಪ್‌ಗೆ ಅಧಿಸೂಚನೆಗಳು ಆಫ್ ಆಗಿವೆ.';

  @override
  String get accruedBonusRow => 'ಇಲ್ಲಿಯವರೆಗೆ ಸಂಚಿತ ಬೋನಸ್';

  @override
  String bonusMissingYears(String years) {
    return 'ಹ.ವ. $yearsರ ಬೋನಸ್ ದರಗಳು ಆ್ಯಪ್ ದತ್ತಾಂಶದಲ್ಲಿಲ್ಲ; ಒಟ್ಟು ಮೊತ್ತದಲ್ಲಿ ಆ ವರ್ಷಗಳು ಸೇರಿಲ್ಲ.';
  }

  @override
  String maturityOn(String date) {
    return '$date ರಂದು ಪಕ್ವತೆ';
  }

  @override
  String get upcomingDues => 'ಮುಂಬರುವ ಕಂತಿನ ದಿನಾಂಕಗಳು';

  @override
  String get yearsInForceRow => 'ಜಾರಿಯಲ್ಲಿರುವ ವರ್ಷಗಳು';

  @override
  String get reminderTitle => 'ಪಿಎಲ್‌ಐ ಪ್ರೀಮಿಯಂ ಬಾಕಿ';

  @override
  String reminderBody(String name, String amount, String date, String number) {
    return '$name: $amount $date ರಂದು ಬಾಕಿ (ಪಾಲಿಸಿ $number)';
  }

  @override
  String get savedLocally => 'ಈ ಫೋನ್‌ನಲ್ಲಿ ಮಾತ್ರ ಉಳಿಸಲಾಗಿದೆ.';

  @override
  String get requiredField => 'ಅಗತ್ಯ';

  @override
  String get projectedMaturityRow => 'ಅಂದಾಜು ಪಕ್ವತೆ ಮೊತ್ತ';

  @override
  String get quotationTitle => 'ಉಲ್ಲೇಖ ಪತ್ರ';

  @override
  String get customerNameLabel => 'ಗ್ರಾಹಕರ ಹೆಸರು';

  @override
  String get agentNameLabel => 'ತಯಾರಿಸಿದವರು (ಐಚ್ಛಿಕ)';

  @override
  String get sharePdf => 'PDF ಹಂಚಿ';

  @override
  String get shareImage => 'ಚಿತ್ರ ಹಂಚಿ';

  @override
  String get quotationHeading => 'ಪ್ರೀಮಿಯಂ ಉಲ್ಲೇಖ ಪತ್ರ';

  @override
  String preparedOn(String date) {
    return '$date ರಂದು ತಯಾರಿಸಲಾಗಿದೆ';
  }

  @override
  String quotationFor(String name) {
    return 'ಇವರಿಗೆ: $name';
  }

  @override
  String preparedBy(String name) {
    return 'ತಯಾರಿಸಿದವರು: $name';
  }

  @override
  String get quotationInvalid =>
      'ಉಲ್ಲೇಖ ಪತ್ರ ತಯಾರಿಸಲು ಯೋಜನೆಯ ವಿವರಗಳನ್ನು ಪೂರ್ಣಗೊಳಿಸಿ.';

  @override
  String get planDetailsTitle => 'ಯೋಜನೆಯ ವಿವರಗಳು';

  @override
  String get planInfoTitle => 'ಯೋಜನೆಗಳ ಮಾಹಿತಿ';

  @override
  String entryAgeInfo(int min, int max) {
    return 'ಪ್ರವೇಶ ವಯಸ್ಸು: $min–$max';
  }

  @override
  String maturityAgesInfo(String ages) {
    return 'ಪಕ್ವತೆ ವಯಸ್ಸುಗಳು: $ages';
  }

  @override
  String ceasingAgesInfo(String ages, int age) {
    return 'ಪ್ರೀಮಿಯಂ ಪಾವತಿ ವಯಸ್ಸುಗಳು: $ages; $ageರಲ್ಲಿ ಪಕ್ವತೆ';
  }

  @override
  String termsInfo(String terms) {
    return 'ಅವಧಿ: $terms ವರ್ಷ';
  }

  @override
  String survivalInfo(String list) {
    return 'ಹಣ ವಾಪಸ್: $list';
  }

  @override
  String survivalItem(int percent, int year) {
    return '$yearನೇ ವರ್ಷದಲ್ಲಿ $percent%';
  }

  @override
  String loanInfo(int years) {
    return '$years ವರ್ಷಗಳ ನಂತರ ಸಾಲ';
  }

  @override
  String get noLoanInfo => 'ಸಾಲವಿಲ್ಲ';

  @override
  String surrenderInfo(int years) {
    return '$years ವರ್ಷಗಳ ನಂತರ ಸರೆಂಡರ್';
  }

  @override
  String get noSurrenderInfo => 'ಸರೆಂಡರ್ ಇಲ್ಲ';

  @override
  String bonusInfo(String fy, int rate) {
    return 'ಹ.ವ. $fy ಬೋನಸ್: ಪ್ರತಿ ₹1,000ಕ್ಕೆ ವರ್ಷಕ್ಕೆ ₹$rate';
  }

  @override
  String saLimitInfo(String min, String max) {
    return 'ವಿಮಾ ಮೊತ್ತ: $min – $max';
  }

  @override
  String jointInfo(int min, int max, int tmin, int tmax) {
    return 'ಪ್ರತಿ ಸಂಗಾತಿಯ ವಯಸ್ಸು $min–$max; ಅವಧಿ $tmin–$tmax ವರ್ಷ';
  }

  @override
  String childInfo(int min, int max, int parent, int children, String cap) {
    return 'ಮಗುವಿನ ವಯಸ್ಸು $min–$max; ಪೋಷಕರ ವಯಸ್ಸು $parentರವರೆಗೆ; ಗರಿಷ್ಠ $children ಮಕ್ಕಳು; ವಿಮಾ ಮೊತ್ತ $capರವರೆಗೆ';
  }

  @override
  String conversionInfo(int years) {
    return '$years ವರ್ಷಗಳ ನಂತರ ದತ್ತಿ ವಿಮೆಗೆ ಪರಿವರ್ತಿಸಬಹುದು';
  }

  @override
  String get faqTitle => 'ಸಾಮಾನ್ಯ ಪ್ರಶ್ನೆಗಳು';

  @override
  String get faq1q => 'ಬೋನಸ್ ಖಾತರಿಯೇ?';

  @override
  String get faq1a =>
      'ಇಲ್ಲ. ಭಾರತೀಯ ಅಂಚೆ ಪ್ರತಿ ವರ್ಷ ಬೋನಸ್ ದರ ಘೋಷಿಸುತ್ತದೆ. ಇಲ್ಲಿನ ಅಂದಾಜುಗಳು ಮುಂದಿನ ಎಲ್ಲಾ ವರ್ಷಗಳಿಗೂ ಇತ್ತೀಚಿನ ದರವನ್ನೇ ಊಹಿಸುತ್ತವೆ.';

  @override
  String get faq2q => 'ಪ್ರೀಮಿಯಂ ಎಲ್ಲಿಂದ ಬರುತ್ತದೆ?';

  @override
  String get faq2a =>
      'ಭಾರತೀಯ ಅಂಚೆಯ ಅಧಿಕೃತ ಪ್ರೀಮಿಯಂ ಕೋಷ್ಟಕಗಳಿಂದ. ಆ್ಯಪ್ ಎಂದಿಗೂ ಪ್ರೀಮಿಯಂ ಅಂದಾಜು ಮಾಡುವುದಿಲ್ಲ.';

  @override
  String get faq3q => 'ಆದಾಯ ತೆರಿಗೆ ಪ್ರಯೋಜನ ಇದೆಯೇ?';

  @override
  String get faq3a =>
      'ಪ್ರೀಮಿಯಂ ಸೆಕ್ಷನ್ 80C (ಹಳೆಯ ತೆರಿಗೆ ಪದ್ಧತಿ) ಅಡಿ ಅರ್ಹವಾಗಬಹುದು ಮತ್ತು ಪಕ್ವತೆ ಮೊತ್ತ ಸೆಕ್ಷನ್ 10(10D) ಅಡಿ ಷರತ್ತುಗಳಿಗೆ ಒಳಪಟ್ಟು ವಿನಾಯಿತಿ ಪಡೆಯಬಹುದು. ಇದು ತೆರಿಗೆ ಸಲಹೆಯಲ್ಲ.';

  @override
  String get faq4q => 'ಪ್ರೀಮಿಯಂ ಮೇಲೆ ಜಿಎಸ್‌ಟಿ ಇದೆಯೇ?';

  @override
  String get faq4a =>
      'ಇಲ್ಲ. 22 ಸೆಪ್ಟೆಂಬರ್ 2025ರಿಂದ ವೈಯಕ್ತಿಕ ಜೀವ ವಿಮಾ ಪ್ರೀಮಿಯಂ ಮೇಲೆ ಜಿಎಸ್‌ಟಿ ಇಲ್ಲ.';

  @override
  String get faq5q => 'PLI ಮತ್ತು RPLI ಯಾರು ಪಡೆಯಬಹುದು?';

  @override
  String get faq5a =>
      'PLI: ಸರ್ಕಾರಿ ಮತ್ತು ಅರೆ-ಸರ್ಕಾರಿ ನೌಕರರು, ವೃತ್ತಿಪರರು, ಪದವೀಧರರು, ಡಿಪ್ಲೊಮಾ ಹೊಂದಿರುವವರು ಮತ್ತು ಭಾರತೀಯ ಅಂಚೆ ಪಟ್ಟಿ ಮಾಡಿದ ಇತರರು. RPLI: ಗ್ರಾಮೀಣ ನಿವಾಸಿಗಳು ಮತ್ತು ಅನುಸೂಚಿತ ಬ್ಯಾಂಕ್ ಉಳಿತಾಯ ಖಾತೆದಾರರು.';

  @override
  String get aboutTitle => 'ಕುರಿತು';

  @override
  String get privacyTitle => 'ಗೌಪ್ಯತೆ';

  @override
  String get privacyBody =>
      'PLI & RPLI ಕ್ಯಾಲ್ಕುಲೇಟರ್ ಯಾವುದೇ ದತ್ತಾಂಶ ಸಂಗ್ರಹಿಸುವುದಿಲ್ಲ. ನೀವು ನಮೂದಿಸುವ ಅಥವಾ ಉಳಿಸುವ ಎಲ್ಲವೂ ಈ ಫೋನ್‌ನಲ್ಲೇ ಇರುತ್ತದೆ. ಖಾತೆ ಅಥವಾ ಇಂಟರ್ನೆಟ್ ಅಗತ್ಯವಿಲ್ಲ.';

  @override
  String get dataSourceTitle => 'ದರ ದತ್ತಾಂಶ';

  @override
  String dataSourceBody(String id, String date, String source) {
    return 'ನಿಯಮಗಳು $id, $dateರಿಂದ ಜಾರಿ. ಮೂಲ: $source';
  }

  @override
  String get provisionalTitle => 'ಇನ್ನೂ ದೃಢಪಡಬೇಕಾದ ನಿಯಮಗಳು';

  @override
  String get provisionalIntro =>
      'ಭಾರತೀಯ ಅಂಚೆಯ ಅಧಿಕೃತ ಸುತ್ತೋಲೆಗಳಿಂದ ದೃಢಪಡುವವರೆಗೆ ಈ ನಿಯಮಗಳು ತಾತ್ಕಾಲಿಕ ಊಹೆಗಳು (ಇಂಗ್ಲಿಷ್‌ನಲ್ಲಿ):';

  @override
  String get checkUpdates => 'ದರ ನವೀಕರಣ ಪರಿಶೀಲಿಸಿ';

  @override
  String updateInstalled(int version) {
    return 'ದರ ದತ್ತಾಂಶ ಆವೃತ್ತಿ $versionಕ್ಕೆ ನವೀಕರಿಸಲಾಗಿದೆ.';
  }

  @override
  String get updateCurrent => 'ದರ ದತ್ತಾಂಶ ಇತ್ತೀಚಿನದು.';

  @override
  String updateFailed(String error) {
    return 'ನವೀಕರಣ ವಿಫಲ; ಈಗಿನ ದರಗಳೇ ಮುಂದುವರಿದಿವೆ. $error';
  }

  @override
  String get sampleDataNote =>
      'ಪ್ರೀಮಿಯಂ ಕೋಷ್ಟಕಗಳು ಮಾದರಿ ದತ್ತಾಂಶ, ಭಾರತೀಯ ಅಂಚೆಯ ಅಧಿಕೃತ ಅಂಕಿಗಳಲ್ಲ.';

  @override
  String appVersion(String version) {
    return 'ಆವೃತ್ತಿ $version';
  }

  @override
  String get homeTagline => 'ಪ್ರೀಮಿಯಂ, ಬೋನಸ್ ಮತ್ತು ಪಕ್ವತೆ — ಆಫ್‌ಲೈನ್‌ನಲ್ಲೂ';

  @override
  String get quickPremiumTitle => 'ಪ್ರೀಮಿಯಂ ಲೆಕ್ಕಹಾಕಿ';

  @override
  String get quickPremiumBody =>
      'ಯಾವುದೇ ಯೋಜನೆ, ವಯಸ್ಸು, ವಿಮಾ ಮೊತ್ತ — ಎಲ್ಲಾ ಆವರ್ತನಗಳು';

  @override
  String get sectionCalculators => 'ಕ್ಯಾಲ್ಕುಲೇಟರ್‌ಗಳು';

  @override
  String get sectionServicing => 'ಪಾಲಿಸಿ ಸೇವೆಗಳು';

  @override
  String get sectionLearn => 'ತಿಳಿಯಿರಿ';

  @override
  String get descPremium => 'ಎಲ್ಲಾ ಆವರ್ತನಗಳ ಪ್ರೀಮಿಯಂ';

  @override
  String get descMaturity => 'ಬೋನಸ್ ಮತ್ತು ಪಕ್ವತೆ ಮೊತ್ತ';

  @override
  String get descCompare => 'ಯೋಜನೆಗಳು ಅಕ್ಕಪಕ್ಕ';

  @override
  String get descAfford => 'ನಿಮ್ಮ ಬಜೆಟ್‌ಗೆ ಉತ್ತಮ ರಕ್ಷಣೆ';

  @override
  String get descPolicies => 'ಉಳಿಸಿದ ಪಾಲಿಸಿಗಳು ಮತ್ತು ಕಂತುಗಳು';

  @override
  String get descTools => 'ಸಾಲ, ಪುನರುಜ್ಜೀವನ, ಪೇಡ್-ಅಪ್';

  @override
  String get descQuotation => 'PDF ಉಲ್ಲೇಖ ಹಂಚಿ';

  @override
  String get descEligibility => 'PLI ಅಥವಾ RPLI ಯಾರು ಪಡೆಯಬಹುದು';

  @override
  String get descPlans => 'ಯೋಜನೆ ನಿಯಮಗಳು ಮತ್ತು ಪ್ರಶ್ನೆಗಳು';

  @override
  String get descAbout => 'ಗೌಪ್ಯತೆ ಮತ್ತು ದರ ದತ್ತಾಂಶ';

  @override
  String get sectionPersonTitle => 'ಪಾಲಿಸಿದಾರರು';

  @override
  String get sectionCoverTitle => 'ವಿಮಾ ರಕ್ಷಣೆ ಮತ್ತು ಪಾವತಿ';
}
