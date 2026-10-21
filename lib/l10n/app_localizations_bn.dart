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
}
