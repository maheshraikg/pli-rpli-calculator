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
}
