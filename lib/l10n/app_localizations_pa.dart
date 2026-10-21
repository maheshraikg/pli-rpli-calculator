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
