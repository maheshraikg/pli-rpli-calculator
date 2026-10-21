// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'பிஎல்ஐ சகாயக்';

  @override
  String get tilePremium => 'பிரீமியம்';

  @override
  String get tileMaturity => 'முதிர்வு';

  @override
  String get tileCompare => 'ஒப்பீடு';

  @override
  String get tileEligibility => 'தகுதி';

  @override
  String get tileMyPolicies => 'எனது பாலிசிகள்';

  @override
  String get tileQuotation => 'விலைப்புள்ளி';

  @override
  String get comingSoon => 'விரைவில்';

  @override
  String get sampleDataBanner => 'மாதிரி தரவு – அதிகாரப்பூர்வமற்றது';

  @override
  String ratesFooter(String financialYear) {
    return 'விகிதங்கள் நிதியாண்டு $financialYear • ஆதாரம்: இந்திய அஞ்சல்';
  }

  @override
  String get bonusDisclaimer =>
      'போனஸ் விகிதங்கள் ஒவ்வொரு ஆண்டும் அறிவிக்கப்படுகின்றன; எதிர்காலத்திற்கு உத்தரவாதம் இல்லை. இறுதித் தொகை இந்திய அஞ்சல் படி.';

  @override
  String get independentDisclaimerTitle => 'தொடங்கும் முன்';

  @override
  String get independentDisclaimer =>
      'இது ஒரு சுயாதீன கணிப்பான், இந்திய அஞ்சலின் அதிகாரப்பூர்வ செயலி அல்ல. எல்லா கணக்கீடுகளும் உங்கள் தொலைபேசியிலேயே நடைபெறும்; எந்தத் தரவும் சேகரிக்கப்படுவதில்லை.';

  @override
  String get understood => 'புரிந்தது';

  @override
  String dataLoadError(String error) {
    return 'விகிதத் தரவை ஏற்ற முடியவில்லை: $error';
  }

  @override
  String get maturityTitle => 'முதிர்வு & போனஸ்';

  @override
  String get eligibilityTitle => 'தகுதி சரிபார்ப்பு';

  @override
  String get premiumTitle => 'பிரீமியம் கணிப்பான்';

  @override
  String get schemePli => 'அஞ்சல் ஆயுள் காப்பீடு (PLI)';

  @override
  String get schemeRpli => 'கிராமிய அஞ்சல் ஆயுள் காப்பீடு (RPLI)';

  @override
  String get planLabel => 'திட்டம்';

  @override
  String rulesPendingSuffix(String plan) {
    return '$plan (விதிகள் நிலுவையில்)';
  }

  @override
  String get entryAgeLabel => 'நுழைவு வயது';

  @override
  String get childAgeLabel => 'குழந்தையின் வயது';

  @override
  String get spouseAgeLabel => 'வாழ்க்கைத் துணையின் வயது';

  @override
  String ageYears(int age) {
    return '$age வயது';
  }

  @override
  String get decrease => 'குறை';

  @override
  String get increase => 'கூட்டு';

  @override
  String get ageBasisNote =>
      'முழு ஆண்டுகளில் வயதை உள்ளிடவும். இந்திய அஞ்சலின் வயது விதி உறுதியானதும் பிறந்த தேதியிலிருந்து வயது கணக்கிடும் வசதி சேர்க்கப்படும்.';

  @override
  String get sumAssuredLabel => 'காப்பீட்டுத் தொகை (₹)';

  @override
  String get maturityAgeLabel => 'முதிர்வு வயது';

  @override
  String get termLabel => 'பாலிசி காலம்';

  @override
  String termYears(int years) {
    return '$years ஆண்டுகள்';
  }

  @override
  String get startDateLabel => 'பாலிசி தொடக்க தேதி';

  @override
  String get resultMaturityValue => 'முதிர்வுத் தொகை';

  @override
  String get resultTotalBenefits => 'பெறும் மொத்த பலன்கள்';

  @override
  String get sumAssuredRow => 'காப்பீட்டுத் தொகை';

  @override
  String get termRow => 'காலம்';

  @override
  String bonusRateRow(String fy) {
    return 'போனஸ் விகிதம் (நி.ஆ. $fy)';
  }

  @override
  String bonusRateValue(int rate) {
    return 'ஒவ்வொரு ₹1,000க்கும் ஆண்டுக்கு ₹$rate';
  }

  @override
  String get annualBonusRow => 'ஆண்டு போனஸ்';

  @override
  String totalBonusRow(int years) {
    return 'மொத்த போனஸ் ($years ஆண்டுகள்)';
  }

  @override
  String get terminalBonusRow => 'டெர்மினல் போனஸ்';

  @override
  String projectionNote(String fy) {
    return 'காலத்தின் ஒவ்வொரு ஆண்டும் நி.ஆ. $fy போனஸ் விகிதமே தொடரும் என்று கருதப்படுகிறது.';
  }

  @override
  String get timelineTitle => 'உயிர்வாழ் பலன் கால அட்டவணை';

  @override
  String timelineYear(int year) {
    return '$yearஆம் ஆண்டு';
  }

  @override
  String get timelineSurvival => 'உயிர்வாழ் பலன்';

  @override
  String get timelineMaturity =>
      'முதிர்வு: மீதமுள்ள காப்பீட்டுத் தொகை + முழு போனஸ்';

  @override
  String get timelineDeathNote =>
      'காலத்தின்போது மரணம் நேர்ந்தால்: ஏற்கனவே வழங்கிய பலன்களைக் கழிக்காமல் முழு காப்பீட்டுத் தொகை + போனஸ்.';

  @override
  String get notAvailableTitle => 'இன்னும் கிடைக்கவில்லை';

  @override
  String get rulesPendingBody =>
      'இந்தத் திட்டத்தின் விதிகள் இந்திய அஞ்சலின் அதிகாரப்பூர்வ சுற்றறிக்கையிலிருந்து உறுதியானதும் கணக்கீடு சேர்க்கப்படும்.';

  @override
  String get premiumPendingBody =>
      'பிரீமியம் இந்திய அஞ்சலின் அதிகாரப்பூர்வ பிரீமியம் அட்டவணைகளிலிருந்தே வர வேண்டும். அதிகாரப்பூர்வ அட்டவணைகள் சேர்க்கப்பட்டு சரிபார்க்கப்பட்ட பின் இந்தக் கணிப்பான் இயங்கும் — மதிப்பீட்டு பிரீமியம் காட்டப்படாது.';

  @override
  String missingBonusRate(String fy) {
    return 'நி.ஆ. $fyக்கு அறிவிக்கப்பட்ட போனஸ் விகிதம் இல்லை.';
  }

  @override
  String vEntryAge(String plan, int min, int max, int age) {
    return '$plan நுழைவு வயது $min–$max. உங்கள் வயது: $age';
  }

  @override
  String vChildAge(int min, int max, int age) {
    return 'குழந்தையின் வயது $min–$max ஆக இருக்க வேண்டும். உள்ளிட்டது: $age';
  }

  @override
  String vSpouseAge(int min, int max, int age) {
    return 'வாழ்க்கைத் துணையின் வயது $min–$max ஆக இருக்க வேண்டும். உள்ளிட்டது: $age';
  }

  @override
  String vSaMin(String min, String sa) {
    return 'குறைந்தபட்ச காப்பீட்டுத் தொகை $min. உள்ளிட்டது: $sa';
  }

  @override
  String vSaMax(String max, String sa) {
    return 'அதிகபட்ச காப்பீட்டுத் தொகை $max (இத்திட்டத்தில் உங்கள் அனைத்து பாலிசிகளும் சேர்த்து). உள்ளிட்டது: $sa';
  }

  @override
  String vSaMultiple(String multiple) {
    return 'காப்பீட்டுத் தொகை $multipleஇன் மடங்காக இருக்க வேண்டும்';
  }

  @override
  String vMaturityNotOffered(int value, String allowed) {
    return 'முதிர்வு வயது $value கிடைக்காது. இவற்றில் தேர்ந்தெடுக்கவும்: $allowed';
  }

  @override
  String vCeasingNotOffered(int value, String allowed) {
    return 'பிரீமியம் செலுத்தும் வயது $value கிடைக்காது. இவற்றில் தேர்ந்தெடுக்கவும்: $allowed';
  }

  @override
  String vTermNotOffered(int value, String allowed) {
    return '$value ஆண்டு காலம் கிடைக்காது. இவற்றில் தேர்ந்தெடுக்கவும்: $allowed';
  }

  @override
  String vNotAfterEntry(int value, int age) {
    return 'முதிர்வு வயது $value நுழைவு வயதை ($age) விட அதிகமாக இருக்க வேண்டும்.';
  }

  @override
  String vTermRange(int min, int max, int term) {
    return 'காலம் $min–$max ஆண்டுகள் இருக்க வேண்டும். உள்ளிட்டது: $term';
  }

  @override
  String vParentAge(int max, int age) {
    return 'பெற்றோரின் வயது $max அல்லது குறைவாக இருக்க வேண்டும். உள்ளிட்டது: $age';
  }

  @override
  String vTooManyChildren(int max) {
    return 'அதிகபட்சம் $max குழந்தைகளுக்கு மட்டுமே காப்பீடு செய்யலாம்.';
  }

  @override
  String vChildSaCap(String cap, String sa) {
    return 'இந்தக் குழந்தைக்கு அதிகபட்ச காப்பீட்டுத் தொகை $cap. உள்ளிட்டது: $sa';
  }

  @override
  String get vMissing => 'அனைத்து விவரங்களையும் நிரப்பவும்.';

  @override
  String get eligibilityIntro =>
      'நபருக்குப் பொருந்தும் அனைத்தையும் தேர்ந்தெடுத்து, பின் வயதை உள்ளிடவும்.';

  @override
  String get groupsPli => 'PLI — இவற்றில் ஏதேனும் ஒன்று';

  @override
  String get groupsRpli => 'RPLI — இவற்றில் ஏதேனும் ஒன்று';

  @override
  String get group_central_state_govt => 'மத்திய / மாநில அரசு ஊழியர்';

  @override
  String get group_defence_paramilitary => 'பாதுகாப்பு / துணை ராணுவப் படை';

  @override
  String get group_psu => 'பொதுத்துறை நிறுவனம்';

  @override
  String get group_banks => 'வங்கி ஊழியர்';

  @override
  String get group_local_bodies => 'உள்ளாட்சி அமைப்பு ஊழியர்';

  @override
  String get group_educational_institutions =>
      'கல்வி நிறுவனம் (அங்கீகரிக்கப்பட்ட தனியார் உட்பட)';

  @override
  String get group_listed_companies => 'பட்டியலிடப்பட்ட நிறுவன ஊழியர்';

  @override
  String get group_professionals =>
      'தொழில் வல்லுநர் (மருத்துவர், பொறியாளர், சிஏ, வழக்கறிஞர்…)';

  @override
  String get group_graduates_diploma_holders =>
      'பட்டதாரி அல்லது பட்டயம் பெற்றவர்';

  @override
  String get group_rural_resident => 'கிராமப்புற வாசி';

  @override
  String get group_scheduled_bank_savings_account_holder =>
      'பட்டியலிடப்பட்ட வங்கியில் சேமிப்புக் கணக்கு வைத்திருப்பவர்';

  @override
  String get ageLabel => 'வயது';

  @override
  String get eligibleFor => 'தகுதியுடையவர்';

  @override
  String plansAtAge(int age) {
    return '$age வயதில் கிடைக்கும் திட்டங்கள்';
  }

  @override
  String get childPlansTitle => 'குழந்தைகள் பாலிசிகள் (உங்கள் குழந்தைகளுக்கு)';

  @override
  String get selectGroupPrompt =>
      'தகுதியான திட்டங்களைக் காண மேலே குறைந்தது ஒன்றைத் தேர்ந்தெடுக்கவும்.';

  @override
  String noPlansAtAge(int age) {
    return '$age வயதில் எந்தத் திட்டத்திலும் நுழைவு இல்லை.';
  }

  @override
  String get eligibilityNote =>
      'இறுதி ஏற்பு இந்திய அஞ்சலின் மருத்துவப் பரிசோதனை மற்றும் ஆவணங்களுக்கு உட்பட்டது.';

  @override
  String get languageLabel => 'மொழி';

  @override
  String get systemLanguage => 'சாதன மொழி';

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
