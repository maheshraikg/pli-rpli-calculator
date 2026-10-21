// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'PLI RPLI Calculator';

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
      'PLI RPLI Calculator collects no data. Everything you enter or save stays on this phone. No account or internet connection is needed.';

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

  @override
  String get homeTagline => 'Premium, bonus and maturity — works offline';

  @override
  String get quickPremiumTitle => 'Calculate premium';

  @override
  String get quickPremiumBody =>
      'Any plan, age and sum assured — all frequencies';

  @override
  String get sectionCalculators => 'Calculators';

  @override
  String get sectionServicing => 'Policy servicing';

  @override
  String get sectionLearn => 'Learn';

  @override
  String get descPremium => 'Premium for every frequency';

  @override
  String get descMaturity => 'Bonus and maturity value';

  @override
  String get descCompare => 'Plans side by side';

  @override
  String get descAfford => 'Best cover for your budget';

  @override
  String get descPolicies => 'Saved policies and due dates';

  @override
  String get descTools => 'Loan, revival, paid-up';

  @override
  String get descQuotation => 'Share a PDF quote';

  @override
  String get descEligibility => 'Who can buy PLI or RPLI';

  @override
  String get descPlans => 'Plan rules and FAQs';

  @override
  String get descAbout => 'Privacy and rate data';

  @override
  String get sectionPersonTitle => 'Policy holder';

  @override
  String get sectionCoverTitle => 'Cover and payment';
}
