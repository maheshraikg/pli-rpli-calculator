// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get appTitle => 'পিএলআই সহায়ক';

  @override
  String get tilePremium => 'প্ৰিমিয়াম';

  @override
  String get tileMaturity => 'ম্যাদ পূৰ্ণ';

  @override
  String get tileCompare => 'তুলনা';

  @override
  String get tileEligibility => 'যোগ্যতা';

  @override
  String get tileMyPolicies => 'মোৰ পলিচি';

  @override
  String get tileQuotation => 'কোটেশ্বন';

  @override
  String get comingSoon => 'সোনকালে আহিব';

  @override
  String get sampleDataBanner => 'নমুনা তথ্য – চৰকাৰী নহয়';

  @override
  String ratesFooter(String financialYear) {
    return 'হাৰ বিত্তীয় বৰ্ষ $financialYear • উৎস: ভাৰতীয় ডাক';
  }

  @override
  String get bonusDisclaimer =>
      'বোনাছৰ হাৰ প্ৰতি বছৰে ঘোষণা কৰা হয় আৰু ভৱিষ্যতৰ বাবে নিশ্চিত নহয়। চূড়ান্ত পৰিমাণ ভাৰতীয় ডাক অনুসৰি।';

  @override
  String get independentDisclaimerTitle => 'আৰম্ভ কৰাৰ আগতে';

  @override
  String get independentDisclaimer =>
      'এইটো এটা স্বতন্ত্ৰ কেলকুলেটৰ, ভাৰতীয় ডাকৰ চৰকাৰী এপ নহয়। সকলো গণনা আপোনাৰ ফোনতে হয়; কোনো তথ্য সংগ্ৰহ কৰা নহয়।';

  @override
  String get understood => 'মই বুজি পালোঁ';

  @override
  String dataLoadError(String error) {
    return 'হাৰৰ তথ্য লোড কৰিব পৰা নগ\'ল: $error';
  }

  @override
  String get maturityTitle => 'ম্যাদ পূৰ্ণ আৰু বোনাছ';

  @override
  String get eligibilityTitle => 'যোগ্যতা পৰীক্ষা';

  @override
  String get premiumTitle => 'প্ৰিমিয়াম কেলকুলেটৰ';

  @override
  String get schemePli => 'ডাক জীৱন বীমা (PLI)';

  @override
  String get schemeRpli => 'গ্ৰাম্য ডাক জীৱন বীমা (RPLI)';

  @override
  String get planLabel => 'আঁচনি';

  @override
  String rulesPendingSuffix(String plan) {
    return '$plan (নিয়ম বাকী)';
  }

  @override
  String get entryAgeLabel => 'প্ৰৱেশৰ বয়স';

  @override
  String get childAgeLabel => 'সন্তানৰ বয়স';

  @override
  String get spouseAgeLabel => 'পতি/পত্নীৰ বয়স';

  @override
  String ageYears(int age) {
    return '$age বছৰ';
  }

  @override
  String get decrease => 'কমাওক';

  @override
  String get increase => 'বঢ়াওক';

  @override
  String get ageBasisNote =>
      'সম্পূৰ্ণ বছৰত বয়স লিখক। ভাৰতীয় ডাকৰ বয়সৰ নিয়ম নিশ্চিত হোৱাৰ পিছত জন্মৰ তাৰিখৰ পৰা বয়স গণনাৰ সুবিধা যোগ কৰা হ\'ব।';

  @override
  String get sumAssuredLabel => 'বীমাৰ পৰিমাণ (₹)';

  @override
  String get maturityAgeLabel => 'ম্যাদ পূৰ্ণ হোৱাৰ বয়স';

  @override
  String get termLabel => 'পলিচিৰ ম্যাদ';

  @override
  String termYears(int years) {
    return '$years বছৰ';
  }

  @override
  String get startDateLabel => 'পলিচি আৰম্ভৰ তাৰিখ';

  @override
  String get resultMaturityValue => 'ম্যাদ পূৰ্ণৰ পৰিমাণ';

  @override
  String get resultTotalBenefits => 'মুঠ প্ৰাপ্য সুবিধা';

  @override
  String get sumAssuredRow => 'বীমাৰ পৰিমাণ';

  @override
  String get termRow => 'ম্যাদ';

  @override
  String bonusRateRow(String fy) {
    return 'বোনাছৰ হাৰ (বি.ব. $fy)';
  }

  @override
  String bonusRateValue(int rate) {
    return 'প্ৰতি ₹1,000ত বছৰি ₹$rate';
  }

  @override
  String get annualBonusRow => 'বাৰ্ষিক বোনাছ';

  @override
  String totalBonusRow(int years) {
    return 'মুঠ বোনাছ ($years বছৰ)';
  }

  @override
  String get terminalBonusRow => 'টাৰ্মিনেল বোনাছ';

  @override
  String projectionNote(String fy) {
    return 'ধৰি লোৱা হৈছে যে বি.ব. $fyৰ বোনাছৰ হাৰ ম্যাদৰ প্ৰতি বছৰত বৰ্তি থাকিব।';
  }

  @override
  String get timelineTitle => 'জীৱিতকালীন সুবিধাৰ সময়সূচী';

  @override
  String timelineYear(int year) {
    return '$year বছৰ';
  }

  @override
  String get timelineSurvival => 'জীৱিতকালীন সুবিধা';

  @override
  String get timelineMaturity =>
      'ম্যাদ পূৰ্ণ: বাকী বীমাৰ পৰিমাণ + সম্পূৰ্ণ বোনাছ';

  @override
  String get timelineDeathNote =>
      'ম্যাদৰ ভিতৰত মৃত্যু হ\'লে: আগতে দিয়া সুবিধা কাটি নোলোৱাকৈ সম্পূৰ্ণ বীমাৰ পৰিমাণ + বোনাছ।';

  @override
  String get notAvailableTitle => 'এতিয়াও উপলব্ধ নহয়';

  @override
  String get rulesPendingBody =>
      'এই আঁচনিৰ নিয়ম ভাৰতীয় ডাকৰ চৰকাৰী চাৰ্কুলাৰৰ পৰা নিশ্চিত হোৱাৰ পিছত গণনা যোগ কৰা হ\'ব।';

  @override
  String get premiumPendingBody =>
      'প্ৰিমিয়াম ভাৰতীয় ডাকৰ চৰকাৰী প্ৰিমিয়াম তালিকাৰ পৰাহে আহিব লাগিব। চৰকাৰী তালিকা যোগ কৰি পৰীক্ষা কৰাৰ পিছত এই কেলকুলেটৰ আৰম্ভ হ\'ব — আনুমানিক প্ৰিমিয়াম দেখুওৱা নহয়।';

  @override
  String missingBonusRate(String fy) {
    return 'বি.ব. $fyৰ বাবে কোনো ঘোষিত বোনাছ হাৰ নাই।';
  }

  @override
  String vEntryAge(String plan, int min, int max, int age) {
    return '$planৰ প্ৰৱেশৰ বয়স $min–$max। আপোনাৰ বয়স: $age';
  }

  @override
  String vChildAge(int min, int max, int age) {
    return 'সন্তানৰ বয়স $min–$max হ\'ব লাগিব। লিখা হৈছে: $age';
  }

  @override
  String vSpouseAge(int min, int max, int age) {
    return 'পতি/পত্নীৰ বয়স $min–$max হ\'ব লাগিব। লিখা হৈছে: $age';
  }

  @override
  String vSaMin(String min, String sa) {
    return 'নূন্যতম বীমাৰ পৰিমাণ $min। লিখা হৈছে: $sa';
  }

  @override
  String vSaMax(String max, String sa) {
    return 'সৰ্বাধিক বীমাৰ পৰিমাণ $max (এই আঁচনিত আপোনাৰ সকলো পলিচি মিলি)। লিখা হৈছে: $sa';
  }

  @override
  String vSaMultiple(String multiple) {
    return 'বীমাৰ পৰিমাণ $multipleৰ গুণিতক হ\'ব লাগিব';
  }

  @override
  String vMaturityNotOffered(int value, String allowed) {
    return 'ম্যাদ পূৰ্ণ হোৱাৰ বয়স $value উপলব্ধ নহয়। ইয়াৰ পৰা বাছক: $allowed';
  }

  @override
  String vCeasingNotOffered(int value, String allowed) {
    return 'প্ৰিমিয়াম দিয়াৰ বয়স $value উপলব্ধ নহয়। ইয়াৰ পৰা বাছক: $allowed';
  }

  @override
  String vTermNotOffered(int value, String allowed) {
    return '$value বছৰৰ ম্যাদ উপলব্ধ নহয়। ইয়াৰ পৰা বাছক: $allowed';
  }

  @override
  String vNotAfterEntry(int value, int age) {
    return 'ম্যাদ পূৰ্ণ হোৱাৰ বয়স $value প্ৰৱেশৰ বয়সতকৈ ($age) বেছি হ\'ব লাগিব।';
  }

  @override
  String vTermRange(int min, int max, int term) {
    return 'ম্যাদ $min–$max বছৰ হ\'ব লাগিব। লিখা হৈছে: $term';
  }

  @override
  String vParentAge(int max, int age) {
    return 'অভিভাৱকৰ বয়স $max বা তাতকৈ কম হ\'ব লাগিব। লিখা হৈছে: $age';
  }

  @override
  String vTooManyChildren(int max) {
    return 'সৰ্বাধিক $maxটা সন্তানক বীমা কৰিব পাৰি।';
  }

  @override
  String vChildSaCap(String cap, String sa) {
    return 'এই সন্তানৰ বাবে সৰ্বাধিক বীমাৰ পৰিমাণ $cap। লিখা হৈছে: $sa';
  }

  @override
  String get vMissing => 'অনুগ্ৰহ কৰি সকলো তথ্য পূৰণ কৰক।';

  @override
  String get eligibilityIntro =>
      'ব্যক্তিজনৰ ক্ষেত্ৰত প্ৰযোজ্য সকলো বিকল্প বাছক, তাৰ পিছত বয়স লিখক।';

  @override
  String get groupsPli => 'PLI — ইয়াৰে যিকোনো এটা';

  @override
  String get groupsRpli => 'RPLI — ইয়াৰে যিকোনো এটা';

  @override
  String get group_central_state_govt => 'কেন্দ্ৰ / ৰাজ্য চৰকাৰী কৰ্মচাৰী';

  @override
  String get group_defence_paramilitary => 'প্ৰতিৰক্ষা / অৰ্ধসামৰিক বাহিনী';

  @override
  String get group_psu => 'ৰাজহুৱা খণ্ডৰ উদ্যোগ';

  @override
  String get group_banks => 'বেংক কৰ্মচাৰী';

  @override
  String get group_local_bodies => 'স্থানীয় সংস্থাৰ কৰ্মচাৰী';

  @override
  String get group_educational_institutions =>
      'শিক্ষানুষ্ঠান (স্বীকৃত ব্যক্তিগত সহ)';

  @override
  String get group_listed_companies => 'তালিকাভুক্ত কোম্পানীৰ কৰ্মচাৰী';

  @override
  String get group_professionals => 'পেছাদাৰী (চিকিৎসক, অভিযন্তা, চিএ, উকীল…)';

  @override
  String get group_graduates_diploma_holders => 'স্নাতক বা ডিপ্লোমাধাৰী';

  @override
  String get group_rural_resident => 'গ্ৰাম্য অঞ্চলৰ বাসিন্দা';

  @override
  String get group_scheduled_bank_savings_account_holder =>
      'অনুসূচিত বেংকত সঞ্চয়ী একাউণ্টধাৰী';

  @override
  String get ageLabel => 'বয়স';

  @override
  String get eligibleFor => 'যোগ্য';

  @override
  String plansAtAge(int age) {
    return '$age বছৰ বয়সত উপলব্ধ আঁচনি';
  }

  @override
  String get childPlansTitle => 'শিশুৰ পলিচি (আপোনাৰ সন্তানৰ বাবে)';

  @override
  String get selectGroupPrompt =>
      'যোগ্য আঁচনি চাবলৈ ওপৰত অন্ততঃ এটা বিকল্প বাছক।';

  @override
  String noPlansAtAge(int age) {
    return '$age বছৰ বয়সত কোনো আঁচনিত প্ৰৱেশ নাই।';
  }

  @override
  String get eligibilityNote =>
      'চূড়ান্ত গ্ৰহণ ভাৰতীয় ডাকৰ স্বাস্থ্য পৰীক্ষা আৰু নথিপত্ৰৰ ওপৰত নিৰ্ভৰশীল।';

  @override
  String get languageLabel => 'ভাষা';

  @override
  String get systemLanguage => 'ডিভাইচৰ ভাষা';

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
