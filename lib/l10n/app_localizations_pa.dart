// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get appTitle => 'PLI RPLI ਕੈਲਕੁਲੇਟਰ';

  @override
  String get tilePremium => 'ਪ੍ਰੀਮੀਅਮ';

  @override
  String get tileMaturity => 'ਮਿਆਦ ਪੂਰੀ';

  @override
  String get tileCompare => 'ਤੁਲਨਾ';

  @override
  String get tileEligibility => 'ਯੋਗਤਾ';

  @override
  String get tileMyPolicies => 'ਮੇਰੀਆਂ ਪਾਲਿਸੀਆਂ';

  @override
  String get tileQuotation => 'ਕੋਟੇਸ਼ਨ';

  @override
  String get comingSoon => 'ਜਲਦੀ ਆ ਰਿਹਾ ਹੈ';

  @override
  String get sampleDataBanner => 'ਨਮੂਨਾ ਡਾਟਾ – ਅਧਿਕਾਰਤ ਨਹੀਂ';

  @override
  String ratesFooter(String financialYear) {
    return 'ਦਰਾਂ ਵਿੱਤੀ ਸਾਲ $financialYear • ਸਰੋਤ: ਭਾਰਤੀ ਡਾਕ';
  }

  @override
  String get bonusDisclaimer =>
      'ਬੋਨਸ ਦਰਾਂ ਹਰ ਸਾਲ ਐਲਾਨੀਆਂ ਜਾਂਦੀਆਂ ਹਨ ਅਤੇ ਭਵਿੱਖ ਲਈ ਗਾਰੰਟੀਸ਼ੁਦਾ ਨਹੀਂ ਹਨ। ਅੰਤਿਮ ਰਕਮ ਭਾਰਤੀ ਡਾਕ ਅਨੁਸਾਰ।';

  @override
  String get independentDisclaimerTitle => 'ਸ਼ੁਰੂ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ';

  @override
  String get independentDisclaimer =>
      'ਇਹ ਇੱਕ ਸੁਤੰਤਰ ਕੈਲਕੁਲੇਟਰ ਹੈ, ਭਾਰਤੀ ਡਾਕ ਦੀ ਅਧਿਕਾਰਤ ਐਪ ਨਹੀਂ। ਸਾਰੀ ਗਣਨਾ ਤੁਹਾਡੇ ਫ਼ੋਨ ਉੱਤੇ ਹੀ ਹੁੰਦੀ ਹੈ; ਕੋਈ ਡਾਟਾ ਇਕੱਠਾ ਨਹੀਂ ਕੀਤਾ ਜਾਂਦਾ।';

  @override
  String get understood => 'ਮੈਂ ਸਮਝ ਗਿਆ/ਗਈ';

  @override
  String dataLoadError(String error) {
    return 'ਦਰ ਡਾਟਾ ਲੋਡ ਨਹੀਂ ਹੋ ਸਕਿਆ: $error';
  }

  @override
  String get maturityTitle => 'ਮਿਆਦ ਪੂਰੀ ਅਤੇ ਬੋਨਸ';

  @override
  String get eligibilityTitle => 'ਯੋਗਤਾ ਜਾਂਚ';

  @override
  String get premiumTitle => 'ਪ੍ਰੀਮੀਅਮ ਕੈਲਕੁਲੇਟਰ';

  @override
  String get schemePli => 'ਡਾਕ ਜੀਵਨ ਬੀਮਾ (PLI)';

  @override
  String get schemeRpli => 'ਪੇਂਡੂ ਡਾਕ ਜੀਵਨ ਬੀਮਾ (RPLI)';

  @override
  String get planLabel => 'ਯੋਜਨਾ';

  @override
  String rulesPendingSuffix(String plan) {
    return '$plan (ਨਿਯਮ ਬਾਕੀ)';
  }

  @override
  String get entryAgeLabel => 'ਦਾਖ਼ਲਾ ਉਮਰ';

  @override
  String get childAgeLabel => 'ਬੱਚੇ ਦੀ ਉਮਰ';

  @override
  String get spouseAgeLabel => 'ਜੀਵਨ ਸਾਥੀ ਦੀ ਉਮਰ';

  @override
  String ageYears(int age) {
    return '$age ਸਾਲ';
  }

  @override
  String get decrease => 'ਘਟਾਓ';

  @override
  String get increase => 'ਵਧਾਓ';

  @override
  String get ageBasisNote =>
      'ਉਮਰ ਪੂਰੇ ਸਾਲਾਂ ਵਿੱਚ ਭਰੋ। ਭਾਰਤੀ ਡਾਕ ਦਾ ਉਮਰ ਨਿਯਮ ਪੱਕਾ ਹੋਣ ਤੋਂ ਬਾਅਦ ਜਨਮ ਮਿਤੀ ਤੋਂ ਉਮਰ ਦੀ ਸਹੂਲਤ ਜੋੜੀ ਜਾਵੇਗੀ।';

  @override
  String get sumAssuredLabel => 'ਬੀਮਾ ਰਕਮ (₹)';

  @override
  String get maturityAgeLabel => 'ਮਿਆਦ ਪੂਰੀ ਹੋਣ ਦੀ ਉਮਰ';

  @override
  String get termLabel => 'ਪਾਲਿਸੀ ਮਿਆਦ';

  @override
  String termYears(int years) {
    return '$years ਸਾਲ';
  }

  @override
  String get startDateLabel => 'ਪਾਲਿਸੀ ਸ਼ੁਰੂ ਹੋਣ ਦੀ ਮਿਤੀ';

  @override
  String get resultMaturityValue => 'ਮਿਆਦ ਪੂਰੀ ਰਕਮ';

  @override
  String get resultTotalBenefits => 'ਕੁੱਲ ਮਿਲਣ ਵਾਲੇ ਲਾਭ';

  @override
  String get sumAssuredRow => 'ਬੀਮਾ ਰਕਮ';

  @override
  String get termRow => 'ਮਿਆਦ';

  @override
  String bonusRateRow(String fy) {
    return 'ਬੋਨਸ ਦਰ (ਵਿ.ਸਾ. $fy)';
  }

  @override
  String bonusRateValue(int rate) {
    return '₹1,000 ਪਿੱਛੇ ਸਾਲਾਨਾ ₹$rate';
  }

  @override
  String get annualBonusRow => 'ਸਾਲਾਨਾ ਬੋਨਸ';

  @override
  String totalBonusRow(int years) {
    return 'ਕੁੱਲ ਬੋਨਸ ($years ਸਾਲ)';
  }

  @override
  String get terminalBonusRow => 'ਟਰਮੀਨਲ ਬੋਨਸ';

  @override
  String projectionNote(String fy) {
    return 'ਮੰਨਿਆ ਗਿਆ ਹੈ ਕਿ ਵਿ.ਸਾ. $fy ਦੀ ਬੋਨਸ ਦਰ ਮਿਆਦ ਦੇ ਹਰ ਸਾਲ ਜਾਰੀ ਰਹੇਗੀ।';
  }

  @override
  String get timelineTitle => 'ਜੀਵਤ ਲਾਭ ਸਮਾਂ-ਸਾਰਣੀ';

  @override
  String timelineYear(int year) {
    return 'ਸਾਲ $year';
  }

  @override
  String get timelineSurvival => 'ਜੀਵਤ ਲਾਭ';

  @override
  String get timelineMaturity => 'ਮਿਆਦ ਪੂਰੀ: ਬਾਕੀ ਬੀਮਾ ਰਕਮ + ਪੂਰਾ ਬੋਨਸ';

  @override
  String get timelineDeathNote =>
      'ਮਿਆਦ ਦੌਰਾਨ ਮੌਤ ਹੋਣ ਉੱਤੇ: ਪਹਿਲਾਂ ਦਿੱਤੇ ਜੀਵਤ ਲਾਭ ਘਟਾਏ ਬਿਨਾਂ ਪੂਰੀ ਬੀਮਾ ਰਕਮ + ਬੋਨਸ।';

  @override
  String get notAvailableTitle => 'ਹਾਲੇ ਉਪਲਬਧ ਨਹੀਂ';

  @override
  String get rulesPendingBody =>
      'ਇਸ ਯੋਜਨਾ ਦੇ ਨਿਯਮ ਭਾਰਤੀ ਡਾਕ ਦੇ ਅਧਿਕਾਰਤ ਸਰਕੂਲਰ ਤੋਂ ਪੱਕੇ ਹੋਣ ਤੋਂ ਬਾਅਦ ਗਣਨਾ ਜੋੜੀ ਜਾਵੇਗੀ।';

  @override
  String get premiumPendingBody =>
      'ਪ੍ਰੀਮੀਅਮ ਭਾਰਤੀ ਡਾਕ ਦੀਆਂ ਅਧਿਕਾਰਤ ਪ੍ਰੀਮੀਅਮ ਸਾਰਣੀਆਂ ਤੋਂ ਹੀ ਆਉਣਾ ਚਾਹੀਦਾ ਹੈ। ਅਧਿਕਾਰਤ ਸਾਰਣੀਆਂ ਜੋੜ ਕੇ ਜਾਂਚਣ ਤੋਂ ਬਾਅਦ ਇਹ ਕੈਲਕੁਲੇਟਰ ਚਾਲੂ ਹੋਵੇਗਾ — ਅੰਦਾਜ਼ਨ ਪ੍ਰੀਮੀਅਮ ਨਹੀਂ ਦਿਖਾਏ ਜਾਂਦੇ।';

  @override
  String missingBonusRate(String fy) {
    return 'ਵਿ.ਸਾ. $fy ਲਈ ਕੋਈ ਐਲਾਨੀ ਬੋਨਸ ਦਰ ਨਹੀਂ।';
  }

  @override
  String vEntryAge(String plan, int min, int max, int age) {
    return '$plan ਲਈ ਦਾਖ਼ਲਾ ਉਮਰ $min–$max ਹੈ। ਤੁਹਾਡੀ ਉਮਰ: $age';
  }

  @override
  String vChildAge(int min, int max, int age) {
    return 'ਬੱਚੇ ਦੀ ਉਮਰ $min–$max ਹੋਣੀ ਚਾਹੀਦੀ ਹੈ। ਭਰੀ: $age';
  }

  @override
  String vSpouseAge(int min, int max, int age) {
    return 'ਜੀਵਨ ਸਾਥੀ ਦੀ ਉਮਰ $min–$max ਹੋਣੀ ਚਾਹੀਦੀ ਹੈ। ਭਰੀ: $age';
  }

  @override
  String vSaMin(String min, String sa) {
    return 'ਘੱਟੋ-ਘੱਟ ਬੀਮਾ ਰਕਮ $min ਹੈ। ਭਰੀ: $sa';
  }

  @override
  String vSaMax(String max, String sa) {
    return 'ਵੱਧ ਤੋਂ ਵੱਧ ਬੀਮਾ ਰਕਮ $max ਹੈ (ਇਸ ਯੋਜਨਾ ਦੀਆਂ ਤੁਹਾਡੀਆਂ ਸਾਰੀਆਂ ਪਾਲਿਸੀਆਂ ਮਿਲਾ ਕੇ)। ਭਰੀ: $sa';
  }

  @override
  String vSaMultiple(String multiple) {
    return 'ਬੀਮਾ ਰਕਮ $multiple ਦੇ ਗੁਣਜ ਵਿੱਚ ਹੋਣੀ ਚਾਹੀਦੀ ਹੈ';
  }

  @override
  String vMaturityNotOffered(int value, String allowed) {
    return 'ਮਿਆਦ ਪੂਰੀ ਹੋਣ ਦੀ ਉਮਰ $value ਉਪਲਬਧ ਨਹੀਂ। ਇਹਨਾਂ ਵਿੱਚੋਂ ਚੁਣੋ: $allowed';
  }

  @override
  String vCeasingNotOffered(int value, String allowed) {
    return 'ਪ੍ਰੀਮੀਅਮ ਭਰਨ ਦੀ ਉਮਰ $value ਉਪਲਬਧ ਨਹੀਂ। ਇਹਨਾਂ ਵਿੱਚੋਂ ਚੁਣੋ: $allowed';
  }

  @override
  String vTermNotOffered(int value, String allowed) {
    return '$value ਸਾਲ ਦੀ ਮਿਆਦ ਉਪਲਬਧ ਨਹੀਂ। ਇਹਨਾਂ ਵਿੱਚੋਂ ਚੁਣੋ: $allowed';
  }

  @override
  String vNotAfterEntry(int value, int age) {
    return 'ਮਿਆਦ ਪੂਰੀ ਹੋਣ ਦੀ ਉਮਰ $value ਦਾਖ਼ਲਾ ਉਮਰ ($age) ਤੋਂ ਵੱਧ ਹੋਣੀ ਚਾਹੀਦੀ ਹੈ।';
  }

  @override
  String vTermRange(int min, int max, int term) {
    return 'ਮਿਆਦ $min–$max ਸਾਲ ਹੋਣੀ ਚਾਹੀਦੀ ਹੈ। ਭਰੀ: $term';
  }

  @override
  String vParentAge(int max, int age) {
    return 'ਮਾਤਾ/ਪਿਤਾ ਦੀ ਉਮਰ $max ਜਾਂ ਘੱਟ ਹੋਣੀ ਚਾਹੀਦੀ ਹੈ। ਭਰੀ: $age';
  }

  @override
  String vTooManyChildren(int max) {
    return 'ਵੱਧ ਤੋਂ ਵੱਧ $max ਬੱਚਿਆਂ ਦਾ ਬੀਮਾ ਹੋ ਸਕਦਾ ਹੈ।';
  }

  @override
  String vChildSaCap(String cap, String sa) {
    return 'ਇਸ ਬੱਚੇ ਲਈ ਵੱਧ ਤੋਂ ਵੱਧ ਬੀਮਾ ਰਕਮ $cap ਹੈ। ਭਰੀ: $sa';
  }

  @override
  String get vMissing => 'ਕਿਰਪਾ ਕਰਕੇ ਸਾਰੇ ਵੇਰਵੇ ਭਰੋ।';

  @override
  String get eligibilityIntro =>
      'ਵਿਅਕਤੀ ਉੱਤੇ ਲਾਗੂ ਹੋਣ ਵਾਲੇ ਸਾਰੇ ਵਿਕਲਪ ਚੁਣੋ, ਫਿਰ ਉਮਰ ਭਰੋ।';

  @override
  String get groupsPli => 'PLI — ਇਹਨਾਂ ਵਿੱਚੋਂ ਕੋਈ ਇੱਕ';

  @override
  String get groupsRpli => 'RPLI — ਇਹਨਾਂ ਵਿੱਚੋਂ ਕੋਈ ਇੱਕ';

  @override
  String get group_central_state_govt => 'ਕੇਂਦਰ / ਰਾਜ ਸਰਕਾਰੀ ਕਰਮਚਾਰੀ';

  @override
  String get group_defence_paramilitary => 'ਰੱਖਿਆ / ਅਰਧ-ਸੈਨਿਕ ਬਲ';

  @override
  String get group_psu => 'ਜਨਤਕ ਖੇਤਰ ਅਦਾਰਾ';

  @override
  String get group_banks => 'ਬੈਂਕ ਕਰਮਚਾਰੀ';

  @override
  String get group_local_bodies => 'ਸਥਾਨਕ ਸੰਸਥਾ ਕਰਮਚਾਰੀ';

  @override
  String get group_educational_institutions =>
      'ਵਿੱਦਿਅਕ ਸੰਸਥਾ (ਮਾਨਤਾ ਪ੍ਰਾਪਤ ਨਿੱਜੀ ਸਮੇਤ)';

  @override
  String get group_listed_companies => 'ਸੂਚੀਬੱਧ ਕੰਪਨੀ ਕਰਮਚਾਰੀ';

  @override
  String get group_professionals => 'ਪੇਸ਼ੇਵਰ (ਡਾਕਟਰ, ਇੰਜੀਨੀਅਰ, ਸੀਏ, ਵਕੀਲ…)';

  @override
  String get group_graduates_diploma_holders => 'ਗ੍ਰੈਜੂਏਟ ਜਾਂ ਡਿਪਲੋਮਾ ਧਾਰਕ';

  @override
  String get group_rural_resident => 'ਪੇਂਡੂ ਖੇਤਰ ਦੇ ਵਸਨੀਕ';

  @override
  String get group_scheduled_bank_savings_account_holder =>
      'ਅਨੁਸੂਚਿਤ ਬੈਂਕ ਵਿੱਚ ਬੱਚਤ ਖਾਤਾਧਾਰਕ';

  @override
  String get ageLabel => 'ਉਮਰ';

  @override
  String get eligibleFor => 'ਯੋਗ ਹੋ';

  @override
  String plansAtAge(int age) {
    return '$age ਸਾਲ ਦੀ ਉਮਰ ਵਿੱਚ ਉਪਲਬਧ ਯੋਜਨਾਵਾਂ';
  }

  @override
  String get childPlansTitle => 'ਬੱਚਿਆਂ ਦੀਆਂ ਪਾਲਿਸੀਆਂ (ਤੁਹਾਡੇ ਬੱਚਿਆਂ ਲਈ)';

  @override
  String get selectGroupPrompt =>
      'ਯੋਗ ਯੋਜਨਾਵਾਂ ਦੇਖਣ ਲਈ ਉੱਪਰ ਘੱਟੋ-ਘੱਟ ਇੱਕ ਵਿਕਲਪ ਚੁਣੋ।';

  @override
  String noPlansAtAge(int age) {
    return '$age ਸਾਲ ਦੀ ਉਮਰ ਵਿੱਚ ਕਿਸੇ ਯੋਜਨਾ ਵਿੱਚ ਦਾਖ਼ਲਾ ਨਹੀਂ।';
  }

  @override
  String get eligibilityNote =>
      'ਅੰਤਿਮ ਪ੍ਰਵਾਨਗੀ ਭਾਰਤੀ ਡਾਕ ਦੀ ਡਾਕਟਰੀ ਜਾਂਚ ਅਤੇ ਦਸਤਾਵੇਜ਼ਾਂ ਦੇ ਅਧੀਨ ਹੈ।';

  @override
  String get languageLabel => 'ਭਾਸ਼ਾ';

  @override
  String get systemLanguage => 'ਡਿਵਾਈਸ ਦੀ ਭਾਸ਼ਾ';

  @override
  String get tileAfford => 'ਕਿੰਨਾ ਸੰਭਵ';

  @override
  String get tileTools => 'ਪਾਲਿਸੀ ਸਾਧਨ';

  @override
  String get tilePlans => 'ਯੋਜਨਾਵਾਂ';

  @override
  String get tileAbout => 'ਬਾਰੇ';

  @override
  String get dobLabel => 'ਜਨਮ ਮਿਤੀ';

  @override
  String get useAgeInstead => 'ਇਸ ਦੀ ਥਾਂ ਉਮਰ ਭਰੋ';

  @override
  String get useDobInstead => 'ਜਨਮ ਮਿਤੀ ਭਰੋ';

  @override
  String ageFromDobNearest(int age) {
    return 'ਸ਼ੁਰੂਆਤੀ ਮਿਤੀ ਉੱਤੇ ਦਾਖ਼ਲਾ ਉਮਰ: $age (ਨੇੜਲੇ ਜਨਮਦਿਨ ਅਨੁਸਾਰ ਉਮਰ)';
  }

  @override
  String ageFromDobLast(int age) {
    return 'ਸ਼ੁਰੂਆਤੀ ਮਿਤੀ ਉੱਤੇ ਦਾਖ਼ਲਾ ਉਮਰ: $age (ਪਿਛਲੇ ਜਨਮਦਿਨ ਅਨੁਸਾਰ ਉਮਰ)';
  }

  @override
  String get premiumCeasingAgeLabel => 'ਪ੍ਰੀਮੀਅਮ ਭਰਨ ਦੀ ਉਮਰ';

  @override
  String get frequencyLabel => 'ਭੁਗਤਾਨ ਬਾਰੰਬਾਰਤਾ';

  @override
  String get freqMonthly => 'ਮਾਸਿਕ';

  @override
  String get freqQuarterly => 'ਤਿਮਾਹੀ';

  @override
  String get freqHalfYearly => 'ਛਿਮਾਹੀ';

  @override
  String get freqYearly => 'ਸਾਲਾਨਾ';

  @override
  String get premiumPerInstalment => 'ਪ੍ਰਤੀ ਕਿਸ਼ਤ ਪ੍ਰੀਮੀਅਮ';

  @override
  String get tablePremiumRow => 'ਸਾਰਣੀ ਪ੍ਰੀਮੀਅਮ';

  @override
  String get saRebateRow => 'ਬੀਮਾ ਰਕਮ ਛੋਟ';

  @override
  String totalPremiumRow(int count) {
    return 'ਕੁੱਲ ਪ੍ਰੀਮੀਅਮ ($count ਕਿਸ਼ਤਾਂ)';
  }

  @override
  String get payingTermRow => 'ਪ੍ਰੀਮੀਅਮ ਭਰਨ ਦੀ ਮਿਆਦ';

  @override
  String get returnRow => 'ਪ੍ਰਭਾਵੀ ਰਿਟਰਨ (XIRR)';

  @override
  String returnValue(String percent) {
    return 'ਸਾਲਾਨਾ $percent%';
  }

  @override
  String get lifeCoverRow => 'ਜੀਵਨ ਸੁਰੱਖਿਆ';

  @override
  String get allFrequenciesTitle => 'ਸਾਰੀਆਂ ਭੁਗਤਾਨ ਬਾਰੰਬਾਰਤਾਵਾਂ';

  @override
  String get notInTable => 'ਅਧਿਕਾਰਤ ਸਾਰਣੀ ਵਿੱਚ ਉਪਲਬਧ ਨਹੀਂ';

  @override
  String get noTableForPlan => 'ਇਸ ਯੋਜਨਾ ਦੀ ਪ੍ਰੀਮੀਅਮ ਸਾਰਣੀ ਹਾਲੇ ਨਹੀਂ ਜੋੜੀ ਗਈ।';

  @override
  String get illustrationTitle => 'ਸਾਲਵਾਰ ਲਾਭ ਵੇਰਵਾ';

  @override
  String get colYear => 'ਸਾਲ';

  @override
  String get colPremiumsPaid => 'ਭਰਿਆ ਪ੍ਰੀਮੀਅਮ';

  @override
  String get colBonus => 'ਬੋਨਸ';

  @override
  String get colLifeCover => 'ਜੀਵਨ ਸੁਰੱਖਿਆ';

  @override
  String get makeQuotation => 'ਕੋਟੇਸ਼ਨ ਬਣਾਓ';

  @override
  String get gstNote =>
      'ਜੀਐਸਟੀ: 22 ਸਤੰਬਰ 2025 ਜਾਂ ਬਾਅਦ ਭਰੇ ਨਿੱਜੀ ਜੀਵਨ ਬੀਮਾ ਪ੍ਰੀਮੀਅਮ ਉੱਤੇ ਸਿਫ਼ਰ।';

  @override
  String get chartTitle => 'ਭਰਿਆ ਪ੍ਰੀਮੀਅਮ ਬਨਾਮ ਲਾਭ';

  @override
  String get chartPaid => 'ਕੁੱਲ ਪ੍ਰੀਮੀਅਮ';

  @override
  String get chartReceived => 'ਕੁੱਲ ਲਾਭ';

  @override
  String get showTable => 'ਸਾਲਵਾਰ ਸਾਰਣੀ ਦਿਖਾਓ';

  @override
  String get hideTable => 'ਸਾਲਵਾਰ ਸਾਰਣੀ ਲੁਕਾਓ';

  @override
  String get reverseTitle => 'ਮੈਂ ਕਿੰਨਾ ਲੈ ਸਕਦਾ ਹਾਂ?';

  @override
  String get budgetLabel => 'ਪ੍ਰਤੀ ਕਿਸ਼ਤ ਬਜਟ (₹)';

  @override
  String get reverseIntro =>
      'ਤੁਸੀਂ ਕਿੰਨਾ ਭਰ ਸਕਦੇ ਹੋ, ਭਰੋ। ਹਰ ਯੋਜਨਾ ਵਿਕਲਪ ਉਸ ਰਕਮ ਵਿੱਚ ਵੱਧ ਤੋਂ ਵੱਧ ਬੀਮਾ ਰਕਮ ਦਿਖਾਉਂਦਾ ਹੈ।';

  @override
  String optMaturityAge(int age) {
    return '$age ਉੱਤੇ ਮਿਆਦ ਪੂਰੀ';
  }

  @override
  String optCeasingAge(int age) {
    return '$age ਸਾਲ ਤੱਕ ਪ੍ਰੀਮੀਅਮ';
  }

  @override
  String optTerm(int years) {
    return '$years ਸਾਲ ਦੀ ਮਿਆਦ';
  }

  @override
  String get reverseNone => 'ਇਸ ਉਮਰ ਵਿੱਚ ਇਸ ਬਜਟ ਵਿੱਚ ਕੋਈ ਯੋਜਨਾ ਨਹੀਂ ਬੈਠਦੀ।';

  @override
  String get saShort => 'ਬੀਮਾ ਰਕਮ';

  @override
  String get premiumShort => 'ਪ੍ਰੀਮੀਅਮ';

  @override
  String get compareTitle => 'ਯੋਜਨਾਵਾਂ ਦੀ ਤੁਲਨਾ';

  @override
  String optionN(int n) {
    return 'ਵਿਕਲਪ $n';
  }

  @override
  String get addOption => 'ਵਿਕਲਪ ਜੋੜੋ';

  @override
  String get removeOption => 'ਵਿਕਲਪ ਹਟਾਓ';

  @override
  String get maturityShort => 'ਮਿਆਦ ਪੂਰੀ / ਲਾਭ';

  @override
  String get totalPaidShort => 'ਕੁੱਲ ਭੁਗਤਾਨ';

  @override
  String get returnShort => 'ਰਿਟਰਨ';

  @override
  String get lifeCoverShort => 'ਜੀਵਨ ਸੁਰੱਖਿਆ';

  @override
  String get comparisonTitle => 'ਤੁਲਨਾ';

  @override
  String get toolsTitle => 'ਪਾਲਿਸੀ ਸਾਧਨ';

  @override
  String get tabLoan => 'ਕਰਜ਼ਾ';

  @override
  String get tabPaidUp => 'ਪੇਡ-ਅੱਪ';

  @override
  String get tabRevival => 'ਮੁੜ-ਚਾਲੂ';

  @override
  String get tabAdvance => 'ਅਗਾਊਂ';

  @override
  String get yearsInForceLabel => 'ਪਾਲਿਸੀ ਕਿੰਨੇ ਸਾਲ ਤੋਂ ਲਾਗੂ ਹੈ';

  @override
  String get loanAmountLabel => 'ਕਰਜ਼ੇ ਦੀ ਰਕਮ (₹)';

  @override
  String get loanMonthsLabel => 'ਵਾਪਸੀ ਤੱਕ ਮਹੀਨੇ';

  @override
  String monthsValue(int months) {
    return '$months ਮਹੀਨੇ';
  }

  @override
  String get loanInterestRow => 'ਵਿਆਜ';

  @override
  String get loanTotalRow => 'ਕੁੱਲ ਵਾਪਸੀ';

  @override
  String loanRateNote(String rate) {
    return 'ਸਾਲਾਨਾ $rate% ਵਿਆਜ, ਛਿਮਾਹੀ ਚੱਕਰਵਾਧਾ।';
  }

  @override
  String loanAvailableAfter(int years) {
    return '$years ਸਾਲ ਬਾਅਦ ਕਰਜ਼ਾ ਉਪਲਬਧ।';
  }

  @override
  String get loanNotOffered => 'ਇਸ ਯੋਜਨਾ ਵਿੱਚ ਕਰਜ਼ਾ ਸਹੂਲਤ ਨਹੀਂ।';

  @override
  String get loanEligibleYes => 'ਕਰਜ਼ੇ ਲਈ ਯੋਗ';

  @override
  String get loanEligibleNo => 'ਹਾਲੇ ਕਰਜ਼ੇ ਲਈ ਯੋਗ ਨਹੀਂ';

  @override
  String get loanAmountNote =>
      'ਵੱਧ ਤੋਂ ਵੱਧ ਕਰਜ਼ਾ ਸਰੰਡਰ ਮੁੱਲ ਉੱਤੇ ਨਿਰਭਰ ਹੈ, ਜਿਸ ਦੀ ਗਣਨਾ ਭਾਰਤੀ ਡਾਕ ਕਰਦਾ ਹੈ।';

  @override
  String get premiumsPaidLabel => 'ਭਰੀਆਂ ਕਿਸ਼ਤਾਂ';

  @override
  String get premiumsPayableLabel => 'ਕੁੱਲ ਭਰਨਯੋਗ ਕਿਸ਼ਤਾਂ';

  @override
  String get paidUpSaRow => 'ਪੇਡ-ਅੱਪ ਬੀਮਾ ਰਕਮ';

  @override
  String get paidUpNote =>
      'ਅੰਦਾਜ਼ਨ। ਪਹਿਲਾਂ ਮਿਲਿਆ ਬੋਨਸ ਭਾਰਤੀ ਡਾਕ ਦੇ ਰਿਕਾਰਡ ਅਨੁਸਾਰ ਜੁੜਦਾ ਹੈ। ਸਰੰਡਰ ਮੁੱਲ ਲਈ ਅਧਿਕਾਰਤ ਸਰੰਡਰ ਗੁਣਕ ਚਾਹੀਦੇ ਹਨ, ਇਸ ਦੀ ਗਣਨਾ ਨਹੀਂ ਕੀਤੀ ਗਈ।';

  @override
  String paidUpNotEligible(int years) {
    return 'ਪਾਲਿਸੀ $years ਸਾਲ ਲਾਗੂ ਰਹਿਣ ਤੋਂ ਬਾਅਦ ਹੀ ਪੇਡ-ਅੱਪ ਹੋ ਸਕਦੀ ਹੈ।';
  }

  @override
  String get paidUpInvalid =>
      'ਭਰੀਆਂ ਕਿਸ਼ਤਾਂ ਭਰਨਯੋਗ ਕਿਸ਼ਤਾਂ ਤੋਂ ਵੱਧ ਨਹੀਂ ਹੋ ਸਕਦੀਆਂ।';

  @override
  String get instalmentLabel => 'ਪ੍ਰਤੀ ਕਿਸ਼ਤ ਪ੍ਰੀਮੀਅਮ (₹)';

  @override
  String get firstUnpaidLabel => 'ਪਹਿਲੀ ਬਕਾਇਆ ਕਿਸ਼ਤ ਦੀ ਮਿਤੀ';

  @override
  String get payDateLabel => 'ਭੁਗਤਾਨ ਦੀ ਮਿਤੀ';

  @override
  String get missedRow => 'ਬਕਾਇਆ ਕਿਸ਼ਤਾਂ';

  @override
  String get arrearsRow => 'ਬਕਾਇਆ';

  @override
  String get defaultFeeRow => 'ਦੇਰੀ ਫ਼ੀਸ';

  @override
  String get totalPayableRow => 'ਕੁੱਲ ਭਰਨਯੋਗ';

  @override
  String revivalNote(String percent) {
    return 'ਦੇਰੀ ਦੇ ਹਰ ਮਹੀਨੇ ਲਈ ਕਿਸ਼ਤ ਦਾ $percent% ਦੇਰੀ ਫ਼ੀਸ। ਲੰਮੇ ਸਮੇਂ ਬਾਅਦ ਮੁੜ-ਚਾਲੂ ਕਰਨ ਲਈ ਡਾਕਟਰੀ ਸਰਟੀਫ਼ਿਕੇਟ ਲੱਗ ਸਕਦਾ ਹੈ।';
  }

  @override
  String revivalLine(String date, int months, String fee) {
    return 'ਬਕਾਇਆ $date • $months ਮਹੀਨੇ ਦੇਰ • ਫ਼ੀਸ $fee';
  }

  @override
  String get nothingDue => 'ਉਸ ਮਿਤੀ ਨੂੰ ਕੁਝ ਵੀ ਬਕਾਇਆ ਨਹੀਂ।';

  @override
  String get monthsAdvanceLabel => 'ਅਗਾਊਂ ਭਰੇ ਮਹੀਨੇ';

  @override
  String rebateRow(String percent) {
    return 'ਛੋਟ ($percent%)';
  }

  @override
  String get amountDueRow => 'ਬਕਾਇਆ ਰਕਮ';

  @override
  String get payableRow => 'ਤੁਸੀਂ ਭਰੋਗੇ';

  @override
  String get advanceNote =>
      'ਦਿਖਾਈ ਛੋਟ ਦਰ ਡਾਟਾ ਦੀ ਅਗਾਊਂ ਭੁਗਤਾਨ ਛੋਟ ਅਨੁਸਾਰ ਹੈ; ਪ੍ਰੀਮੀਅਮ ਅਗਾਊਂ ਭਰਨ ਉੱਤੇ ਲਾਗੂ।';

  @override
  String get policiesTitle => 'ਮੇਰੀਆਂ ਪਾਲਿਸੀਆਂ';

  @override
  String get noPolicies => 'ਹਾਲੇ ਕੋਈ ਪਾਲਿਸੀ ਸੰਭਾਲੀ ਨਹੀਂ। ਜੋੜਨ ਲਈ + ਦਬਾਓ।';

  @override
  String get addPolicy => 'ਪਾਲਿਸੀ ਜੋੜੋ';

  @override
  String get editPolicy => 'ਪਾਲਿਸੀ ਸੋਧੋ';

  @override
  String get holderNameLabel => 'ਪਾਲਿਸੀਧਾਰਕ ਦਾ ਨਾਮ';

  @override
  String get policyNumberLabel => 'ਪਾਲਿਸੀ ਨੰਬਰ';

  @override
  String get premiumAmountLabel => 'ਪ੍ਰਤੀ ਕਿਸ਼ਤ ਪ੍ਰੀਮੀਅਮ (₹, ਰਸੀਦ ਅਨੁਸਾਰ)';

  @override
  String get save => 'ਸੰਭਾਲੋ';

  @override
  String get delete => 'ਮਿਟਾਓ';

  @override
  String get deleteConfirm => 'ਕੀ ਇਹ ਪਾਲਿਸੀ ਮਿਟਾਉਣੀ ਹੈ?';

  @override
  String get cancel => 'ਰੱਦ ਕਰੋ';

  @override
  String nextDue(String date) {
    return 'ਅਗਲੀ ਕਿਸ਼ਤ: $date';
  }

  @override
  String get noMoreDues => 'ਸਾਰਾ ਪ੍ਰੀਮੀਅਮ ਭਰਿਆ ਗਿਆ';

  @override
  String get remindersLabel => 'ਹਰ ਕਿਸ਼ਤ ਤੋਂ 3 ਦਿਨ ਪਹਿਲਾਂ ਯਾਦ ਕਰਾਓ';

  @override
  String get remindersDenied => 'ਇਸ ਐਪ ਲਈ ਸੂਚਨਾਵਾਂ ਬੰਦ ਹਨ।';

  @override
  String get accruedBonusRow => 'ਹੁਣ ਤੱਕ ਜਮ੍ਹਾਂ ਬੋਨਸ';

  @override
  String bonusMissingYears(String years) {
    return 'ਵਿ.ਸਾ. $years ਦੀਆਂ ਬੋਨਸ ਦਰਾਂ ਐਪ ਡਾਟਾ ਵਿੱਚ ਨਹੀਂ; ਕੁੱਲ ਵਿੱਚ ਉਹ ਸਾਲ ਸ਼ਾਮਲ ਨਹੀਂ।';
  }

  @override
  String maturityOn(String date) {
    return '$date ਨੂੰ ਮਿਆਦ ਪੂਰੀ';
  }

  @override
  String get upcomingDues => 'ਆਉਣ ਵਾਲੀਆਂ ਕਿਸ਼ਤ ਮਿਤੀਆਂ';

  @override
  String get yearsInForceRow => 'ਲਾਗੂ ਸਾਲ';

  @override
  String get reminderTitle => 'ਪੀਐਲਆਈ ਪ੍ਰੀਮੀਅਮ ਬਕਾਇਆ';

  @override
  String reminderBody(String name, String amount, String date, String number) {
    return '$name: $amount $date ਨੂੰ ਬਕਾਇਆ (ਪਾਲਿਸੀ $number)';
  }

  @override
  String get savedLocally => 'ਸਿਰਫ਼ ਇਸ ਫ਼ੋਨ ਉੱਤੇ ਸੰਭਾਲਿਆ।';

  @override
  String get requiredField => 'ਲੋੜੀਂਦਾ';

  @override
  String get projectedMaturityRow => 'ਅੰਦਾਜ਼ਨ ਮਿਆਦ ਪੂਰੀ ਰਕਮ';

  @override
  String get quotationTitle => 'ਕੋਟੇਸ਼ਨ';

  @override
  String get customerNameLabel => 'ਗਾਹਕ ਦਾ ਨਾਮ';

  @override
  String get agentNameLabel => 'ਤਿਆਰ ਕਰਨ ਵਾਲਾ (ਵਿਕਲਪਿਕ)';

  @override
  String get sharePdf => 'PDF ਸਾਂਝਾ ਕਰੋ';

  @override
  String get shareImage => 'ਤਸਵੀਰ ਸਾਂਝੀ ਕਰੋ';

  @override
  String get quotationHeading => 'ਪ੍ਰੀਮੀਅਮ ਕੋਟੇਸ਼ਨ';

  @override
  String preparedOn(String date) {
    return '$date ਨੂੰ ਤਿਆਰ';
  }

  @override
  String quotationFor(String name) {
    return 'ਲਈ: $name';
  }

  @override
  String preparedBy(String name) {
    return 'ਤਿਆਰ ਕਰਨ ਵਾਲਾ: $name';
  }

  @override
  String get quotationInvalid => 'ਕੋਟੇਸ਼ਨ ਬਣਾਉਣ ਲਈ ਯੋਜਨਾ ਦੇ ਵੇਰਵੇ ਪੂਰੇ ਕਰੋ।';

  @override
  String get planDetailsTitle => 'ਯੋਜਨਾ ਦੇ ਵੇਰਵੇ';

  @override
  String get planInfoTitle => 'ਯੋਜਨਾ ਜਾਣਕਾਰੀ';

  @override
  String entryAgeInfo(int min, int max) {
    return 'ਦਾਖ਼ਲਾ ਉਮਰ: $min–$max';
  }

  @override
  String maturityAgesInfo(String ages) {
    return 'ਮਿਆਦ ਪੂਰੀ ਉਮਰਾਂ: $ages';
  }

  @override
  String ceasingAgesInfo(String ages, int age) {
    return 'ਪ੍ਰੀਮੀਅਮ ਭਰਨ ਦੀਆਂ ਉਮਰਾਂ: $ages; $age ਉੱਤੇ ਮਿਆਦ ਪੂਰੀ';
  }

  @override
  String termsInfo(String terms) {
    return 'ਮਿਆਦ: $terms ਸਾਲ';
  }

  @override
  String survivalInfo(String list) {
    return 'ਮਨੀ ਬੈਕ: $list';
  }

  @override
  String survivalItem(int percent, int year) {
    return '$yearਵੇਂ ਸਾਲ $percent%';
  }

  @override
  String loanInfo(int years) {
    return '$years ਸਾਲ ਬਾਅਦ ਕਰਜ਼ਾ';
  }

  @override
  String get noLoanInfo => 'ਕਰਜ਼ਾ ਨਹੀਂ';

  @override
  String surrenderInfo(int years) {
    return '$years ਸਾਲ ਬਾਅਦ ਸਰੰਡਰ';
  }

  @override
  String get noSurrenderInfo => 'ਸਰੰਡਰ ਨਹੀਂ';

  @override
  String bonusInfo(String fy, int rate) {
    return 'ਵਿ.ਸਾ. $fy ਬੋਨਸ: ₹1,000 ਪਿੱਛੇ ਸਾਲਾਨਾ ₹$rate';
  }

  @override
  String saLimitInfo(String min, String max) {
    return 'ਬੀਮਾ ਰਕਮ: $min – $max';
  }

  @override
  String jointInfo(int min, int max, int tmin, int tmax) {
    return 'ਹਰ ਜੀਵਨ ਸਾਥੀ ਦੀ ਉਮਰ $min–$max; ਮਿਆਦ $tmin–$tmax ਸਾਲ';
  }

  @override
  String childInfo(int min, int max, int parent, int children, String cap) {
    return 'ਬੱਚੇ ਦੀ ਉਮਰ $min–$max; ਮਾਤਾ/ਪਿਤਾ ਦੀ ਉਮਰ $parent ਤੱਕ; ਵੱਧ ਤੋਂ ਵੱਧ $children ਬੱਚੇ; ਬੀਮਾ ਰਕਮ $cap ਤੱਕ';
  }

  @override
  String conversionInfo(int years) {
    return '$years ਸਾਲ ਬਾਅਦ ਐਂਡੋਮੈਂਟ ਬੀਮੇ ਵਿੱਚ ਬਦਲੀ ਜਾ ਸਕਦੀ ਹੈ';
  }

  @override
  String get faqTitle => 'ਆਮ ਸਵਾਲ';

  @override
  String get faq1q => 'ਕੀ ਬੋਨਸ ਦੀ ਗਾਰੰਟੀ ਹੈ?';

  @override
  String get faq1a =>
      'ਨਹੀਂ। ਭਾਰਤੀ ਡਾਕ ਹਰ ਸਾਲ ਬੋਨਸ ਦਰਾਂ ਐਲਾਨਦਾ ਹੈ। ਇੱਥੇ ਦੇ ਅੰਦਾਜ਼ੇ ਹਰ ਆਉਣ ਵਾਲੇ ਸਾਲ ਲਈ ਨਵੀਨਤਮ ਐਲਾਨੀ ਦਰ ਮੰਨਦੇ ਹਨ।';

  @override
  String get faq2q => 'ਪ੍ਰੀਮੀਅਮ ਕਿੱਥੋਂ ਆਉਂਦਾ ਹੈ?';

  @override
  String get faq2a =>
      'ਭਾਰਤੀ ਡਾਕ ਦੀਆਂ ਅਧਿਕਾਰਤ ਪ੍ਰੀਮੀਅਮ ਸਾਰਣੀਆਂ ਤੋਂ। ਐਪ ਕਦੇ ਵੀ ਪ੍ਰੀਮੀਅਮ ਦਾ ਅੰਦਾਜ਼ਾ ਨਹੀਂ ਲਾਉਂਦੀ।';

  @override
  String get faq3q => 'ਕੀ ਆਮਦਨ ਕਰ ਲਾਭ ਮਿਲਦਾ ਹੈ?';

  @override
  String get faq3a =>
      'ਪ੍ਰੀਮੀਅਮ ਧਾਰਾ 80C (ਪੁਰਾਣੀ ਕਰ ਪ੍ਰਣਾਲੀ) ਅਧੀਨ ਯੋਗ ਹੋ ਸਕਦਾ ਹੈ ਅਤੇ ਮਿਆਦ ਪੂਰੀ ਰਕਮ ਧਾਰਾ 10(10D) ਅਧੀਨ ਸ਼ਰਤਾਂ ਨਾਲ ਕਰ-ਮੁਕਤ ਹੋ ਸਕਦੀ ਹੈ। ਇਹ ਕਰ ਸਲਾਹ ਨਹੀਂ ਹੈ।';

  @override
  String get faq4q => 'ਕੀ ਪ੍ਰੀਮੀਅਮ ਉੱਤੇ ਜੀਐਸਟੀ ਲੱਗਦਾ ਹੈ?';

  @override
  String get faq4a =>
      'ਨਹੀਂ। 22 ਸਤੰਬਰ 2025 ਤੋਂ ਨਿੱਜੀ ਜੀਵਨ ਬੀਮਾ ਪ੍ਰੀਮੀਅਮ ਉੱਤੇ ਜੀਐਸਟੀ ਸਿਫ਼ਰ ਹੈ।';

  @override
  String get faq5q => 'PLI ਅਤੇ RPLI ਕੌਣ ਲੈ ਸਕਦਾ ਹੈ?';

  @override
  String get faq5a =>
      'PLI: ਸਰਕਾਰੀ ਅਤੇ ਅਰਧ-ਸਰਕਾਰੀ ਕਰਮਚਾਰੀ, ਪੇਸ਼ੇਵਰ, ਗ੍ਰੈਜੂਏਟ, ਡਿਪਲੋਮਾ ਧਾਰਕ ਅਤੇ ਭਾਰਤੀ ਡਾਕ ਵੱਲੋਂ ਸੂਚੀਬੱਧ ਹੋਰ। RPLI: ਪੇਂਡੂ ਵਸਨੀਕ ਅਤੇ ਅਨੁਸੂਚਿਤ ਬੈਂਕ ਬੱਚਤ ਖਾਤਾਧਾਰਕ।';

  @override
  String get aboutTitle => 'ਬਾਰੇ';

  @override
  String get privacyTitle => 'ਨਿੱਜਤਾ';

  @override
  String get privacyBody =>
      'PLI RPLI ਕੈਲਕੁਲੇਟਰ ਕੋਈ ਡਾਟਾ ਇਕੱਠਾ ਨਹੀਂ ਕਰਦਾ। ਤੁਸੀਂ ਜੋ ਵੀ ਭਰਦੇ ਜਾਂ ਸੰਭਾਲਦੇ ਹੋ, ਉਹ ਇਸੇ ਫ਼ੋਨ ਉੱਤੇ ਰਹਿੰਦਾ ਹੈ। ਖਾਤੇ ਜਾਂ ਇੰਟਰਨੈੱਟ ਦੀ ਲੋੜ ਨਹੀਂ।';

  @override
  String get dataSourceTitle => 'ਦਰ ਡਾਟਾ';

  @override
  String dataSourceBody(String id, String date, String source) {
    return 'ਨਿਯਮ $id, $date ਤੋਂ ਲਾਗੂ। ਸਰੋਤ: $source';
  }

  @override
  String get provisionalTitle => 'ਹਾਲੇ ਪੱਕੇ ਹੋਣ ਵਾਲੇ ਨਿਯਮ';

  @override
  String get provisionalIntro =>
      'ਭਾਰਤੀ ਡਾਕ ਦੇ ਅਧਿਕਾਰਤ ਸਰਕੂਲਰਾਂ ਤੋਂ ਪੱਕੇ ਹੋਣ ਤੱਕ ਇਹ ਨਿਯਮ ਕਾਰਜਕਾਰੀ ਧਾਰਨਾਵਾਂ ਹਨ (ਅੰਗਰੇਜ਼ੀ ਵਿੱਚ):';

  @override
  String get checkUpdates => 'ਦਰ ਅੱਪਡੇਟ ਜਾਂਚੋ';

  @override
  String updateInstalled(int version) {
    return 'ਦਰ ਡਾਟਾ ਸੰਸਕਰਣ $version ਵਿੱਚ ਅੱਪਡੇਟ ਹੋਇਆ।';
  }

  @override
  String get updateCurrent => 'ਦਰ ਡਾਟਾ ਨਵੀਨਤਮ ਹੈ।';

  @override
  String updateFailed(String error) {
    return 'ਅੱਪਡੇਟ ਅਸਫਲ; ਮੌਜੂਦਾ ਦਰਾਂ ਬਰਕਰਾਰ। $error';
  }

  @override
  String get sampleDataNote =>
      'ਪ੍ਰੀਮੀਅਮ ਸਾਰਣੀਆਂ ਨਮੂਨਾ ਡਾਟਾ ਹਨ, ਭਾਰਤੀ ਡਾਕ ਦੇ ਅਧਿਕਾਰਤ ਅੰਕੜੇ ਨਹੀਂ।';

  @override
  String appVersion(String version) {
    return 'ਸੰਸਕਰਣ $version';
  }

  @override
  String get homeTagline => 'ਪ੍ਰੀਮੀਅਮ, ਬੋਨਸ ਅਤੇ ਮਿਆਦ ਪੂਰੀ — ਆਫ਼ਲਾਈਨ ਵੀ';

  @override
  String get quickPremiumTitle => 'ਪ੍ਰੀਮੀਅਮ ਕੱਢੋ';

  @override
  String get quickPremiumBody =>
      'ਕੋਈ ਵੀ ਯੋਜਨਾ, ਉਮਰ ਅਤੇ ਬੀਮਾ ਰਕਮ — ਸਾਰੀਆਂ ਬਾਰੰਬਾਰਤਾਵਾਂ';

  @override
  String get sectionCalculators => 'ਕੈਲਕੁਲੇਟਰ';

  @override
  String get sectionServicing => 'ਪਾਲਿਸੀ ਸੇਵਾਵਾਂ';

  @override
  String get sectionLearn => 'ਜਾਣਕਾਰੀ';

  @override
  String get descPremium => 'ਹਰ ਬਾਰੰਬਾਰਤਾ ਦਾ ਪ੍ਰੀਮੀਅਮ';

  @override
  String get descMaturity => 'ਬੋਨਸ ਅਤੇ ਮਿਆਦ ਪੂਰੀ ਰਕਮ';

  @override
  String get descCompare => 'ਯੋਜਨਾਵਾਂ ਨਾਲ-ਨਾਲ';

  @override
  String get descAfford => 'ਤੁਹਾਡੇ ਬਜਟ ਵਿੱਚ ਵਧੀਆ ਸੁਰੱਖਿਆ';

  @override
  String get descPolicies => 'ਸੰਭਾਲੀਆਂ ਪਾਲਿਸੀਆਂ ਅਤੇ ਮਿਤੀਆਂ';

  @override
  String get descTools => 'ਕਰਜ਼ਾ, ਮੁੜ-ਚਾਲੂ, ਪੇਡ-ਅੱਪ';

  @override
  String get descQuotation => 'PDF ਕੋਟੇਸ਼ਨ ਸਾਂਝਾ ਕਰੋ';

  @override
  String get descEligibility => 'PLI ਜਾਂ RPLI ਕੌਣ ਲੈ ਸਕਦਾ ਹੈ';

  @override
  String get descPlans => 'ਯੋਜਨਾ ਨਿਯਮ ਅਤੇ ਸਵਾਲ';

  @override
  String get descAbout => 'ਨਿੱਜਤਾ ਅਤੇ ਦਰ ਡਾਟਾ';

  @override
  String get sectionPersonTitle => 'ਪਾਲਿਸੀਧਾਰਕ';

  @override
  String get sectionCoverTitle => 'ਸੁਰੱਖਿਆ ਅਤੇ ਭੁਗਤਾਨ';
}
