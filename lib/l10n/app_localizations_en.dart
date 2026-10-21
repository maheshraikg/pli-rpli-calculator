// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'PLI Sahayak';

  @override
  String get tilePremium => 'Premium';

  @override
  String get tileMaturity => 'Maturity';

  @override
  String get tileCompare => 'Compare';

  @override
  String get tileEligibility => 'Eligibility';

  @override
  String get tileMyPolicies => 'My Policies';

  @override
  String get tileQuotation => 'Quotation';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get sampleDataBanner => 'SAMPLE DATA – NOT OFFICIAL';

  @override
  String ratesFooter(String financialYear) {
    return 'Rates FY $financialYear • Source: India Post';
  }

  @override
  String get bonusDisclaimer =>
      'Bonus rates are declared yearly and are not guaranteed for the future. Final figures as per India Post.';

  @override
  String get independentDisclaimerTitle => 'Before you start';

  @override
  String get independentDisclaimer =>
      'This is an independent calculator, not an official India Post app. All calculations happen on your phone; no data is collected.';

  @override
  String get understood => 'I understand';

  @override
  String dataLoadError(String error) {
    return 'Could not load rate data: $error';
  }

  @override
  String get maturityTitle => 'Maturity & Bonus';

  @override
  String get eligibilityTitle => 'Eligibility Checker';

  @override
  String get premiumTitle => 'Premium Calculator';

  @override
  String get schemePli => 'PLI';

  @override
  String get schemeRpli => 'RPLI';

  @override
  String get planLabel => 'Plan';

  @override
  String rulesPendingSuffix(String plan) {
    return '$plan (rules pending)';
  }

  @override
  String get entryAgeLabel => 'Age at entry';

  @override
  String get childAgeLabel => 'Child\'s age';

  @override
  String get spouseAgeLabel => 'Spouse\'s age';

  @override
  String ageYears(int age) {
    return '$age years';
  }

  @override
  String get decrease => 'Decrease';

  @override
  String get increase => 'Increase';

  @override
  String get ageBasisNote =>
      'Enter age in completed years. Age from date of birth will be added once India Post\'s age rule is confirmed.';

  @override
  String get sumAssuredLabel => 'Sum assured (₹)';

  @override
  String get maturityAgeLabel => 'Maturity age';

  @override
  String get termLabel => 'Policy term';

  @override
  String termYears(int years) {
    return '$years years';
  }

  @override
  String get startDateLabel => 'Policy start date';

  @override
  String get resultMaturityValue => 'Maturity value';

  @override
  String get resultTotalBenefits => 'Total benefits received';

  @override
  String get sumAssuredRow => 'Sum assured';

  @override
  String get termRow => 'Term';

  @override
  String bonusRateRow(String fy) {
    return 'Bonus rate (FY $fy)';
  }

  @override
  String bonusRateValue(int rate) {
    return '₹$rate per ₹1,000 / year';
  }

  @override
  String get annualBonusRow => 'Bonus per year';

  @override
  String totalBonusRow(int years) {
    return 'Total bonus ($years years)';
  }

  @override
  String get terminalBonusRow => 'Terminal bonus';

  @override
  String projectionNote(String fy) {
    return 'Assumes the FY $fy bonus rate continues for every year of the term.';
  }

  @override
  String get timelineTitle => 'Survival benefit timeline';

  @override
  String timelineYear(int year) {
    return 'Year $year';
  }

  @override
  String get timelineSurvival => 'Survival benefit';

  @override
  String get timelineMaturity => 'Maturity: remaining sum assured + full bonus';

  @override
  String get timelineDeathNote =>
      'On death during the term: full sum assured + bonus, with no deduction for survival benefits already paid.';

  @override
  String get notAvailableTitle => 'Not available yet';

  @override
  String get rulesPendingBody =>
      'The projection for this plan will be added once its rules are confirmed from the official India Post circular.';

  @override
  String get premiumPendingBody =>
      'Premiums must come from the official India Post premium tables. This calculator will be switched on once the official tables are loaded and verified — no estimated premiums are shown.';

  @override
  String missingBonusRate(String fy) {
    return 'No declared bonus rate for FY $fy.';
  }

  @override
  String vEntryAge(String plan, int min, int max, int age) {
    return '$plan entry age is $min–$max. Your age: $age';
  }

  @override
  String vChildAge(int min, int max, int age) {
    return 'Child\'s age must be $min–$max. Entered: $age';
  }

  @override
  String vSpouseAge(int min, int max, int age) {
    return 'Spouse\'s age must be $min–$max. Entered: $age';
  }

  @override
  String vSaMin(String min, String sa) {
    return 'Minimum sum assured is $min. Entered: $sa';
  }

  @override
  String vSaMax(String max, String sa) {
    return 'Maximum sum assured is $max (all your policies in this scheme combined). Entered: $sa';
  }

  @override
  String vSaMultiple(String multiple) {
    return 'Sum assured must be a multiple of $multiple';
  }

  @override
  String vMaturityNotOffered(int value, String allowed) {
    return 'Maturity age $value is not offered. Choose from: $allowed';
  }

  @override
  String vCeasingNotOffered(int value, String allowed) {
    return 'Premium paying age $value is not offered. Choose from: $allowed';
  }

  @override
  String vTermNotOffered(int value, String allowed) {
    return 'A $value-year term is not offered. Choose from: $allowed';
  }

  @override
  String vNotAfterEntry(int value, int age) {
    return 'Maturity age $value must be more than the entry age ($age).';
  }

  @override
  String vTermRange(int min, int max, int term) {
    return 'Term must be $min–$max years. Entered: $term';
  }

  @override
  String vParentAge(int max, int age) {
    return 'Parent\'s age must be $max or less. Entered: $age';
  }

  @override
  String vTooManyChildren(int max) {
    return 'A maximum of $max children can be covered.';
  }

  @override
  String vChildSaCap(String cap, String sa) {
    return 'Maximum sum assured for this child is $cap. Entered: $sa';
  }

  @override
  String get vMissing => 'Please fill in all the details.';

  @override
  String get eligibilityIntro =>
      'Select everything that applies to the person, then set their age.';

  @override
  String get groupsPli => 'PLI — any one of these';

  @override
  String get groupsRpli => 'RPLI — any one of these';

  @override
  String get group_central_state_govt => 'Central / State Govt employee';

  @override
  String get group_defence_paramilitary => 'Defence / Paramilitary';

  @override
  String get group_psu => 'Public Sector Undertaking';

  @override
  String get group_banks => 'Bank employee';

  @override
  String get group_local_bodies => 'Local body employee';

  @override
  String get group_educational_institutions =>
      'Educational institution (incl. private recognised)';

  @override
  String get group_listed_companies => 'Listed company employee';

  @override
  String get group_professionals =>
      'Professional (doctor, engineer, CA, lawyer…)';

  @override
  String get group_graduates_diploma_holders => 'Graduate or diploma holder';

  @override
  String get group_rural_resident => 'Resident of a rural area';

  @override
  String get group_scheduled_bank_savings_account_holder =>
      'Savings account holder in a scheduled bank';

  @override
  String get ageLabel => 'Age';

  @override
  String get eligibleFor => 'Eligible for';

  @override
  String plansAtAge(int age) {
    return 'Plans open at age $age';
  }

  @override
  String get childPlansTitle => 'Children\'s policies (for your children)';

  @override
  String get selectGroupPrompt =>
      'Select at least one option above to see eligible plans.';

  @override
  String noPlansAtAge(int age) {
    return 'No plan accepts entry at age $age.';
  }

  @override
  String get eligibilityNote =>
      'Final acceptance is subject to India Post\'s medical underwriting and documents.';

  @override
  String get languageLabel => 'Language';

  @override
  String get systemLanguage => 'Device language';
}
