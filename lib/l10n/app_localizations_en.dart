// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'PO Premium Calculator';

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
    String _temp0 = intl.Intl.pluralLogic(
      age,
      locale: localeName,
      other: '$age years',
      one: '1 year',
    );
    return '$_temp0';
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
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years years',
      one: '1 year',
    );
    return '$_temp0';
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
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months months',
      one: '1 month',
    );
    return '$_temp0';
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
      'Approximate. Bonus: none if the policy is less than 5 years old; after 5 years, proportionate bonus on the paid-up value, as per India Post. Surrender value needs official surrender factors and is not calculated.';

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
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months months late',
      one: '1 month late',
      zero: 'on time',
    );
    return 'Due $date • $_temp0 • fee $fee';
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
      'PO Premium Calculator collects no data. Everything you enter or save stays on this phone. No account or internet connection is needed.';

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

  @override
  String get tileForms => 'Forms';

  @override
  String get descForms => 'Forms, checklists, letters';

  @override
  String get formsTitle => 'Forms and letters';

  @override
  String get formsIntro =>
      'What each PLI / RPLI request needs, where to get the form, and ready-made request letters.';

  @override
  String get formsVerifyNote =>
      'Document lists are a guide and can change. Confirm with your Post Office before submitting.';

  @override
  String get whereToGetTitle => 'Where to get the form';

  @override
  String get whereToGetBody =>
      'Free at any Post Office or CPC, or download it from the India Post PLI website.';

  @override
  String get documentsTitle => 'Documents to keep ready';

  @override
  String get openOfficialForm => 'Open official form';

  @override
  String get getFromIndiaPost => 'Get the form from India Post';

  @override
  String get detailsSheetTitle => 'Policy details sheet';

  @override
  String get detailsSheetIntro =>
      'Your saved policy details in one place, to copy onto the official form.';

  @override
  String get writeLetterTitle => 'Write a request letter';

  @override
  String get writeLetterIntro =>
      'A ready letter to the Postmaster, filled from your saved policy.';

  @override
  String get choosePolicy => 'Saved policy';

  @override
  String get noSavedPolicies => 'Save a policy under My Policies first.';

  @override
  String get toOfficeLabel => 'To (Post Office / CPC)';

  @override
  String get yourAddressLabel => 'Your address';

  @override
  String get phoneLabel => 'Phone';

  @override
  String get placeLabel => 'Place';

  @override
  String get nomineeNameLabel => 'New nominee name';

  @override
  String get nomineeRelationLabel => 'Relationship';

  @override
  String get nomineeAgeLabel => 'Nominee age';

  @override
  String get newAddressLabel => 'New address';

  @override
  String get bondLost => 'Lost';

  @override
  String get bondDamaged => 'Damaged';

  @override
  String get lapsedFromLabel => 'Premiums unpaid since';

  @override
  String get shareAsText => 'Share as text';

  @override
  String get copyText => 'Copy';

  @override
  String get copied => 'Copied';

  @override
  String get letterEnglishNote =>
      'Letters are written in English, the usual language for India Post correspondence. Sign before submitting.';

  @override
  String get formsOfficialNote =>
      'This app is not India Post. Always submit India Post\'s own prescribed form where one exists.';

  @override
  String get svc_proposal => 'New policy proposal';

  @override
  String get svcDesc_proposal => 'Apply for a new PLI or RPLI policy';

  @override
  String get svc_maturity => 'Maturity claim';

  @override
  String get svcDesc_maturity => 'Claim the amount when the policy matures';

  @override
  String get svc_survival => 'Survival benefit claim';

  @override
  String get svcDesc_survival =>
      'Money-back instalments (Sumangal, Gram Priya)';

  @override
  String get svc_death => 'Death claim';

  @override
  String get svcDesc_death => 'Claim by the nominee or legal heir';

  @override
  String get svc_loan => 'Policy loan';

  @override
  String get svcDesc_loan => 'Borrow against your policy';

  @override
  String get svc_surrender => 'Surrender';

  @override
  String get svcDesc_surrender =>
      'Close the policy early for its surrender value';

  @override
  String get svc_revival => 'Revival';

  @override
  String get svcDesc_revival => 'Restart a lapsed policy';

  @override
  String get svc_nomination => 'Change of nomination';

  @override
  String get svcDesc_nomination => 'Add or change the nominee';

  @override
  String get svc_address => 'Change of address';

  @override
  String get svcDesc_address => 'Update your address on the policy';

  @override
  String get svc_duplicate => 'Duplicate policy bond';

  @override
  String get svcDesc_duplicate => 'Replace a lost or damaged bond';

  @override
  String get svc_assignment => 'Assignment';

  @override
  String get svcDesc_assignment => 'Transfer policy rights, e.g. to a bank';

  @override
  String get svc_conversion => 'Conversion (Suvidha)';

  @override
  String get svcDesc_conversion => 'Convert whole life to endowment';

  @override
  String get doc_form => 'Prescribed form, filled and signed';

  @override
  String get doc_policyBond => 'Original policy bond (or ePLI bond)';

  @override
  String get doc_receiptBook => 'Premium receipt book or receipts';

  @override
  String get doc_idProof => 'ID proof (Aadhaar, PAN, etc.)';

  @override
  String get doc_addressProof => 'Address proof';

  @override
  String get doc_ageProof => 'Age proof';

  @override
  String get doc_bankDetails => 'Bank passbook or cancelled cheque';

  @override
  String get doc_photo => 'Passport-size photograph';

  @override
  String get doc_deathCertificate => 'Death certificate';

  @override
  String get doc_claimantId => 'Claimant\'s ID and proof of relationship';

  @override
  String get doc_medical =>
      'Medical certificate / health declaration (if asked)';

  @override
  String get doc_eligibility =>
      'Proof of eligibility (job, degree or rural residence)';

  @override
  String get doc_nomineeDetails => 'Nominee\'s name, age and relationship';

  @override
  String get doc_indemnity => 'Indemnity bond (if asked)';

  @override
  String get customerPhoneLabel => 'Customer mobile (for WhatsApp reminders)';

  @override
  String get exportBackup => 'Back up policies';

  @override
  String get importBackup => 'Restore from backup';

  @override
  String importConfirm(int count) {
    return 'Restore $count policies from this backup? Policies already saved with the same ID are replaced.';
  }

  @override
  String importDone(int count) {
    return '$count policies restored.';
  }

  @override
  String get importFailed => 'This file is not a PO Premium Calculator backup.';

  @override
  String get backupNote =>
      'The backup file contains your policy details. Keep it somewhere safe, such as your own WhatsApp chat or Google Drive.';

  @override
  String get restore => 'Restore';

  @override
  String get tileDues => 'Dues';

  @override
  String get descDues => 'Premiums due this month';

  @override
  String get duesTitle => 'Premium dues';

  @override
  String get duesTotal => 'Total due';

  @override
  String duesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count premiums',
      one: '1 premium',
    );
    return '$_temp0';
  }

  @override
  String get noDuesInMonth => 'No premiums fall due in this month.';

  @override
  String get remindOnWhatsApp => 'Remind';

  @override
  String dueReminderMessage(
    String name,
    String amount,
    String number,
    String date,
  ) {
    return 'Dear $name, your premium of $amount for policy $number is due on $date. Please pay at your Post Office.';
  }

  @override
  String get tileProfile => 'Agent profile';

  @override
  String get descProfile => 'Your name and logo on quotations';

  @override
  String get profileTitle => 'Agent profile';

  @override
  String get agentNameField => 'Your name';

  @override
  String get agentPhoneField => 'Your phone';

  @override
  String get agentCodeField => 'Agent ID / office (optional)';

  @override
  String get chooseLogo => 'Choose photo or logo';

  @override
  String get removeLogo => 'Remove';

  @override
  String get profileNote =>
      'Shown on quotations and reminder messages. Stored only on this phone.';

  @override
  String get profileSaved => 'Profile saved.';

  @override
  String get searchPolicies => 'Search name, policy no. or mobile';

  @override
  String get sortLabel => 'Sort by';

  @override
  String get sortName => 'Name';

  @override
  String get sortNextDue => 'Next due';

  @override
  String get sortSumAssured => 'Sum assured';

  @override
  String noSearchResults(String query) {
    return 'No policies match “$query”.';
  }

  @override
  String get filterAll => 'All';

  @override
  String get filterPending => 'Pending';

  @override
  String get filterCollected => 'Collected';

  @override
  String get markCollected => 'Mark as collected';

  @override
  String get markNotCollected => 'Mark as not collected';

  @override
  String get duesPendingTotal => 'Still to collect';

  @override
  String duesCollectedOf(int collected, int total) {
    return '$collected of $total collected';
  }

  @override
  String get duesMonthTotal => 'Total for the month';

  @override
  String get collectedNote =>
      'Collected marks are your own record. They do not check payment in India Post\'s system.';

  @override
  String get noDuesInFilter => 'Nothing in this list.';

  @override
  String get openFormLink => 'Download form';

  @override
  String get shareFormLink => 'Share form link';

  @override
  String formLinkMessage(String service, String url) {
    return '$service form (India Post): $url';
  }

  @override
  String get tileLinks => 'Official links';

  @override
  String get descLinks => 'Portal, forms, helpline';

  @override
  String get linksTitle => 'Official links & help';

  @override
  String get linkPortalTitle => 'PLI Customer Portal';

  @override
  String get linkPortalDesc => 'Pay premium online, policy status, receipts';

  @override
  String get linkFormsTitle => 'Official PLI/RPLI forms';

  @override
  String get linkFormsDesc => 'Download forms from India Post';

  @override
  String get linkIndiaPostTitle => 'India Post';

  @override
  String get linkIndiaPostDesc => 'Department of Posts website';

  @override
  String get linkHelplineTitle => 'India Post customer care';

  @override
  String linkHelplineDesc(String number) {
    return 'Toll-free $number';
  }

  @override
  String get linkDigiLockerTitle => 'DigiLocker';

  @override
  String get linkDigiLockerDesc => 'Keep your e-policy bond safe';

  @override
  String get linkGrievanceTitle => 'Public grievance (CPGRAMS)';

  @override
  String get linkGrievanceDesc =>
      'Raise a complaint with the Government of India';

  @override
  String get linksNote =>
      'These open official Government of India websites. This app is independent and is not affiliated with India Post or the Department of Posts.';

  @override
  String get formSourceLabel => 'Official source of this form';

  @override
  String get privacyPolicyLink => 'Read the full privacy policy';

  @override
  String get helpTitle => 'Help & feedback';

  @override
  String helpBody(String email) {
    return 'Found a problem or a wrong figure? Tell us and we will fix it in the next update. Support: $email';
  }

  @override
  String get reportProblem => 'Report a problem';

  @override
  String get sendSuggestion => 'Send a suggestion';

  @override
  String get checkAppUpdates => 'Check for app updates (Play Store)';

  @override
  String get conversionTitle => 'After 5 years, if converted to Endowment';

  @override
  String conversionRow(int age) {
    return 'Monthly • maturity at $age';
  }

  @override
  String get conversionNote =>
      'Suvidha can be converted to an Endowment Assurance after 5 years. The new monthly premium then applies until the chosen maturity age. \"Not in table\" means that maturity age is not available for this entry age.';

  @override
  String get equivalentAgeRow => 'Equivalent age (both spouses)';

  @override
  String get linkSewaTitle => 'Dak Bima Sewa Portal';

  @override
  String get linkSewaDesc =>
      'New official PLI portal: log in, pay premium, statements';

  @override
  String get linkRegisterTitle => 'Register or get Customer ID';

  @override
  String get linkRegisterDesc => 'First-time login for policy holders';

  @override
  String get linkGuidelinesTitle => 'Guidelines for customers';

  @override
  String get linkGuidelinesDesc =>
      'Official steps for claims, loans and revival';

  @override
  String get payOnlineTitle => 'Pay premium online';

  @override
  String get payOnlineSteps =>
      '1. On the Dak Bima Sewa Portal, register with your Customer ID (tap Get Customer ID to receive it on your registered mobile).\n2. Log in and choose the policy.\n3. Pay by UPI, net banking or debit card.\n4. Download the receipt. Annual premium receipts help with income tax.';

  @override
  String get payOnlineButton => 'Open the portal';

  @override
  String get surrenderBonusInfo => 'Surrendered before 5 years: no bonus';

  @override
  String wlaConversionInfo(int age) {
    return 'Can be converted to Endowment Assurance up to age $age';
  }

  @override
  String get serviceStandardTitle => 'India Post service standard';

  @override
  String serviceStandardDays(int days) {
    return 'Settled within $days days of complete documents';
  }

  @override
  String serviceStandardDeath(int days, int investigationDays) {
    return 'Settled within $days days; $investigationDays days if investigation is needed';
  }

  @override
  String serviceStandardBond(int days) {
    return 'Acceptance letter and policy bond within $days days of complete documents';
  }

  @override
  String get tipAckSlip =>
      'Ask for a signed acknowledgement slip when you submit, and reply quickly if the CPC asks for more documents.';

  @override
  String get tipMessenger =>
      'If the insurant can\'t visit (medically unfit or abroad), a messenger can submit with their own ID and address proof, plus the insurant\'s medical certificate or passport copy.';

  @override
  String get tipDeath =>
      'Death claims can be submitted at any Post Office. Some cases are investigated; please co-operate.';

  @override
  String get checklistOfficialNote =>
      'Checklist from India Post\'s Guidelines for Customers.';

  @override
  String get doc_loanReceipt =>
      'Loan repayment receipt book (if a loan was taken)';

  @override
  String get doc_postMortem => 'Post-mortem report and FIR (unnatural death)';

  @override
  String get doc_succession =>
      'Succession certificate or probate (if no nomination)';

  @override
  String get doc_claimantAddress => 'Claimant\'s address proof';

  @override
  String get doc_ddoCertificate =>
      'DDO\'s certificate of premium recovery for the last 6 months (pay policies)';

  @override
  String get doc_policyBondCopy => 'Self-attested copy of the policy bond';

  @override
  String get revivalRulesInfo =>
      'A policy lapses if premiums are unpaid for 6 months (first 3 years) or 12 months (after 3 years). It can be revived within 5 years of the first unpaid premium, with interest at 12% a year and a good health certificate; arrears can be paid in up to 12 instalments.';
}
