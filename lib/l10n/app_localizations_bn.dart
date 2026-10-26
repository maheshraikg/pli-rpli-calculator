// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'PLI & RPLI ক্যালকুলেটর';

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
  String get tileAfford => 'কতটা সম্ভব';

  @override
  String get tileTools => 'পলিসি টুল';

  @override
  String get tilePlans => 'প্রকল্পসমূহ';

  @override
  String get tileAbout => 'সম্পর্কে';

  @override
  String get dobLabel => 'জন্মতারিখ';

  @override
  String get useAgeInstead => 'তার বদলে বয়স লিখুন';

  @override
  String get useDobInstead => 'জন্মতারিখ লিখুন';

  @override
  String ageFromDobNearest(int age) {
    return 'শুরুর তারিখে প্রবেশের বয়স: $age (নিকটতম জন্মদিনের বয়স)';
  }

  @override
  String ageFromDobLast(int age) {
    return 'শুরুর তারিখে প্রবেশের বয়স: $age (শেষ জন্মদিনের বয়স)';
  }

  @override
  String get premiumCeasingAgeLabel => 'প্রিমিয়াম দেওয়ার বয়স';

  @override
  String get frequencyLabel => 'প্রদানের পর্যায়';

  @override
  String get freqMonthly => 'মাসিক';

  @override
  String get freqQuarterly => 'ত্রৈমাসিক';

  @override
  String get freqHalfYearly => 'ষাণ্মাসিক';

  @override
  String get freqYearly => 'বার্ষিক';

  @override
  String get premiumPerInstalment => 'কিস্তি প্রতি প্রিমিয়াম';

  @override
  String get tablePremiumRow => 'তালিকার প্রিমিয়াম';

  @override
  String get saRebateRow => 'বিমার অঙ্কে ছাড়';

  @override
  String totalPremiumRow(int count) {
    return 'মোট প্রিমিয়াম ($count কিস্তি)';
  }

  @override
  String get payingTermRow => 'প্রিমিয়াম দেওয়ার মেয়াদ';

  @override
  String get lifeCoverRow => 'জীবন সুরক্ষা';

  @override
  String get allFrequenciesTitle => 'সব প্রদানের পর্যায়';

  @override
  String get notInTable => 'সরকারি তালিকায় উপলব্ধ নয়';

  @override
  String get noTableForPlan => 'এই প্রকল্পের প্রিমিয়াম তালিকা এখনও যোগ হয়নি।';

  @override
  String get illustrationTitle => 'বছরভিত্তিক সুবিধার বিবরণ';

  @override
  String get colYear => 'বছর';

  @override
  String get colPremiumsPaid => 'প্রদত্ত প্রিমিয়াম';

  @override
  String get colBonus => 'বোনাস';

  @override
  String get colLifeCover => 'জীবন সুরক্ষা';

  @override
  String get makeQuotation => 'কোটেশন তৈরি করুন';

  @override
  String get gstNote =>
      'জিএসটি: 22 সেপ্টেম্বর 2025 বা পরে দেওয়া ব্যক্তিগত জীবন বিমার প্রিমিয়ামে শূন্য।';

  @override
  String get chartTitle => 'প্রদত্ত প্রিমিয়াম বনাম সুবিধা';

  @override
  String get chartPaid => 'মোট প্রিমিয়াম';

  @override
  String get chartReceived => 'মোট সুবিধা';

  @override
  String get showTable => 'বছরভিত্তিক তালিকা দেখান';

  @override
  String get hideTable => 'বছরভিত্তিক তালিকা লুকান';

  @override
  String get reverseTitle => 'আমার সাধ্য কতটা?';

  @override
  String get budgetLabel => 'কিস্তি প্রতি বাজেট (₹)';

  @override
  String get reverseIntro =>
      'আপনি কত দিতে পারেন লিখুন। প্রতিটি প্রকল্প বিকল্প সেই অঙ্কের মধ্যে সর্বোচ্চ বিমার অঙ্ক দেখায়।';

  @override
  String optMaturityAge(int age) {
    return '$age বছরে মেয়াদপূর্তি';
  }

  @override
  String optCeasingAge(int age) {
    return '$age বছর পর্যন্ত প্রিমিয়াম';
  }

  @override
  String optTerm(int years) {
    return '$years বছরের মেয়াদ';
  }

  @override
  String get reverseNone => 'এই বয়সে এই বাজেটে কোনো প্রকল্প মেলে না।';

  @override
  String get saShort => 'বিমার অঙ্ক';

  @override
  String get premiumShort => 'প্রিমিয়াম';

  @override
  String get compareTitle => 'প্রকল্পের তুলনা';

  @override
  String optionN(int n) {
    return 'বিকল্প $n';
  }

  @override
  String get addOption => 'বিকল্প যোগ করুন';

  @override
  String get removeOption => 'বিকল্প সরান';

  @override
  String get maturityShort => 'মেয়াদপূর্তি / সুবিধা';

  @override
  String get totalPaidShort => 'মোট প্রদান';

  @override
  String get lifeCoverShort => 'জীবন সুরক্ষা';

  @override
  String get comparisonTitle => 'তুলনা';

  @override
  String get toolsTitle => 'পলিসি টুল';

  @override
  String get tabLoan => 'ঋণ';

  @override
  String get tabPaidUp => 'পেইড-আপ';

  @override
  String get tabRevival => 'পুনরুজ্জীবন';

  @override
  String get tabAdvance => 'অগ্রিম';

  @override
  String get yearsInForceLabel => 'পলিসি কত বছর চালু আছে';

  @override
  String get loanAmountLabel => 'ঋণের অঙ্ক (₹)';

  @override
  String get loanMonthsLabel => 'পরিশোধ পর্যন্ত মাস';

  @override
  String monthsValue(int months) {
    return '$months মাস';
  }

  @override
  String get loanInterestRow => 'সুদ';

  @override
  String get loanTotalRow => 'মোট পরিশোধ';

  @override
  String loanRateNote(String rate) {
    return 'বছরে $rate% সুদ, ষাণ্মাসিক চক্রবৃদ্ধি।';
  }

  @override
  String loanAvailableAfter(int years) {
    return '$years বছর পরে ঋণ পাওয়া যায়।';
  }

  @override
  String get loanNotOffered => 'এই প্রকল্পে ঋণের সুবিধা নেই।';

  @override
  String get loanEligibleYes => 'ঋণের যোগ্য';

  @override
  String get loanEligibleNo => 'এখনও ঋণের যোগ্য নয়';

  @override
  String get loanAmountNote =>
      'সর্বোচ্চ ঋণ সমর্পণ মূল্যের উপর নির্ভর করে, যা ভারতীয় ডাক হিসাব করে।';

  @override
  String get premiumsPaidLabel => 'প্রদত্ত কিস্তি';

  @override
  String get premiumsPayableLabel => 'মোট দেয় কিস্তি';

  @override
  String get paidUpSaRow => 'পেইড-আপ বিমার অঙ্ক';

  @override
  String get paidUpNote =>
      'আনুমানিক। অর্জিত বোনাস ভারতীয় ডাকের রেকর্ড অনুযায়ী যোগ হয়। সমর্পণ মূল্যের জন্য সরকারি সমর্পণ গুণক লাগে, তা হিসাব করা হয়নি।';

  @override
  String paidUpNotEligible(int years) {
    return 'পলিসি $years বছর চালু থাকার পরেই পেইড-আপ হতে পারে।';
  }

  @override
  String get paidUpInvalid =>
      'প্রদত্ত কিস্তি দেয় কিস্তির চেয়ে বেশি হতে পারে না।';

  @override
  String get instalmentLabel => 'কিস্তি প্রতি প্রিমিয়াম (₹)';

  @override
  String get firstUnpaidLabel => 'প্রথম বকেয়া কিস্তির তারিখ';

  @override
  String get payDateLabel => 'প্রদানের তারিখ';

  @override
  String get missedRow => 'বকেয়া কিস্তি';

  @override
  String get arrearsRow => 'বকেয়া';

  @override
  String get defaultFeeRow => 'বিলম্ব ফি';

  @override
  String get totalPayableRow => 'মোট দেয়';

  @override
  String revivalNote(String percent) {
    return 'বিলম্বের প্রতি মাসে কিস্তির $percent% বিলম্ব ফি। দীর্ঘ সময় পরে পুনরুজ্জীবনে ডাক্তারি শংসাপত্র লাগতে পারে।';
  }

  @override
  String revivalLine(String date, int months, String fee) {
    return 'বকেয়া $date • $months মাস দেরি • ফি $fee';
  }

  @override
  String get nothingDue => 'সেই তারিখে কিছু বকেয়া নেই।';

  @override
  String get monthsAdvanceLabel => 'অগ্রিম দেওয়া মাস';

  @override
  String rebateRow(String percent) {
    return 'ছাড় ($percent%)';
  }

  @override
  String get amountDueRow => 'দেয় অঙ্ক';

  @override
  String get payableRow => 'আপনি দেবেন';

  @override
  String get advanceNote =>
      'দেখানো ছাড় হারের তথ্যের অগ্রিম প্রদান ছাড় অনুযায়ী; প্রিমিয়াম অগ্রিম দিলে প্রযোজ্য।';

  @override
  String get policiesTitle => 'আমার পলিসি';

  @override
  String get noPolicies => 'এখনও কোনো পলিসি সংরক্ষিত নেই। যোগ করতে + চাপুন।';

  @override
  String get addPolicy => 'পলিসি যোগ করুন';

  @override
  String get editPolicy => 'পলিসি সম্পাদনা';

  @override
  String get holderNameLabel => 'পলিসিধারীর নাম';

  @override
  String get policyNumberLabel => 'পলিসি নম্বর';

  @override
  String get premiumAmountLabel => 'কিস্তি প্রতি প্রিমিয়াম (₹, রসিদ অনুযায়ী)';

  @override
  String get save => 'সংরক্ষণ';

  @override
  String get delete => 'মুছুন';

  @override
  String get deleteConfirm => 'এই পলিসি মুছবেন?';

  @override
  String get cancel => 'বাতিল';

  @override
  String nextDue(String date) {
    return 'পরবর্তী কিস্তি: $date';
  }

  @override
  String get noMoreDues => 'সব প্রিমিয়াম দেওয়া হয়েছে';

  @override
  String get remindersLabel => 'প্রতি কিস্তির 3 দিন আগে মনে করান';

  @override
  String get remindersDenied => 'এই অ্যাপের বিজ্ঞপ্তি বন্ধ আছে।';

  @override
  String get accruedBonusRow => 'এখন পর্যন্ত জমা বোনাস';

  @override
  String bonusMissingYears(String years) {
    return 'অ.ব. $years-এর বোনাস হার অ্যাপের তথ্যে নেই; মোট অঙ্কে সেই বছরগুলি ধরা হয়নি।';
  }

  @override
  String maturityOn(String date) {
    return '$date তারিখে মেয়াদপূর্তি';
  }

  @override
  String get upcomingDues => 'আসন্ন কিস্তির তারিখ';

  @override
  String get yearsInForceRow => 'চালু বছর';

  @override
  String get reminderTitle => 'পিএলআই প্রিমিয়াম বকেয়া';

  @override
  String reminderBody(String name, String amount, String date, String number) {
    return '$name: $amount $date তারিখে দেয় (পলিসি $number)';
  }

  @override
  String get savedLocally => 'শুধু এই ফোনে সংরক্ষিত।';

  @override
  String get requiredField => 'আবশ্যক';

  @override
  String get projectedMaturityRow => 'আনুমানিক মেয়াদপূর্তির অঙ্ক';

  @override
  String get quotationTitle => 'কোটেশন';

  @override
  String get customerNameLabel => 'গ্রাহকের নাম';

  @override
  String get agentNameLabel => 'প্রস্তুতকারী (ঐচ্ছিক)';

  @override
  String get sharePdf => 'PDF শেয়ার করুন';

  @override
  String get shareImage => 'ছবি শেয়ার করুন';

  @override
  String get quotationHeading => 'প্রিমিয়াম কোটেশন';

  @override
  String preparedOn(String date) {
    return '$date তারিখে প্রস্তুত';
  }

  @override
  String quotationFor(String name) {
    return 'প্রাপক: $name';
  }

  @override
  String preparedBy(String name) {
    return 'প্রস্তুতকারী: $name';
  }

  @override
  String get quotationInvalid =>
      'কোটেশন তৈরি করতে প্রকল্পের বিবরণ সম্পূর্ণ করুন।';

  @override
  String get planDetailsTitle => 'প্রকল্পের বিবরণ';

  @override
  String get planInfoTitle => 'প্রকল্পের তথ্য';

  @override
  String entryAgeInfo(int min, int max) {
    return 'প্রবেশের বয়স: $min–$max';
  }

  @override
  String maturityAgesInfo(String ages) {
    return 'মেয়াদপূর্তির বয়স: $ages';
  }

  @override
  String ceasingAgesInfo(String ages, int age) {
    return 'প্রিমিয়াম দেওয়ার বয়স: $ages; $age বছরে মেয়াদপূর্তি';
  }

  @override
  String termsInfo(String terms) {
    return 'মেয়াদ: $terms বছর';
  }

  @override
  String survivalInfo(String list) {
    return 'মানি ব্যাক: $list';
  }

  @override
  String survivalItem(int percent, int year) {
    return '$year বছরে $percent%';
  }

  @override
  String loanInfo(int years) {
    return '$years বছর পরে ঋণ';
  }

  @override
  String get noLoanInfo => 'ঋণ নেই';

  @override
  String surrenderInfo(int years) {
    return '$years বছর পরে সমর্পণ';
  }

  @override
  String get noSurrenderInfo => 'সমর্পণ নেই';

  @override
  String bonusInfo(String fy, int rate) {
    return 'অ.ব. $fy বোনাস: প্রতি ₹1,000-এ বছরে ₹$rate';
  }

  @override
  String saLimitInfo(String min, String max) {
    return 'বিমার অঙ্ক: $min – $max';
  }

  @override
  String jointInfo(int min, int max, int tmin, int tmax) {
    return 'প্রত্যেক স্বামী/স্ত্রীর বয়স $min–$max; মেয়াদ $tmin–$tmax বছর';
  }

  @override
  String childInfo(int min, int max, int parent, int children, String cap) {
    return 'সন্তানের বয়স $min–$max; অভিভাবকের বয়স $parent পর্যন্ত; সর্বোচ্চ $children সন্তান; বিমার অঙ্ক $cap পর্যন্ত';
  }

  @override
  String conversionInfo(int years) {
    return '$years বছর পরে এনডাওমেন্ট বিমায় রূপান্তর করা যায়';
  }

  @override
  String get faqTitle => 'সাধারণ প্রশ্ন';

  @override
  String get faq1q => 'বোনাস কি নিশ্চিত?';

  @override
  String get faq1a =>
      'না। ভারতীয় ডাক প্রতি বছর বোনাস হার ঘোষণা করে। এখানকার হিসাব ভবিষ্যতের প্রতিটি বছরের জন্য সর্বশেষ ঘোষিত হার ধরে নেয়।';

  @override
  String get faq2q => 'প্রিমিয়াম কোথা থেকে আসে?';

  @override
  String get faq2a =>
      'ভারতীয় ডাকের সরকারি প্রিমিয়াম তালিকা থেকে। অ্যাপ কখনও প্রিমিয়াম অনুমান করে না।';

  @override
  String get faq3q => 'আয়কর সুবিধা আছে কি?';

  @override
  String get faq3a =>
      'প্রিমিয়াম ধারা 80C (পুরোনো কর ব্যবস্থা) অনুযায়ী যোগ্য হতে পারে এবং মেয়াদপূর্তির অঙ্ক ধারা 10(10D) অনুযায়ী শর্তসাপেক্ষে করমুক্ত হতে পারে। এটি কর পরামর্শ নয়।';

  @override
  String get faq4q => 'প্রিমিয়ামে কি জিএসটি লাগে?';

  @override
  String get faq4a =>
      'না। 22 সেপ্টেম্বর 2025 থেকে ব্যক্তিগত জীবন বিমার প্রিমিয়ামে জিএসটি শূন্য।';

  @override
  String get faq5q => 'PLI ও RPLI কে নিতে পারেন?';

  @override
  String get faq5a =>
      'PLI: সরকারি ও আধা-সরকারি কর্মচারী, পেশাদার, স্নাতক, ডিপ্লোমাধারী এবং ভারতীয় ডাকের তালিকাভুক্ত অন্যরা। RPLI: গ্রামীণ বাসিন্দা এবং তফসিলি ব্যাংকের সঞ্চয় অ্যাকাউন্টধারী।';

  @override
  String get aboutTitle => 'সম্পর্কে';

  @override
  String get privacyTitle => 'গোপনীয়তা';

  @override
  String get privacyBody =>
      'PLI & RPLI ক্যালকুলেটর কোনো তথ্য সংগ্রহ করে না। আপনি যা লেখেন বা সংরক্ষণ করেন, সবই এই ফোনে থাকে। অ্যাকাউন্ট বা ইন্টারনেট লাগে না।';

  @override
  String get dataSourceTitle => 'হারের তথ্য';

  @override
  String dataSourceBody(String id, String date, String source) {
    return 'নিয়ম $id, $date থেকে কার্যকর। সূত্র: $source';
  }

  @override
  String get provisionalTitle => 'যে নিয়ম এখনও নিশ্চিত হয়নি';

  @override
  String get provisionalIntro =>
      'ভারতীয় ডাকের সরকারি সার্কুলার থেকে নিশ্চিত না হওয়া পর্যন্ত এই নিয়মগুলি কার্যকরী অনুমান (ইংরেজিতে):';

  @override
  String get checkUpdates => 'হার আপডেট দেখুন';

  @override
  String updateInstalled(int version) {
    return 'হারের তথ্য সংস্করণ $version-এ আপডেট হয়েছে।';
  }

  @override
  String get updateCurrent => 'হারের তথ্য হালনাগাদ আছে।';

  @override
  String updateFailed(String error) {
    return 'আপডেট ব্যর্থ; বর্তমান হার বহাল। $error';
  }

  @override
  String get sampleDataNote =>
      'প্রিমিয়াম তালিকাগুলি নমুনা তথ্য, ভারতীয় ডাকের সরকারি অঙ্ক নয়।';

  @override
  String appVersion(String version) {
    return 'সংস্করণ $version';
  }

  @override
  String get homeTagline => 'প্রিমিয়াম, বোনাস ও মেয়াদপূর্তি — অফলাইনেও';

  @override
  String get quickPremiumTitle => 'প্রিমিয়াম হিসাব করুন';

  @override
  String get quickPremiumBody =>
      'যেকোনো প্রকল্প, বয়স ও বিমার অঙ্ক — সব পর্যায়';

  @override
  String get sectionCalculators => 'ক্যালকুলেটর';

  @override
  String get sectionServicing => 'পলিসি পরিষেবা';

  @override
  String get sectionLearn => 'জানুন';

  @override
  String get descPremium => 'প্রতিটি পর্যায়ের প্রিমিয়াম';

  @override
  String get descMaturity => 'বোনাস ও মেয়াদপূর্তির অঙ্ক';

  @override
  String get descCompare => 'প্রকল্প পাশাপাশি';

  @override
  String get descAfford => 'আপনার বাজেটে সেরা সুরক্ষা';

  @override
  String get descPolicies => 'সংরক্ষিত পলিসি ও বকেয়া তারিখ';

  @override
  String get descTools => 'ঋণ, পুনরুজ্জীবন, পেইড-আপ';

  @override
  String get descQuotation => 'PDF কোটেশন শেয়ার করুন';

  @override
  String get descEligibility => 'PLI বা RPLI কে নিতে পারেন';

  @override
  String get descPlans => 'প্রকল্পের নিয়ম ও প্রশ্ন';

  @override
  String get descAbout => 'গোপনীয়তা ও হারের তথ্য';

  @override
  String get sectionPersonTitle => 'পলিসিধারী';

  @override
  String get sectionCoverTitle => 'সুরক্ষা ও প্রদান';

  @override
  String get tileForms => 'ফর্ম';

  @override
  String get descForms => 'ফর্ম, তালিকা, চিঠি';

  @override
  String get formsTitle => 'ফর্ম ও চিঠি';

  @override
  String get formsIntro =>
      'প্রতিটি PLI / RPLI অনুরোধে কী লাগে, ফর্ম কোথায় পাবেন, এবং তৈরি অনুরোধ-চিঠি।';

  @override
  String get formsVerifyNote =>
      'নথির তালিকা শুধু নির্দেশিকা, বদলাতে পারে। জমা দেওয়ার আগে আপনার ডাকঘরে নিশ্চিত হয়ে নিন।';

  @override
  String get whereToGetTitle => 'ফর্ম কোথায় পাবেন';

  @override
  String get whereToGetBody =>
      'যেকোনো ডাকঘর বা CPC-তে বিনামূল্যে, অথবা ভারতীয় ডাক PLI ওয়েবসাইট থেকে ডাউনলোড করুন।';

  @override
  String get documentsTitle => 'প্রস্তুত রাখার নথি';

  @override
  String get openOfficialForm => 'সরকারি ফর্ম খুলুন';

  @override
  String get getFromIndiaPost => 'ভারতীয় ডাক থেকে ফর্ম নিন';

  @override
  String get detailsSheetTitle => 'পলিসি বিবরণ পত্র';

  @override
  String get detailsSheetIntro =>
      'সরকারি ফর্মে লেখার জন্য আপনার সংরক্ষিত পলিসির বিবরণ এক জায়গায়।';

  @override
  String get writeLetterTitle => 'অনুরোধ-চিঠি লিখুন';

  @override
  String get writeLetterIntro =>
      'আপনার সংরক্ষিত পলিসি থেকে পূরণ করা, পোস্টমাস্টারের জন্য তৈরি চিঠি।';

  @override
  String get choosePolicy => 'সংরক্ষিত পলিসি';

  @override
  String get noSavedPolicies => 'আগে আমার পলিসিতে একটি পলিসি সংরক্ষণ করুন।';

  @override
  String get toOfficeLabel => 'প্রতি (ডাকঘর / CPC)';

  @override
  String get yourAddressLabel => 'আপনার ঠিকানা';

  @override
  String get phoneLabel => 'ফোন';

  @override
  String get placeLabel => 'স্থান';

  @override
  String get nomineeNameLabel => 'নতুন নমিনির নাম';

  @override
  String get nomineeRelationLabel => 'সম্পর্ক';

  @override
  String get nomineeAgeLabel => 'নমিনির বয়স';

  @override
  String get newAddressLabel => 'নতুন ঠিকানা';

  @override
  String get bondLost => 'হারিয়ে গেছে';

  @override
  String get bondDamaged => 'ক্ষতিগ্রস্ত';

  @override
  String get lapsedFromLabel => 'প্রিমিয়াম বকেয়া কবে থেকে';

  @override
  String get shareAsText => 'লেখা হিসেবে শেয়ার করুন';

  @override
  String get copyText => 'কপি করুন';

  @override
  String get copied => 'কপি হয়েছে';

  @override
  String get letterEnglishNote =>
      'চিঠিগুলি ইংরেজিতে — ভারতীয় ডাকের চিঠিপত্রের সাধারণ ভাষা। জমা দেওয়ার আগে সই করুন।';

  @override
  String get formsOfficialNote =>
      'এই অ্যাপ ভারতীয় ডাক নয়। নির্ধারিত ফর্ম থাকলে সর্বদা ভারতীয় ডাকের ফর্মই জমা দিন।';

  @override
  String get svc_proposal => 'নতুন পলিসি প্রস্তাব';

  @override
  String get svcDesc_proposal => 'নতুন PLI বা RPLI পলিসির জন্য আবেদন';

  @override
  String get svc_maturity => 'মেয়াদপূর্তি দাবি';

  @override
  String get svcDesc_maturity => 'পলিসির মেয়াদ পূর্ণ হলে অঙ্কের দাবি';

  @override
  String get svc_survival => 'জীবিতকালীন সুবিধা দাবি';

  @override
  String get svcDesc_survival => 'মানি-ব্যাক কিস্তি (সুমঙ্গল, গ্রাম প্রিয়া)';

  @override
  String get svc_death => 'মৃত্যু দাবি';

  @override
  String get svcDesc_death => 'নমিনি বা আইনি উত্তরাধিকারীর দাবি';

  @override
  String get svc_loan => 'পলিসি ঋণ';

  @override
  String get svcDesc_loan => 'আপনার পলিসির বিপরীতে ঋণ নিন';

  @override
  String get svc_surrender => 'সমর্পণ';

  @override
  String get svcDesc_surrender => 'সমর্পণ মূল্যের জন্য পলিসি আগে বন্ধ করুন';

  @override
  String get svc_revival => 'পুনরুজ্জীবন';

  @override
  String get svcDesc_revival => 'বন্ধ হয়ে যাওয়া পলিসি আবার চালু করুন';

  @override
  String get svc_nomination => 'নমিনেশন পরিবর্তন';

  @override
  String get svcDesc_nomination => 'নমিনি যোগ বা পরিবর্তন করুন';

  @override
  String get svc_address => 'ঠিকানা পরিবর্তন';

  @override
  String get svcDesc_address => 'পলিসিতে আপনার ঠিকানা হালনাগাদ করুন';

  @override
  String get svc_duplicate => 'ডুপ্লিকেট পলিসি বন্ড';

  @override
  String get svcDesc_duplicate => 'হারানো বা ক্ষতিগ্রস্ত বন্ড বদলান';

  @override
  String get svc_assignment => 'স্বত্ব হস্তান্তর';

  @override
  String get svcDesc_assignment => 'পলিসির অধিকার হস্তান্তর, যেমন ব্যাংককে';

  @override
  String get svc_conversion => 'রূপান্তর (সুবিধা)';

  @override
  String get svcDesc_conversion => 'আজীবন বিমাকে এনডাওমেন্টে রূপান্তর';

  @override
  String get doc_form => 'নির্ধারিত ফর্ম, পূরণ ও সই করা';

  @override
  String get doc_policyBond => 'আসল পলিসি বন্ড (বা ePLI বন্ড)';

  @override
  String get doc_receiptBook => 'প্রিমিয়াম রসিদ বই বা রসিদ';

  @override
  String get doc_idProof => 'পরিচয়ের প্রমাণ (আধার, প্যান ইত্যাদি)';

  @override
  String get doc_addressProof => 'ঠিকানার প্রমাণ';

  @override
  String get doc_ageProof => 'বয়সের প্রমাণ';

  @override
  String get doc_bankDetails => 'ব্যাংক পাসবই বা বাতিল চেক';

  @override
  String get doc_photo => 'পাসপোর্ট মাপের ছবি';

  @override
  String get doc_deathCertificate => 'মৃত্যু শংসাপত্র';

  @override
  String get doc_claimantId => 'দাবিদারের পরিচয় ও সম্পর্কের প্রমাণ';

  @override
  String get doc_medical => 'চিকিৎসা শংসাপত্র / স্বাস্থ্য ঘোষণা (চাইলে)';

  @override
  String get doc_eligibility =>
      'যোগ্যতার প্রমাণ (চাকরি, ডিগ্রি বা গ্রামীণ বাস)';

  @override
  String get doc_nomineeDetails => 'নমিনির নাম, বয়স ও সম্পর্ক';

  @override
  String get doc_indemnity => 'ক্ষতিপূরণ বন্ড (চাইলে)';

  @override
  String get customerPhoneLabel =>
      'গ্রাহকের মোবাইল (হোয়াটসঅ্যাপ রিমাইন্ডারের জন্য)';

  @override
  String get exportBackup => 'পলিসির ব্যাকআপ';

  @override
  String get importBackup => 'ব্যাকআপ থেকে পুনরুদ্ধার';

  @override
  String importConfirm(int count) {
    return 'এই ব্যাকআপ থেকে $countটি পলিসি পুনরুদ্ধার করবেন? একই ID-র সংরক্ষিত পলিসি বদলে যাবে।';
  }

  @override
  String importDone(int count) {
    return '$countটি পলিসি পুনরুদ্ধার হয়েছে।';
  }

  @override
  String get importFailed => 'এটি PLI & RPLI ক্যালকুলেটরের ব্যাকআপ ফাইল নয়।';

  @override
  String get backupNote =>
      'ব্যাকআপ ফাইলে আপনার পলিসির বিবরণ আছে। নিজের হোয়াটসঅ্যাপ চ্যাট বা গুগল ড্রাইভের মতো নিরাপদ জায়গায় রাখুন।';

  @override
  String get restore => 'পুনরুদ্ধার';

  @override
  String get tileDues => 'বকেয়া';

  @override
  String get descDues => 'এই মাসের বকেয়া প্রিমিয়াম';

  @override
  String get duesTitle => 'প্রিমিয়াম বকেয়া';

  @override
  String get duesTotal => 'মোট বকেয়া';

  @override
  String duesCount(int count) {
    return '$countটি প্রিমিয়াম';
  }

  @override
  String get noDuesInMonth => 'এই মাসে কোনো প্রিমিয়াম বকেয়া নেই।';

  @override
  String get remindOnWhatsApp => 'মনে করান';

  @override
  String dueReminderMessage(
    String name,
    String amount,
    String number,
    String date,
  ) {
    return 'প্রিয় $name, পলিসি $number-এর $amount প্রিমিয়াম $date তারিখে দেয়। অনুগ্রহ করে আপনার ডাকঘরে জমা দিন।';
  }

  @override
  String get tileProfile => 'এজেন্ট প্রোফাইল';

  @override
  String get descProfile => 'কোটেশনে আপনার নাম ও লোগো';

  @override
  String get profileTitle => 'এজেন্ট প্রোফাইল';

  @override
  String get agentNameField => 'আপনার নাম';

  @override
  String get agentPhoneField => 'আপনার ফোন';

  @override
  String get agentCodeField => 'এজেন্ট ID / অফিস (ঐচ্ছিক)';

  @override
  String get chooseLogo => 'ছবি বা লোগো বাছুন';

  @override
  String get removeLogo => 'সরান';

  @override
  String get profileNote =>
      'কোটেশন ও রিমাইন্ডার বার্তায় দেখানো হবে। শুধু এই ফোনে সংরক্ষিত।';

  @override
  String get profileSaved => 'প্রোফাইল সংরক্ষিত।';

  @override
  String get searchPolicies => 'নাম, পলিসি নং বা মোবাইল খুঁজুন';

  @override
  String get sortLabel => 'সাজান';

  @override
  String get sortName => 'নাম';

  @override
  String get sortNextDue => 'পরবর্তী দেয়';

  @override
  String get sortSumAssured => 'বিমার অঙ্ক';

  @override
  String noSearchResults(String query) {
    return '“$query” এর সাথে মেলে এমন কোনো পলিসি নেই।';
  }

  @override
  String get filterAll => 'সব';

  @override
  String get filterPending => 'বাকি';

  @override
  String get filterCollected => 'আদায় হয়েছে';

  @override
  String get markCollected => 'আদায় হয়েছে চিহ্নিত করুন';

  @override
  String get markNotCollected => 'আদায় হয়নি চিহ্নিত করুন';

  @override
  String get duesPendingTotal => 'এখনও আদায় বাকি';

  @override
  String duesCollectedOf(int collected, int total) {
    return '$total এর মধ্যে $collected আদায় হয়েছে';
  }

  @override
  String get duesMonthTotal => 'মাসের মোট';

  @override
  String get collectedNote =>
      'আদায়ের চিহ্ন আপনার নিজের রেকর্ড। এগুলি ইন্ডিয়া পোস্টের সিস্টেমে প্রদান যাচাই করে না।';

  @override
  String get noDuesInFilter => 'এই তালিকায় কিছু নেই।';

  @override
  String get openFormLink => 'ফর্ম ডাউনলোড করুন';

  @override
  String get shareFormLink => 'ফর্মের লিঙ্ক শেয়ার করুন';

  @override
  String formLinkMessage(String service, String url) {
    return '$service ফর্ম (ইন্ডিয়া পোস্ট): $url';
  }

  @override
  String get tileLinks => 'অফিসিয়াল লিঙ্ক';

  @override
  String get descLinks => 'পোর্টাল, ফর্ম, হেল্পলাইন';

  @override
  String get linksTitle => 'অফিসিয়াল লিঙ্ক ও সাহায্য';

  @override
  String get linkPortalTitle => 'PLI গ্রাহক পোর্টাল';

  @override
  String get linkPortalDesc => 'অনলাইনে প্রিমিয়াম প্রদান, পলিসির অবস্থা, রসিদ';

  @override
  String get linkFormsTitle => 'অফিসিয়াল PLI/RPLI ফর্ম';

  @override
  String get linkFormsDesc => 'ইন্ডিয়া পোস্ট থেকে ফর্ম ডাউনলোড করুন';

  @override
  String get linkIndiaPostTitle => 'ইন্ডিয়া পোস্ট';

  @override
  String get linkIndiaPostDesc => 'ডাক বিভাগের ওয়েবসাইট';

  @override
  String get linkHelplineTitle => 'ইন্ডিয়া পোস্ট গ্রাহক পরিষেবা';

  @override
  String linkHelplineDesc(String number) {
    return 'টোল-ফ্রি $number';
  }

  @override
  String get linkDigiLockerTitle => 'ডিজিলকার';

  @override
  String get linkDigiLockerDesc => 'আপনার ই-পলিসি বন্ড নিরাপদে রাখুন';

  @override
  String get linkGrievanceTitle => 'জনঅভিযোগ (CPGRAMS)';

  @override
  String get linkGrievanceDesc => 'ভারত সরকারের কাছে অভিযোগ জানান';

  @override
  String get linksNote =>
      'এগুলি ভারত সরকারের অফিসিয়াল ওয়েবসাইট খোলে। এই অ্যাপটি স্বাধীন এবং ইন্ডিয়া পোস্ট বা ডাক বিভাগের সাথে যুক্ত নয়।';

  @override
  String get formSourceLabel => 'এই ফর্মের অফিসিয়াল উৎস';
}
