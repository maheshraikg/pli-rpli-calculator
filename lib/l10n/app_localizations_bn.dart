// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'পিএলআই সহায়ক';

  @override
  String get tilePremium => 'প্রিমিয়াম';

  @override
  String get tileMaturity => 'মেয়াদপূর্তি';

  @override
  String get tileCompare => 'তুলনা';

  @override
  String get tileEligibility => 'যোগ্যতা';

  @override
  String get tileMyPolicies => 'আমার পলিসি';

  @override
  String get tileQuotation => 'কোটেশন';

  @override
  String get comingSoon => 'শীঘ্রই আসছে';

  @override
  String get sampleDataBanner => 'নমুনা ডেটা – সরকারি নয়';

  @override
  String ratesFooter(String financialYear) {
    return 'হার অর্থবর্ষ $financialYear • সূত্র: ভারতীয় ডাক';
  }

  @override
  String get bonusDisclaimer =>
      'বোনাসের হার প্রতি বছর ঘোষিত হয় এবং ভবিষ্যতের জন্য নিশ্চিত নয়। চূড়ান্ত অঙ্ক ভারতীয় ডাক অনুযায়ী।';

  @override
  String get independentDisclaimerTitle => 'শুরু করার আগে';

  @override
  String get independentDisclaimer =>
      'এটি একটি স্বতন্ত্র ক্যালকুলেটর, ভারতীয় ডাকের সরকারি অ্যাপ নয়। সমস্ত হিসাব আপনার ফোনেই হয়; কোনো ডেটা সংগ্রহ করা হয় না।';

  @override
  String get understood => 'আমি বুঝেছি';

  @override
  String dataLoadError(String error) {
    return 'হারের ডেটা লোড করা যায়নি: $error';
  }

  @override
  String get maturityTitle => 'মেয়াদপূর্তি ও বোনাস';

  @override
  String get eligibilityTitle => 'যোগ্যতা যাচাই';

  @override
  String get premiumTitle => 'প্রিমিয়াম ক্যালকুলেটর';

  @override
  String get schemePli => 'ডাক জীবন বিমা (PLI)';

  @override
  String get schemeRpli => 'গ্রামীণ ডাক জীবন বিমা (RPLI)';

  @override
  String get planLabel => 'প্রকল্প';

  @override
  String rulesPendingSuffix(String plan) {
    return '$plan (নিয়ম বাকি)';
  }

  @override
  String get entryAgeLabel => 'প্রবেশের বয়স';

  @override
  String get childAgeLabel => 'সন্তানের বয়স';

  @override
  String get spouseAgeLabel => 'স্বামী/স্ত্রীর বয়স';

  @override
  String ageYears(int age) {
    return '$age বছর';
  }

  @override
  String get decrease => 'কমান';

  @override
  String get increase => 'বাড়ান';

  @override
  String get ageBasisNote =>
      'পূর্ণ বছরে বয়স লিখুন। ভারতীয় ডাকের বয়সের নিয়ম নিশ্চিত হলে জন্মতারিখ থেকে বয়স গণনার সুবিধা যোগ করা হবে।';

  @override
  String get sumAssuredLabel => 'বিমার অঙ্ক (₹)';

  @override
  String get maturityAgeLabel => 'মেয়াদপূর্তির বয়স';

  @override
  String get termLabel => 'পলিসির মেয়াদ';

  @override
  String termYears(int years) {
    return '$years বছর';
  }

  @override
  String get startDateLabel => 'পলিসি শুরুর তারিখ';

  @override
  String get resultMaturityValue => 'মেয়াদপূর্তির অঙ্ক';

  @override
  String get resultTotalBenefits => 'মোট প্রাপ্য সুবিধা';

  @override
  String get sumAssuredRow => 'বিমার অঙ্ক';

  @override
  String get termRow => 'মেয়াদ';

  @override
  String bonusRateRow(String fy) {
    return 'বোনাসের হার (অ.ব. $fy)';
  }

  @override
  String bonusRateValue(int rate) {
    return 'প্রতি ₹1,000-এ বছরে ₹$rate';
  }

  @override
  String get annualBonusRow => 'বার্ষিক বোনাস';

  @override
  String totalBonusRow(int years) {
    return 'মোট বোনাস ($years বছর)';
  }

  @override
  String get terminalBonusRow => 'টার্মিনাল বোনাস';

  @override
  String projectionNote(String fy) {
    return 'ধরে নেওয়া হয়েছে অ.ব. $fy-এর বোনাসের হার মেয়াদের প্রতিটি বছরে বহাল থাকবে।';
  }

  @override
  String get timelineTitle => 'জীবিতকালীন সুবিধার সময়সূচি';

  @override
  String timelineYear(int year) {
    return '$year বছর';
  }

  @override
  String get timelineSurvival => 'জীবিতকালীন সুবিধা';

  @override
  String get timelineMaturity =>
      'মেয়াদপূর্তি: বাকি বিমার অঙ্ক + সম্পূর্ণ বোনাস';

  @override
  String get timelineDeathNote =>
      'মেয়াদকালে মৃত্যু হলে: আগে দেওয়া সুবিধা বাদ না দিয়ে সম্পূর্ণ বিমার অঙ্ক + বোনাস।';

  @override
  String get notAvailableTitle => 'এখনও উপলব্ধ নয়';

  @override
  String get rulesPendingBody =>
      'এই প্রকল্পের নিয়ম ভারতীয় ডাকের সরকারি সার্কুলার থেকে নিশ্চিত হলে হিসাব যোগ করা হবে।';

  @override
  String get premiumPendingBody =>
      'প্রিমিয়াম অবশ্যই ভারতীয় ডাকের সরকারি প্রিমিয়াম তালিকা থেকে আসতে হবে। সরকারি তালিকা যোগ ও যাচাই করার পর এই ক্যালকুলেটর চালু হবে — আনুমানিক প্রিমিয়াম দেখানো হয় না।';

  @override
  String missingBonusRate(String fy) {
    return 'অ.ব. $fy-এর জন্য কোনো ঘোষিত বোনাস হার নেই।';
  }

  @override
  String vEntryAge(String plan, int min, int max, int age) {
    return '$plan-এর প্রবেশের বয়স $min–$max। আপনার বয়স: $age';
  }

  @override
  String vChildAge(int min, int max, int age) {
    return 'সন্তানের বয়স $min–$max হতে হবে। লেখা হয়েছে: $age';
  }

  @override
  String vSpouseAge(int min, int max, int age) {
    return 'স্বামী/স্ত্রীর বয়স $min–$max হতে হবে। লেখা হয়েছে: $age';
  }

  @override
  String vSaMin(String min, String sa) {
    return 'ন্যূনতম বিমার অঙ্ক $min। লেখা হয়েছে: $sa';
  }

  @override
  String vSaMax(String max, String sa) {
    return 'সর্বোচ্চ বিমার অঙ্ক $max (এই প্রকল্পে আপনার সব পলিসি মিলিয়ে)। লেখা হয়েছে: $sa';
  }

  @override
  String vSaMultiple(String multiple) {
    return 'বিমার অঙ্ক $multiple-এর গুণিতক হতে হবে';
  }

  @override
  String vMaturityNotOffered(int value, String allowed) {
    return 'মেয়াদপূর্তির বয়স $value উপলব্ধ নয়। এগুলি থেকে বাছুন: $allowed';
  }

  @override
  String vCeasingNotOffered(int value, String allowed) {
    return 'প্রিমিয়াম দেওয়ার বয়স $value উপলব্ধ নয়। এগুলি থেকে বাছুন: $allowed';
  }

  @override
  String vTermNotOffered(int value, String allowed) {
    return '$value বছরের মেয়াদ উপলব্ধ নয়। এগুলি থেকে বাছুন: $allowed';
  }

  @override
  String vNotAfterEntry(int value, int age) {
    return 'মেয়াদপূর্তির বয়স $value প্রবেশের বয়সের ($age) বেশি হতে হবে।';
  }

  @override
  String vTermRange(int min, int max, int term) {
    return 'মেয়াদ $min–$max বছর হতে হবে। লেখা হয়েছে: $term';
  }

  @override
  String vParentAge(int max, int age) {
    return 'অভিভাবকের বয়স $max বা তার কম হতে হবে। লেখা হয়েছে: $age';
  }

  @override
  String vTooManyChildren(int max) {
    return 'সর্বোচ্চ $max সন্তানকে বিমা করা যায়।';
  }

  @override
  String vChildSaCap(String cap, String sa) {
    return 'এই সন্তানের জন্য সর্বোচ্চ বিমার অঙ্ক $cap। লেখা হয়েছে: $sa';
  }

  @override
  String get vMissing => 'অনুগ্রহ করে সব তথ্য পূরণ করুন।';

  @override
  String get eligibilityIntro =>
      'ব্যক্তির ক্ষেত্রে প্রযোজ্য সব বিকল্প বাছুন, তারপর বয়স লিখুন।';

  @override
  String get groupsPli => 'PLI — এর যেকোনো একটি';

  @override
  String get groupsRpli => 'RPLI — এর যেকোনো একটি';

  @override
  String get group_central_state_govt => 'কেন্দ্র / রাজ্য সরকারি কর্মচারী';

  @override
  String get group_defence_paramilitary => 'প্রতিরক্ষা / আধাসামরিক বাহিনী';

  @override
  String get group_psu => 'রাষ্ট্রায়ত্ত সংস্থা';

  @override
  String get group_banks => 'ব্যাংক কর্মচারী';

  @override
  String get group_local_bodies => 'স্থানীয় সংস্থার কর্মচারী';

  @override
  String get group_educational_institutions =>
      'শিক্ষাপ্রতিষ্ঠান (স্বীকৃত বেসরকারি সহ)';

  @override
  String get group_listed_companies => 'তালিকাভুক্ত কোম্পানির কর্মচারী';

  @override
  String get group_professionals =>
      'পেশাদার (ডাক্তার, ইঞ্জিনিয়ার, সিএ, আইনজীবী…)';

  @override
  String get group_graduates_diploma_holders => 'স্নাতক বা ডিপ্লোমাধারী';

  @override
  String get group_rural_resident => 'গ্রামীণ এলাকার বাসিন্দা';

  @override
  String get group_scheduled_bank_savings_account_holder =>
      'তফসিলি ব্যাংকে সঞ্চয় অ্যাকাউন্টধারী';

  @override
  String get ageLabel => 'বয়স';

  @override
  String get eligibleFor => 'যোগ্য';

  @override
  String plansAtAge(int age) {
    return '$age বছর বয়সে উপলব্ধ প্রকল্প';
  }

  @override
  String get childPlansTitle => 'শিশুদের পলিসি (আপনার সন্তানদের জন্য)';

  @override
  String get selectGroupPrompt =>
      'যোগ্য প্রকল্প দেখতে উপরে অন্তত একটি বিকল্প বাছুন।';

  @override
  String noPlansAtAge(int age) {
    return '$age বছর বয়সে কোনো প্রকল্পে প্রবেশ নেই।';
  }

  @override
  String get eligibilityNote =>
      'চূড়ান্ত গ্রহণ ভারতীয় ডাকের স্বাস্থ্য পরীক্ষা ও নথির উপর নির্ভরশীল।';

  @override
  String get languageLabel => 'ভাষা';

  @override
  String get systemLanguage => 'ডিভাইসের ভাষা';

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
