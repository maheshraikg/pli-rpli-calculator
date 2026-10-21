// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get appTitle => 'ਪੀਐਲਆਈ ਸਹਾਇਕ';

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
}
