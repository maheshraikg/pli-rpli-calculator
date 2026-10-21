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

  @override
  String get tileAfford => 'Afford';

  @override
  String get tileTools => 'Policy tools';

  @override
  String get tilePlans => 'Plans';

  @override
  String get tileAbout => 'About';

  @override
  String get dobLabel => 'Date of birth';

  @override
  String get useAgeInstead => 'Enter age instead';

  @override
  String get useDobInstead => 'Enter date of birth';

  @override
  String ageFromDobNearest(int age) {
    return 'Entry age on start date: $age (age nearest birthday)';
  }

  @override
  String ageFromDobLast(int age) {
    return 'Entry age on start date: $age (age last birthday)';
  }

  @override
  String get premiumCeasingAgeLabel => 'Premium paying age';

  @override
  String get frequencyLabel => 'Payment frequency';

  @override
  String get freqMonthly => 'Monthly';

  @override
  String get freqQuarterly => 'Quarterly';

  @override
  String get freqHalfYearly => 'Half-yearly';

  @override
  String get freqYearly => 'Yearly';

  @override
  String get premiumPerInstalment => 'Premium per instalment';

  @override
  String get tablePremiumRow => 'Table premium';

  @override
  String get saRebateRow => 'SA rebate';

  @override
  String totalPremiumRow(int count) {
    return 'Total premium ($count instalments)';
  }

  @override
  String get payingTermRow => 'Premium paying term';

  @override
  String get returnRow => 'Effective return (XIRR)';

  @override
  String returnValue(String percent) {
    return '$percent% a year';
  }

  @override
  String get lifeCoverRow => 'Life cover';

  @override
  String get allFrequenciesTitle => 'All payment frequencies';

  @override
  String get notInTable => 'Not available in official table';

  @override
  String get noTableForPlan =>
      'The premium table for this plan is not loaded yet.';

  @override
  String get illustrationTitle => 'Year-wise benefit illustration';

  @override
  String get colYear => 'Year';

  @override
  String get colPremiumsPaid => 'Premiums paid';

  @override
  String get colBonus => 'Bonus';

  @override
  String get colLifeCover => 'Life cover';

  @override
  String get makeQuotation => 'Create quotation';

  @override
  String get gstNote =>
      'GST: nil on individual life insurance premiums paid on or after 22 Sep 2025.';

  @override
  String get chartTitle => 'Premium paid vs benefits';

  @override
  String get chartPaid => 'Total premium';

  @override
  String get chartReceived => 'Total benefits';

  @override
  String get showTable => 'Show year-wise table';

  @override
  String get hideTable => 'Hide year-wise table';

  @override
  String get reverseTitle => 'What can I afford?';

  @override
  String get budgetLabel => 'Budget per instalment (₹)';

  @override
  String get reverseIntro =>
      'Enter how much you can pay. Each plan option shows the highest sum assured within that amount.';

  @override
  String optMaturityAge(int age) {
    return 'Matures at $age';
  }

  @override
  String optCeasingAge(int age) {
    return 'Premiums till age $age';
  }

  @override
  String optTerm(int years) {
    return '$years-year term';
  }

  @override
  String get reverseNone => 'No plan fits this budget at this age.';

  @override
  String get saShort => 'Sum assured';

  @override
  String get premiumShort => 'Premium';

  @override
  String get compareTitle => 'Compare plans';

  @override
  String optionN(int n) {
    return 'Option $n';
  }

  @override
  String get addOption => 'Add option';

  @override
  String get removeOption => 'Remove option';

  @override
  String get maturityShort => 'Maturity / benefits';

  @override
  String get totalPaidShort => 'Total paid';

  @override
  String get returnShort => 'Return';

  @override
  String get lifeCoverShort => 'Life cover';

  @override
  String get comparisonTitle => 'Comparison';

  @override
  String get toolsTitle => 'Policy tools';

  @override
  String get tabLoan => 'Loan';

  @override
  String get tabPaidUp => 'Paid-up';

  @override
  String get tabRevival => 'Revival';

  @override
  String get tabAdvance => 'Advance';

  @override
  String get yearsInForceLabel => 'Years the policy has been in force';

  @override
  String get loanAmountLabel => 'Loan amount (₹)';

  @override
  String get loanMonthsLabel => 'Months until repayment';

  @override
  String monthsValue(int months) {
    return '$months months';
  }

  @override
  String get loanInterestRow => 'Interest';

  @override
  String get loanTotalRow => 'Total to repay';

  @override
  String loanRateNote(String rate) {
    return 'Interest $rate% a year, compounded half-yearly.';
  }

  @override
  String loanAvailableAfter(int years) {
    return 'Loan available after $years years.';
  }

  @override
  String get loanNotOffered => 'This plan has no loan facility.';

  @override
  String get loanEligibleYes => 'Eligible for a loan';

  @override
  String get loanEligibleNo => 'Not yet eligible for a loan';

  @override
  String get loanAmountNote =>
      'The maximum loan depends on the surrender value, which India Post calculates.';

  @override
  String get premiumsPaidLabel => 'Instalments paid';

  @override
  String get premiumsPayableLabel => 'Total instalments payable';

  @override
  String get paidUpSaRow => 'Paid-up sum assured';

  @override
  String get paidUpNote =>
      'Approximate. Bonus already earned is added as per India Post records. Surrender value needs official surrender factors and is not calculated.';

  @override
  String paidUpNotEligible(int years) {
    return 'A policy can become paid-up only after $years years in force.';
  }

  @override
  String get paidUpInvalid =>
      'Instalments paid cannot exceed instalments payable.';

  @override
  String get instalmentLabel => 'Premium per instalment (₹)';

  @override
  String get firstUnpaidLabel => 'First unpaid due date';

  @override
  String get payDateLabel => 'Date of payment';

  @override
  String get missedRow => 'Instalments due';

  @override
  String get arrearsRow => 'Arrears';

  @override
  String get defaultFeeRow => 'Default fee';

  @override
  String get totalPayableRow => 'Total payable';

  @override
  String revivalNote(String percent) {
    return 'Default fee $percent% of the instalment per month of delay. Revival after a long lapse may need a medical certificate.';
  }

  @override
  String revivalLine(String date, int months, String fee) {
    return 'Due $date • $months months late • fee $fee';
  }

  @override
  String get nothingDue => 'Nothing is due on that date.';

  @override
  String get monthsAdvanceLabel => 'Months paid in advance';

  @override
  String rebateRow(String percent) {
    return 'Rebate ($percent%)';
  }

  @override
  String get amountDueRow => 'Amount due';

  @override
  String get payableRow => 'You pay';

  @override
  String get advanceNote =>
      'The rebate shown follows the advance-payment rebate in the rate data; it applies when premiums are paid in advance.';

  @override
  String get policiesTitle => 'My Policies';

  @override
  String get noPolicies => 'No saved policies yet. Tap + to add one.';

  @override
  String get addPolicy => 'Add policy';

  @override
  String get editPolicy => 'Edit policy';

  @override
  String get holderNameLabel => 'Policy holder name';

  @override
  String get policyNumberLabel => 'Policy number';

  @override
  String get premiumAmountLabel => 'Premium per instalment (₹, as on receipt)';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Delete';

  @override
  String get deleteConfirm => 'Delete this policy?';

  @override
  String get cancel => 'Cancel';

  @override
  String nextDue(String date) {
    return 'Next due: $date';
  }

  @override
  String get noMoreDues => 'All premiums paid';

  @override
  String get remindersLabel => 'Remind me 3 days before each due date';

  @override
  String get remindersDenied => 'Notifications are turned off for this app.';

  @override
  String get accruedBonusRow => 'Bonus accrued so far';

  @override
  String bonusMissingYears(String years) {
    return 'Bonus rates for FY $years are not in the app data; the total leaves out those years.';
  }

  @override
  String maturityOn(String date) {
    return 'Matures on $date';
  }

  @override
  String get upcomingDues => 'Upcoming due dates';

  @override
  String get yearsInForceRow => 'Years in force';

  @override
  String get reminderTitle => 'PLI premium due';

  @override
  String reminderBody(String name, String amount, String date, String number) {
    return '$name: $amount due on $date (policy $number)';
  }

  @override
  String get savedLocally => 'Saved only on this phone.';

  @override
  String get requiredField => 'Required';

  @override
  String get projectedMaturityRow => 'Projected maturity value';

  @override
  String get quotationTitle => 'Quotation';

  @override
  String get customerNameLabel => 'Customer name';

  @override
  String get agentNameLabel => 'Prepared by (optional)';

  @override
  String get sharePdf => 'Share PDF';

  @override
  String get shareImage => 'Share image';

  @override
  String get quotationHeading => 'Premium Quotation';

  @override
  String preparedOn(String date) {
    return 'Prepared on $date';
  }

  @override
  String quotationFor(String name) {
    return 'For: $name';
  }

  @override
  String preparedBy(String name) {
    return 'Prepared by: $name';
  }

  @override
  String get quotationInvalid =>
      'Complete the plan details to create a quotation.';

  @override
  String get planDetailsTitle => 'Plan details';

  @override
  String get planInfoTitle => 'Plan information';

  @override
  String entryAgeInfo(int min, int max) {
    return 'Entry age: $min–$max';
  }

  @override
  String maturityAgesInfo(String ages) {
    return 'Maturity ages: $ages';
  }

  @override
  String ceasingAgesInfo(String ages, int age) {
    return 'Premium paying ages: $ages; matures at $age';
  }

  @override
  String termsInfo(String terms) {
    return 'Terms: $terms years';
  }

  @override
  String survivalInfo(String list) {
    return 'Money back: $list';
  }

  @override
  String survivalItem(int percent, int year) {
    return '$percent% at year $year';
  }

  @override
  String loanInfo(int years) {
    return 'Loan after $years years';
  }

  @override
  String get noLoanInfo => 'No loan';

  @override
  String surrenderInfo(int years) {
    return 'Surrender after $years years';
  }

  @override
  String get noSurrenderInfo => 'No surrender';

  @override
  String bonusInfo(String fy, int rate) {
    return 'Bonus FY $fy: ₹$rate per ₹1,000 a year';
  }

  @override
  String saLimitInfo(String min, String max) {
    return 'Sum assured: $min – $max';
  }

  @override
  String jointInfo(int min, int max, int tmin, int tmax) {
    return 'Each spouse aged $min–$max; term $tmin–$tmax years';
  }

  @override
  String childInfo(int min, int max, int parent, int children, String cap) {
    return 'Child aged $min–$max; parent aged up to $parent; up to $children children; SA up to $cap';
  }

  @override
  String conversionInfo(int years) {
    return 'Can be converted to endowment after $years years';
  }

  @override
  String get faqTitle => 'Common questions';

  @override
  String get faq1q => 'Is the bonus guaranteed?';

  @override
  String get faq1a =>
      'No. India Post declares bonus rates every year. Projections here assume the latest declared rate for every future year.';

  @override
  String get faq2q => 'Where do the premiums come from?';

  @override
  String get faq2a =>
      'From India Post\'s official premium tables. The app never estimates a premium.';

  @override
  String get faq3q => 'Is there an income tax benefit?';

  @override
  String get faq3a =>
      'Premiums may qualify under Section 80C (old tax regime) and maturity may be exempt under Section 10(10D), subject to conditions. This is not tax advice.';

  @override
  String get faq4q => 'Is GST charged on premiums?';

  @override
  String get faq4a =>
      'No. GST on individual life insurance premiums is nil from 22 September 2025.';

  @override
  String get faq5q => 'Who can buy PLI and RPLI?';

  @override
  String get faq5a =>
      'PLI: government and semi-government employees, professionals, graduates, diploma holders and others listed by India Post. RPLI: rural residents and scheduled bank savings account holders.';

  @override
  String get aboutTitle => 'About';

  @override
  String get privacyTitle => 'Privacy';

  @override
  String get privacyBody =>
      'PLI Sahayak collects no data. Everything you enter or save stays on this phone. No account or internet connection is needed.';

  @override
  String get dataSourceTitle => 'Rate data';

  @override
  String dataSourceBody(String id, String date, String source) {
    return 'Rules $id, effective $date. Source: $source';
  }

  @override
  String get provisionalTitle => 'Rules still being confirmed';

  @override
  String get provisionalIntro =>
      'These rules are working assumptions until they are confirmed from official India Post circulars (shown in English):';

  @override
  String get checkUpdates => 'Check for rate updates';

  @override
  String updateInstalled(int version) {
    return 'Rate data updated to version $version.';
  }

  @override
  String get updateCurrent => 'Rate data is up to date.';

  @override
  String updateFailed(String error) {
    return 'Update failed; current rates kept. $error';
  }

  @override
  String get sampleDataNote =>
      'Premium tables are SAMPLE data, not official India Post figures.';

  @override
  String appVersion(String version) {
    return 'Version $version';
  }
}
