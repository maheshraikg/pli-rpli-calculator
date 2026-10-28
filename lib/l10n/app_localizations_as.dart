// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get appTitle => 'PLI & RPLI কেলকুলেটৰ';

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
  String get tileAfford => 'কিমান সম্ভৱ';

  @override
  String get tileTools => 'পলিচি সঁজুলি';

  @override
  String get tilePlans => 'আঁচনিসমূহ';

  @override
  String get tileAbout => 'বিষয়ে';

  @override
  String get dobLabel => 'জন্মৰ তাৰিখ';

  @override
  String get useAgeInstead => 'তাৰ সলনি বয়স লিখক';

  @override
  String get useDobInstead => 'জন্মৰ তাৰিখ লিখক';

  @override
  String ageFromDobNearest(int age) {
    return 'আৰম্ভৰ তাৰিখত প্ৰৱেশৰ বয়স: $age (ওচৰৰ জন্মদিনৰ বয়স)';
  }

  @override
  String ageFromDobLast(int age) {
    return 'আৰম্ভৰ তাৰিখত প্ৰৱেশৰ বয়স: $age (শেষ জন্মদিনৰ বয়স)';
  }

  @override
  String get premiumCeasingAgeLabel => 'প্ৰিমিয়াম দিয়াৰ বয়স';

  @override
  String get frequencyLabel => 'পৰিশোধৰ ব্যৱধান';

  @override
  String get freqMonthly => 'মাহেকীয়া';

  @override
  String get freqQuarterly => 'ত্ৰৈমাসিক';

  @override
  String get freqHalfYearly => 'ষাণ্মাসিক';

  @override
  String get freqYearly => 'বাৰ্ষিক';

  @override
  String get premiumPerInstalment => 'প্ৰতি কিস্তিৰ প্ৰিমিয়াম';

  @override
  String get tablePremiumRow => 'তালিকাৰ প্ৰিমিয়াম';

  @override
  String get saRebateRow => 'বীমাৰ পৰিমাণত ৰেহাই';

  @override
  String totalPremiumRow(int count) {
    return 'মুঠ প্ৰিমিয়াম ($count কিস্তি)';
  }

  @override
  String get payingTermRow => 'প্ৰিমিয়াম দিয়াৰ ম্যাদ';

  @override
  String get lifeCoverRow => 'জীৱন সুৰক্ষা';

  @override
  String get allFrequenciesTitle => 'সকলো পৰিশোধৰ ব্যৱধান';

  @override
  String get notInTable => 'চৰকাৰী তালিকাত উপলব্ধ নহয়';

  @override
  String get noTableForPlan =>
      'এই আঁচনিৰ প্ৰিমিয়াম তালিকা এতিয়াও যোগ কৰা হোৱা নাই।';

  @override
  String get illustrationTitle => 'বছৰ অনুসৰি সুবিধাৰ বিৱৰণ';

  @override
  String get colYear => 'বছৰ';

  @override
  String get colPremiumsPaid => 'দিয়া প্ৰিমিয়াম';

  @override
  String get colBonus => 'বোনাছ';

  @override
  String get colLifeCover => 'জীৱন সুৰক্ষা';

  @override
  String get makeQuotation => 'কোটেশ্বন প্ৰস্তুত কৰক';

  @override
  String get gstNote =>
      'জিএছটি: 22 ছেপ্টেম্বৰ 2025 বা তাৰ পিছত দিয়া ব্যক্তিগত জীৱন বীমাৰ প্ৰিমিয়ামত শূন্য।';

  @override
  String get chartTitle => 'দিয়া প্ৰিমিয়াম বনাম সুবিধা';

  @override
  String get chartPaid => 'মুঠ প্ৰিমিয়াম';

  @override
  String get chartReceived => 'মুঠ সুবিধা';

  @override
  String get showTable => 'বছৰ অনুসৰি তালিকা দেখুৱাওক';

  @override
  String get hideTable => 'বছৰ অনুসৰি তালিকা লুকুৱাওক';

  @override
  String get reverseTitle => 'মই কিমান ল\'ব পাৰোঁ?';

  @override
  String get budgetLabel => 'প্ৰতি কিস্তিৰ বাজেট (₹)';

  @override
  String get reverseIntro =>
      'আপুনি কিমান দিব পাৰে লিখক। প্ৰতিটো আঁচনি বিকল্পই সেই পৰিমাণৰ ভিতৰত সৰ্বাধিক বীমাৰ পৰিমাণ দেখুৱায়।';

  @override
  String optMaturityAge(int age) {
    return '$age বছৰত ম্যাদ পূৰ্ণ';
  }

  @override
  String optCeasingAge(int age) {
    return '$age বছৰলৈ প্ৰিমিয়াম';
  }

  @override
  String optTerm(int years) {
    return '$years বছৰীয়া ম্যাদ';
  }

  @override
  String get reverseNone => 'এই বয়সত এই বাজেটত কোনো আঁচনি নিমিলে।';

  @override
  String get saShort => 'বীমাৰ পৰিমাণ';

  @override
  String get premiumShort => 'প্ৰিমিয়াম';

  @override
  String get compareTitle => 'আঁচনিৰ তুলনা';

  @override
  String optionN(int n) {
    return 'বিকল্প $n';
  }

  @override
  String get addOption => 'বিকল্প যোগ কৰক';

  @override
  String get removeOption => 'বিকল্প আঁতৰাওক';

  @override
  String get maturityShort => 'ম্যাদ পূৰ্ণ / সুবিধা';

  @override
  String get totalPaidShort => 'মুঠ পৰিশোধ';

  @override
  String get lifeCoverShort => 'জীৱন সুৰক্ষা';

  @override
  String get comparisonTitle => 'তুলনা';

  @override
  String get toolsTitle => 'পলিচি সঁজুলি';

  @override
  String get tabLoan => 'ঋণ';

  @override
  String get tabPaidUp => 'পেইড-আপ';

  @override
  String get tabRevival => 'পুনৰুজ্জীৱন';

  @override
  String get tabAdvance => 'অগ্ৰিম';

  @override
  String get yearsInForceLabel => 'পলিচি কিমান বছৰ ধৰি চালু আছে';

  @override
  String get loanAmountLabel => 'ঋণৰ পৰিমাণ (₹)';

  @override
  String get loanMonthsLabel => 'পৰিশোধলৈ মাহ';

  @override
  String monthsValue(int months) {
    return '$months মাহ';
  }

  @override
  String get loanInterestRow => 'সুত';

  @override
  String get loanTotalRow => 'মুঠ পৰিশোধ';

  @override
  String loanRateNote(String rate) {
    return 'বছৰি $rate% সুত, ষাণ্মাসিক চক্ৰবৃদ্ধি।';
  }

  @override
  String loanAvailableAfter(int years) {
    return '$years বছৰৰ পিছত ঋণ উপলব্ধ।';
  }

  @override
  String get loanNotOffered => 'এই আঁচনিত ঋণৰ সুবিধা নাই।';

  @override
  String get loanEligibleYes => 'ঋণৰ যোগ্য';

  @override
  String get loanEligibleNo => 'এতিয়াও ঋণৰ যোগ্য নহয়';

  @override
  String get loanAmountNote =>
      'সৰ্বাধিক ঋণ আত্মসমৰ্পণ মূল্যৰ ওপৰত নিৰ্ভৰ কৰে, যিটো ভাৰতীয় ডাকে গণনা কৰে।';

  @override
  String get premiumsPaidLabel => 'দিয়া কিস্তি';

  @override
  String get premiumsPayableLabel => 'মুঠ দিবলগীয়া কিস্তি';

  @override
  String get paidUpSaRow => 'পেইড-আপ বীমাৰ পৰিমাণ';

  @override
  String get paidUpNote =>
      'আনুমানিক। বোনাছ: পলিচি ৫ বছৰতকৈ কম পুৰণি হ’লে নাই; ৫ বছৰৰ পিছত পেইড-আপ অংকৰ ওপৰত আনুপাতিক বোনাছ, ইণ্ডিয়া পোষ্টৰ মতে। ছাৰেণ্ডাৰ মূল্যৰ বাবে চৰকাৰী ছাৰেণ্ডাৰ ফেক্টৰ লাগে, ইয়াৰ গণনা কৰা হোৱা নাই।';

  @override
  String paidUpNotEligible(int years) {
    return 'পলিচি $years বছৰ চালু থকাৰ পিছতহে পেইড-আপ হ\'ব পাৰে।';
  }

  @override
  String get paidUpInvalid =>
      'দিয়া কিস্তি দিবলগীয়া কিস্তিতকৈ বেছি হ\'ব নোৱাৰে।';

  @override
  String get instalmentLabel => 'প্ৰতি কিস্তিৰ প্ৰিমিয়াম (₹)';

  @override
  String get firstUnpaidLabel => 'প্ৰথম বাকী কিস্তিৰ তাৰিখ';

  @override
  String get payDateLabel => 'পৰিশোধৰ তাৰিখ';

  @override
  String get missedRow => 'বাকী কিস্তি';

  @override
  String get arrearsRow => 'বকেয়া';

  @override
  String get defaultFeeRow => 'বিলম্ব মাচুল';

  @override
  String get totalPayableRow => 'মুঠ দিবলগীয়া';

  @override
  String revivalNote(String percent) {
    return 'বিলম্বৰ প্ৰতি মাহত কিস্তিৰ $percent% বিলম্ব মাচুল। দীঘলীয়া সময়ৰ পিছত পুনৰুজ্জীৱনৰ বাবে চিকিৎসা প্ৰমাণপত্ৰ লাগিব পাৰে।';
  }

  @override
  String revivalLine(String date, int months, String fee) {
    return 'বাকী $date • $months মাহ পলম • মাচুল $fee';
  }

  @override
  String get nothingDue => 'সেই তাৰিখত একো বাকী নাই।';

  @override
  String get monthsAdvanceLabel => 'অগ্ৰিম দিয়া মাহ';

  @override
  String rebateRow(String percent) {
    return 'ৰেহাই ($percent%)';
  }

  @override
  String get amountDueRow => 'বাকী পৰিমাণ';

  @override
  String get payableRow => 'আপুনি দিব';

  @override
  String get advanceNote =>
      'দেখুওৱা ৰেহাই হাৰৰ তথ্যৰ অগ্ৰিম পৰিশোধ ৰেহাই অনুসৰি; প্ৰিমিয়াম অগ্ৰিম দিলে প্ৰযোজ্য।';

  @override
  String get policiesTitle => 'মোৰ পলিচি';

  @override
  String get noPolicies =>
      'এতিয়াও কোনো পলিচি সংৰক্ষণ কৰা হোৱা নাই। যোগ কৰিবলৈ + টিপক।';

  @override
  String get addPolicy => 'পলিচি যোগ কৰক';

  @override
  String get editPolicy => 'পলিচি সম্পাদনা';

  @override
  String get holderNameLabel => 'পলিচিধাৰকৰ নাম';

  @override
  String get policyNumberLabel => 'পলিচি নম্বৰ';

  @override
  String get premiumAmountLabel => 'প্ৰতি কিস্তিৰ প্ৰিমিয়াম (₹, ৰচিদ অনুসৰি)';

  @override
  String get save => 'সংৰক্ষণ';

  @override
  String get delete => 'মচক';

  @override
  String get deleteConfirm => 'এই পলিচি মচিবনে?';

  @override
  String get cancel => 'বাতিল';

  @override
  String nextDue(String date) {
    return 'পৰৱৰ্তী কিস্তি: $date';
  }

  @override
  String get noMoreDues => 'সকলো প্ৰিমিয়াম দিয়া হ\'ল';

  @override
  String get remindersLabel => 'প্ৰতি কিস্তিৰ 3 দিন আগতে সোঁৱৰাই দিয়ক';

  @override
  String get remindersDenied => 'এই এপৰ বাবে জাননী বন্ধ আছে।';

  @override
  String get accruedBonusRow => 'এতিয়ালৈকে জমা বোনাছ';

  @override
  String bonusMissingYears(String years) {
    return 'বি.ব. $yearsৰ বোনাছ হাৰ এপৰ তথ্যত নাই; মুঠত সেই বছৰবোৰ ধৰা হোৱা নাই।';
  }

  @override
  String maturityOn(String date) {
    return '$dateত ম্যাদ পূৰ্ণ';
  }

  @override
  String get upcomingDues => 'আগন্তুক কিস্তিৰ তাৰিখ';

  @override
  String get yearsInForceRow => 'চালু বছৰ';

  @override
  String get reminderTitle => 'পিএলআই প্ৰিমিয়াম বাকী';

  @override
  String reminderBody(String name, String amount, String date, String number) {
    return '$name: $amount $dateত দিবলগীয়া (পলিচি $number)';
  }

  @override
  String get savedLocally => 'কেৱল এই ফোনতে সংৰক্ষিত।';

  @override
  String get requiredField => 'আৱশ্যক';

  @override
  String get projectedMaturityRow => 'আনুমানিক ম্যাদ পূৰ্ণৰ পৰিমাণ';

  @override
  String get quotationTitle => 'কোটেশ্বন';

  @override
  String get customerNameLabel => 'গ্ৰাহকৰ নাম';

  @override
  String get agentNameLabel => 'প্ৰস্তুতকাৰী (ঐচ্ছিক)';

  @override
  String get sharePdf => 'PDF শ্বেয়াৰ কৰক';

  @override
  String get shareImage => 'ছবি শ্বেয়াৰ কৰক';

  @override
  String get quotationHeading => 'প্ৰিমিয়াম কোটেশ্বন';

  @override
  String preparedOn(String date) {
    return '$dateত প্ৰস্তুত';
  }

  @override
  String quotationFor(String name) {
    return 'যাৰ বাবে: $name';
  }

  @override
  String preparedBy(String name) {
    return 'প্ৰস্তুতকাৰী: $name';
  }

  @override
  String get quotationInvalid =>
      'কোটেশ্বন প্ৰস্তুত কৰিবলৈ আঁচনিৰ বিৱৰণ সম্পূৰ্ণ কৰক।';

  @override
  String get planDetailsTitle => 'আঁচনিৰ বিৱৰণ';

  @override
  String get planInfoTitle => 'আঁচনিৰ তথ্য';

  @override
  String entryAgeInfo(int min, int max) {
    return 'প্ৰৱেশৰ বয়স: $min–$max';
  }

  @override
  String maturityAgesInfo(String ages) {
    return 'ম্যাদ পূৰ্ণৰ বয়স: $ages';
  }

  @override
  String ceasingAgesInfo(String ages, int age) {
    return 'প্ৰিমিয়াম দিয়াৰ বয়স: $ages; $age বছৰত ম্যাদ পূৰ্ণ';
  }

  @override
  String termsInfo(String terms) {
    return 'ম্যাদ: $terms বছৰ';
  }

  @override
  String survivalInfo(String list) {
    return 'মানি বেক: $list';
  }

  @override
  String survivalItem(int percent, int year) {
    return '$year বছৰত $percent%';
  }

  @override
  String loanInfo(int years) {
    return '$years বছৰৰ পিছত ঋণ';
  }

  @override
  String get noLoanInfo => 'ঋণ নাই';

  @override
  String surrenderInfo(int years) {
    return '$years বছৰৰ পিছত আত্মসমৰ্পণ';
  }

  @override
  String get noSurrenderInfo => 'আত্মসমৰ্পণ নাই';

  @override
  String bonusInfo(String fy, int rate) {
    return 'বি.ব. $fy বোনাছ: প্ৰতি ₹1,000ত বছৰি ₹$rate';
  }

  @override
  String saLimitInfo(String min, String max) {
    return 'বীমাৰ পৰিমাণ: $min – $max';
  }

  @override
  String jointInfo(int min, int max, int tmin, int tmax) {
    return 'প্ৰত্যেক পতি/পত্নীৰ বয়স $min–$max; ম্যাদ $tmin–$tmax বছৰ';
  }

  @override
  String childInfo(int min, int max, int parent, int children, String cap) {
    return 'সন্তানৰ বয়স $min–$max; অভিভাৱকৰ বয়স $parentলৈ; সৰ্বাধিক $childrenটা সন্তান; বীমাৰ পৰিমাণ $capলৈ';
  }

  @override
  String conversionInfo(int years) {
    return '$years বছৰৰ পিছত এনডাউমেণ্ট বীমালৈ ৰূপান্তৰ কৰিব পাৰি';
  }

  @override
  String get faqTitle => 'সাধাৰণ প্ৰশ্ন';

  @override
  String get faq1q => 'বোনাছ নিশ্চিত নেকি?';

  @override
  String get faq1a =>
      'নহয়। ভাৰতীয় ডাকে প্ৰতি বছৰে বোনাছৰ হাৰ ঘোষণা কৰে। ইয়াৰ অনুমানে ভৱিষ্যতৰ প্ৰতিটো বছৰৰ বাবে শেহতীয়া ঘোষিত হাৰ ধৰি লয়।';

  @override
  String get faq2q => 'প্ৰিমিয়াম ক\'ৰ পৰা আহে?';

  @override
  String get faq2a =>
      'ভাৰতীয় ডাকৰ চৰকাৰী প্ৰিমিয়াম তালিকাৰ পৰা। এপে কেতিয়াও প্ৰিমিয়াম অনুমান নকৰে।';

  @override
  String get faq3q => 'আয়কৰ সুবিধা আছে নেকি?';

  @override
  String get faq3a =>
      'প্ৰিমিয়াম ধাৰা 80C (পুৰণি কৰ ব্যৱস্থা) অনুসৰি যোগ্য হ\'ব পাৰে আৰু ম্যাদ পূৰ্ণৰ পৰিমাণ ধাৰা 10(10D) অনুসৰি চৰ্তসাপেক্ষে কৰমুক্ত হ\'ব পাৰে। এইটো কৰ পৰামৰ্শ নহয়।';

  @override
  String get faq4q => 'প্ৰিমিয়ামত জিএছটি লাগে নেকি?';

  @override
  String get faq4a =>
      'নালাগে। 22 ছেপ্টেম্বৰ 2025ৰ পৰা ব্যক্তিগত জীৱন বীমাৰ প্ৰিমিয়ামত জিএছটি শূন্য।';

  @override
  String get faq5q => 'PLI আৰু RPLI কোনে ল\'ব পাৰে?';

  @override
  String get faq5a =>
      'PLI: চৰকাৰী আৰু অৰ্ধ-চৰকাৰী কৰ্মচাৰী, পেছাদাৰী, স্নাতক, ডিপ্লোমাধাৰী আৰু ভাৰতীয় ডাকে তালিকাভুক্ত কৰা অন্যান্য। RPLI: গ্ৰাম্য বাসিন্দা আৰু অনুসূচিত বেংকৰ সঞ্চয়ী একাউণ্টধাৰী।';

  @override
  String get aboutTitle => 'বিষয়ে';

  @override
  String get privacyTitle => 'গোপনীয়তা';

  @override
  String get privacyBody =>
      'PLI & RPLI কেলকুলেটৰে কোনো তথ্য সংগ্ৰহ নকৰে। আপুনি লিখা বা সংৰক্ষণ কৰা সকলো এই ফোনতে থাকে। একাউণ্ট বা ইণ্টাৰনেটৰ প্ৰয়োজন নাই।';

  @override
  String get dataSourceTitle => 'হাৰৰ তথ্য';

  @override
  String dataSourceBody(String id, String date, String source) {
    return 'নিয়ম $id, $dateৰ পৰা বলবৎ। উৎস: $source';
  }

  @override
  String get provisionalTitle => 'এতিয়াও নিশ্চিত হ\'বলগীয়া নিয়ম';

  @override
  String get provisionalIntro =>
      'ভাৰতীয় ডাকৰ চৰকাৰী চাৰ্কুলাৰৰ পৰা নিশ্চিত নোহোৱালৈকে এই নিয়মবোৰ কাৰ্যকৰী অনুমান (ইংৰাজীত):';

  @override
  String get checkUpdates => 'হাৰ আপডেট চাওক';

  @override
  String updateInstalled(int version) {
    return 'হাৰৰ তথ্য সংস্কৰণ $versionলৈ আপডেট হ\'ল।';
  }

  @override
  String get updateCurrent => 'হাৰৰ তথ্য শেহতীয়া।';

  @override
  String updateFailed(String error) {
    return 'আপডেট বিফল; বৰ্তমানৰ হাৰ বৰ্তি থাকিল। $error';
  }

  @override
  String get sampleDataNote =>
      'প্ৰিমিয়াম তালিকাবোৰ নমুনা তথ্য, ভাৰতীয় ডাকৰ চৰকাৰী অংক নহয়।';

  @override
  String appVersion(String version) {
    return 'সংস্কৰণ $version';
  }

  @override
  String get homeTagline => 'প্ৰিমিয়াম, বোনাছ আৰু ম্যাদ পূৰ্ণ — অফলাইনতো';

  @override
  String get quickPremiumTitle => 'প্ৰিমিয়াম গণনা কৰক';

  @override
  String get quickPremiumBody =>
      'যিকোনো আঁচনি, বয়স আৰু বীমাৰ পৰিমাণ — সকলো ব্যৱধান';

  @override
  String get sectionCalculators => 'কেলকুলেটৰ';

  @override
  String get sectionServicing => 'পলিচি সেৱা';

  @override
  String get sectionLearn => 'জানক';

  @override
  String get descPremium => 'প্ৰতিটো ব্যৱধানৰ প্ৰিমিয়াম';

  @override
  String get descMaturity => 'বোনাছ আৰু ম্যাদ পূৰ্ণৰ পৰিমাণ';

  @override
  String get descCompare => 'আঁচনি কাষে কাষে';

  @override
  String get descAfford => 'আপোনাৰ বাজেটত শ্ৰেষ্ঠ সুৰক্ষা';

  @override
  String get descPolicies => 'সংৰক্ষিত পলিচি আৰু তাৰিখ';

  @override
  String get descTools => 'ঋণ, পুনৰুজ্জীৱন, পেইড-আপ';

  @override
  String get descQuotation => 'PDF কোটেশ্বন শ্বেয়াৰ কৰক';

  @override
  String get descEligibility => 'PLI বা RPLI কোনে ল\'ব পাৰে';

  @override
  String get descPlans => 'আঁচনিৰ নিয়ম আৰু প্ৰশ্ন';

  @override
  String get descAbout => 'গোপনীয়তা আৰু হাৰৰ তথ্য';

  @override
  String get sectionPersonTitle => 'পলিচিধাৰক';

  @override
  String get sectionCoverTitle => 'সুৰক্ষা আৰু পৰিশোধ';

  @override
  String get tileForms => 'প্ৰ-পত্ৰ';

  @override
  String get descForms => 'প্ৰ-পত্ৰ, তালিকা, চিঠি';

  @override
  String get formsTitle => 'প্ৰ-পত্ৰ আৰু চিঠি';

  @override
  String get formsIntro =>
      'প্ৰতিটো PLI / RPLI অনুৰোধত কি লাগে, প্ৰ-পত্ৰ ক\'ত পাব, আৰু সাজু অনুৰোধ-চিঠি।';

  @override
  String get formsVerifyNote =>
      'নথিৰ তালিকা কেৱল নিৰ্দেশনা, সলনি হ\'ব পাৰে। জমা দিয়াৰ আগতে আপোনাৰ ডাকঘৰত নিশ্চিত কৰক।';

  @override
  String get whereToGetTitle => 'প্ৰ-পত্ৰ ক\'ত পাব';

  @override
  String get whereToGetBody =>
      'যিকোনো ডাকঘৰ বা CPCত বিনামূলীয়াকৈ, বা ভাৰতীয় ডাক PLI ৱেবছাইটৰ পৰা ডাউনলোড কৰক।';

  @override
  String get documentsTitle => 'সাজু কৰি ৰাখিবলগীয়া নথি';

  @override
  String get openOfficialForm => 'চৰকাৰী প্ৰ-পত্ৰ খোলক';

  @override
  String get getFromIndiaPost => 'ভাৰতীয় ডাকৰ পৰা প্ৰ-পত্ৰ লওক';

  @override
  String get detailsSheetTitle => 'পলিচি বিৱৰণ পত্ৰ';

  @override
  String get detailsSheetIntro =>
      'চৰকাৰী প্ৰ-পত্ৰত লিখিবলৈ আপোনাৰ সংৰক্ষিত পলিচিৰ বিৱৰণ এঠাইতে।';

  @override
  String get writeLetterTitle => 'অনুৰোধ-চিঠি লিখক';

  @override
  String get writeLetterIntro =>
      'আপোনাৰ সংৰক্ষিত পলিচিৰ পৰা পূৰণ কৰা, পোষ্টমাষ্টাৰৰ বাবে সাজু চিঠি।';

  @override
  String get choosePolicy => 'সংৰক্ষিত পলিচি';

  @override
  String get noSavedPolicies => 'প্ৰথমে মোৰ পলিচিত এখন পলিচি সংৰক্ষণ কৰক।';

  @override
  String get toOfficeLabel => 'প্ৰতি (ডাকঘৰ / CPC)';

  @override
  String get yourAddressLabel => 'আপোনাৰ ঠিকনা';

  @override
  String get phoneLabel => 'ফোন';

  @override
  String get placeLabel => 'স্থান';

  @override
  String get nomineeNameLabel => 'নতুন নমিনিৰ নাম';

  @override
  String get nomineeRelationLabel => 'সম্পৰ্ক';

  @override
  String get nomineeAgeLabel => 'নমিনিৰ বয়স';

  @override
  String get newAddressLabel => 'নতুন ঠিকনা';

  @override
  String get bondLost => 'হেৰাল';

  @override
  String get bondDamaged => 'ক্ষতিগ্ৰস্ত';

  @override
  String get lapsedFromLabel => 'প্ৰিমিয়াম বাকী কেতিয়াৰ পৰা';

  @override
  String get shareAsText => 'লিখনি হিচাপে শ্বেয়াৰ কৰক';

  @override
  String get copyText => 'কপি কৰক';

  @override
  String get copied => 'কপি হ\'ল';

  @override
  String get letterEnglishNote =>
      'চিঠিবোৰ ইংৰাজীত — ভাৰতীয় ডাকৰ পত্ৰ-ব্যৱহাৰৰ সাধাৰণ ভাষা। জমা দিয়াৰ আগতে চহী কৰক।';

  @override
  String get formsOfficialNote =>
      'এই এপ ভাৰতীয় ডাক নহয়। নিৰ্ধাৰিত প্ৰ-পত্ৰ থাকিলে সদায় ভাৰতীয় ডাকৰ প্ৰ-পত্ৰহে জমা দিয়ক।';

  @override
  String get svc_proposal => 'নতুন পলিচি প্ৰস্তাৱ';

  @override
  String get svcDesc_proposal => 'নতুন PLI বা RPLI পলিচিৰ বাবে আবেদন';

  @override
  String get svc_maturity => 'ম্যাদ পূৰ্ণৰ দাবী';

  @override
  String get svcDesc_maturity => 'পলিচিৰ ম্যাদ পূৰ্ণ হ\'লে ধনৰ দাবী';

  @override
  String get svc_survival => 'জীৱিতকালীন সুবিধাৰ দাবী';

  @override
  String get svcDesc_survival => 'মানি-বেক কিস্তি (সুমংগল, গ্ৰাম প্ৰিয়া)';

  @override
  String get svc_death => 'মৃত্যু দাবী';

  @override
  String get svcDesc_death => 'নমিনি বা আইনী উত্তৰাধিকাৰীৰ দাবী';

  @override
  String get svc_loan => 'পলিচি ঋণ';

  @override
  String get svcDesc_loan => 'আপোনাৰ পলিচিৰ বিপৰীতে ঋণ লওক';

  @override
  String get svc_surrender => 'আত্মসমৰ্পণ';

  @override
  String get svcDesc_surrender => 'আত্মসমৰ্পণ মূল্যৰ বাবে পলিচি আগতে বন্ধ কৰক';

  @override
  String get svc_revival => 'পুনৰুজ্জীৱন';

  @override
  String get svcDesc_revival => 'বন্ধ হোৱা পলিচি পুনৰ আৰম্ভ কৰক';

  @override
  String get svc_nomination => 'নমিনেশ্বন সলনি';

  @override
  String get svcDesc_nomination => 'নমিনি যোগ বা সলনি কৰক';

  @override
  String get svc_address => 'ঠিকনা সলনি';

  @override
  String get svcDesc_address => 'পলিচিত আপোনাৰ ঠিকনা আপডেট কৰক';

  @override
  String get svc_duplicate => 'ডুপ্লিকেট পলিচি বণ্ড';

  @override
  String get svcDesc_duplicate => 'হেৰোৱা বা ক্ষতিগ্ৰস্ত বণ্ড সলনি কৰক';

  @override
  String get svc_assignment => 'স্বত্ব হস্তান্তৰ';

  @override
  String get svcDesc_assignment => 'পলিচিৰ অধিকাৰ হস্তান্তৰ, যেনে বেংকলৈ';

  @override
  String get svc_conversion => 'ৰূপান্তৰ (সুবিধা)';

  @override
  String get svcDesc_conversion => 'আজীৱন বীমাক এনডাউমেণ্টলৈ ৰূপান্তৰ';

  @override
  String get doc_form => 'নিৰ্ধাৰিত প্ৰ-পত্ৰ, পূৰণ আৰু চহী কৰা';

  @override
  String get doc_policyBond => 'মূল পলিচি বণ্ড (বা ePLI বণ্ড)';

  @override
  String get doc_receiptBook => 'প্ৰিমিয়াম ৰচিদ বহী বা ৰচিদ';

  @override
  String get doc_idProof => 'পৰিচয়ৰ প্ৰমাণ (আধাৰ, পেন আদি)';

  @override
  String get doc_addressProof => 'ঠিকনাৰ প্ৰমাণ';

  @override
  String get doc_ageProof => 'বয়সৰ প্ৰমাণ';

  @override
  String get doc_bankDetails => 'বেংক পাছবুক বা বাতিল চেক';

  @override
  String get doc_photo => 'পাছপোৰ্ট আকাৰৰ ফটো';

  @override
  String get doc_deathCertificate => 'মৃত্যুৰ প্ৰমাণপত্ৰ';

  @override
  String get doc_claimantId => 'দাবীদাৰৰ পৰিচয় আৰু সম্পৰ্কৰ প্ৰমাণ';

  @override
  String get doc_medical => 'চিকিৎসা প্ৰমাণপত্ৰ / স্বাস্থ্য ঘোষণা (বিচাৰিলে)';

  @override
  String get doc_eligibility =>
      'যোগ্যতাৰ প্ৰমাণ (চাকৰি, ডিগ্ৰী বা গ্ৰাম্য বাসস্থান)';

  @override
  String get doc_nomineeDetails => 'নমিনিৰ নাম, বয়স আৰু সম্পৰ্ক';

  @override
  String get doc_indemnity => 'ক্ষতিপূৰণ বণ্ড (বিচাৰিলে)';

  @override
  String get customerPhoneLabel => 'গ্ৰাহকৰ মোবাইল (হোৱাটছএপ সোঁৱৰণীৰ বাবে)';

  @override
  String get exportBackup => 'পলিচিৰ বেকআপ';

  @override
  String get importBackup => 'বেকআপৰ পৰা পুনৰুদ্ধাৰ';

  @override
  String importConfirm(int count) {
    return 'এই বেকআপৰ পৰা $countখন পলিচি পুনৰুদ্ধাৰ কৰিবনে? একে ID থকা সংৰক্ষিত পলিচি সলনি হ\'ব।';
  }

  @override
  String importDone(int count) {
    return '$countখন পলিচি পুনৰুদ্ধাৰ হ\'ল।';
  }

  @override
  String get importFailed => 'এইটো PLI & RPLI কেলকুলেটৰৰ বেকআপ ফাইল নহয়।';

  @override
  String get backupNote =>
      'বেকআপ ফাইলত আপোনাৰ পলিচিৰ বিৱৰণ আছে। নিজৰ হোৱাটছএপ চেট বা গুগল ড্ৰাইভৰ দৰে সুৰক্ষিত ঠাইত ৰাখক।';

  @override
  String get restore => 'পুনৰুদ্ধাৰ';

  @override
  String get tileDues => 'বাকী';

  @override
  String get descDues => 'এই মাহৰ বাকী প্ৰিমিয়াম';

  @override
  String get duesTitle => 'প্ৰিমিয়াম বাকী';

  @override
  String get duesTotal => 'মুঠ বাকী';

  @override
  String duesCount(int count) {
    return '$countটা প্ৰিমিয়াম';
  }

  @override
  String get noDuesInMonth => 'এই মাহত কোনো প্ৰিমিয়াম বাকী নাই।';

  @override
  String get remindOnWhatsApp => 'সোঁৱৰাই দিয়ক';

  @override
  String dueReminderMessage(
    String name,
    String amount,
    String number,
    String date,
  ) {
    return 'মৰমৰ $name, পলিচি $numberৰ $amount প্ৰিমিয়াম $dateত দিবলগীয়া। অনুগ্ৰহ কৰি আপোনাৰ ডাকঘৰত দিয়ক।';
  }

  @override
  String get tileProfile => 'এজেণ্ট প্ৰফাইল';

  @override
  String get descProfile => 'কোটেশ্বনত আপোনাৰ নাম আৰু লোগো';

  @override
  String get profileTitle => 'এজেণ্ট প্ৰফাইল';

  @override
  String get agentNameField => 'আপোনাৰ নাম';

  @override
  String get agentPhoneField => 'আপোনাৰ ফোন';

  @override
  String get agentCodeField => 'এজেণ্ট ID / কাৰ্যালয় (ঐচ্ছিক)';

  @override
  String get chooseLogo => 'ফটো বা লোগো বাছক';

  @override
  String get removeLogo => 'আঁতৰাওক';

  @override
  String get profileNote =>
      'কোটেশ্বন আৰু সোঁৱৰণী বাৰ্তাত দেখুওৱা হ\'ব। কেৱল এই ফোনতে সংৰক্ষিত।';

  @override
  String get profileSaved => 'প্ৰফাইল সংৰক্ষিত হ\'ল।';

  @override
  String get searchPolicies => 'নাম, পলিচি নং বা মোবাইল বিচাৰক';

  @override
  String get sortLabel => 'সজাওক';

  @override
  String get sortName => 'নাম';

  @override
  String get sortNextDue => 'পৰৱৰ্তী দেয়';

  @override
  String get sortSumAssured => 'বীমাৰ অংক';

  @override
  String noSearchResults(String query) {
    return '“$query” ৰ সৈতে মিলা কোনো পলিচি নাই।';
  }

  @override
  String get filterAll => 'সকলো';

  @override
  String get filterPending => 'বাকী';

  @override
  String get filterCollected => 'আদায় হৈছে';

  @override
  String get markCollected => 'আদায় হৈছে বুলি চিহ্নিত কৰক';

  @override
  String get markNotCollected => 'আদায় হোৱা নাই বুলি চিহ্নিত কৰক';

  @override
  String get duesPendingTotal => 'এতিয়াও আদায় বাকী';

  @override
  String duesCollectedOf(int collected, int total) {
    return '$total ৰ ভিতৰত $collected আদায় হৈছে';
  }

  @override
  String get duesMonthTotal => 'মাহৰ মুঠ';

  @override
  String get collectedNote =>
      'আদায়ৰ চিহ্নবোৰ আপোনাৰ নিজৰ ৰেকৰ্ড। এইবোৰে ইণ্ডিয়া পোষ্টৰ ব্যৱস্থাত পৰিশোধ পৰীক্ষা নকৰে।';

  @override
  String get noDuesInFilter => 'এই তালিকাত একো নাই।';

  @override
  String get openFormLink => 'ফৰ্ম ডাউনলোড কৰক';

  @override
  String get shareFormLink => 'ফৰ্মৰ লিংক শ্বেয়াৰ কৰক';

  @override
  String formLinkMessage(String service, String url) {
    return '$service ফৰ্ম (ইণ্ডিয়া পোষ্ট): $url';
  }

  @override
  String get tileLinks => 'চৰকাৰী লিংক';

  @override
  String get descLinks => 'পৰ্টেল, ফৰ্ম, হেল্পলাইন';

  @override
  String get linksTitle => 'চৰকাৰী লিংক আৰু সহায়';

  @override
  String get linkPortalTitle => 'PLI গ্ৰাহক পৰ্টেল';

  @override
  String get linkPortalDesc => 'অনলাইনত প্ৰিমিয়াম পৰিশোধ, পলিচিৰ স্থিতি, ৰচিদ';

  @override
  String get linkFormsTitle => 'চৰকাৰী PLI/RPLI ফৰ্ম';

  @override
  String get linkFormsDesc => 'ইণ্ডিয়া পোষ্টৰ পৰা ফৰ্ম ডাউনলোড কৰক';

  @override
  String get linkIndiaPostTitle => 'ইণ্ডিয়া পোষ্ট';

  @override
  String get linkIndiaPostDesc => 'ডাক বিভাগৰ ৱেবছাইট';

  @override
  String get linkHelplineTitle => 'ইণ্ডিয়া পোষ্ট গ্ৰাহক সেৱা';

  @override
  String linkHelplineDesc(String number) {
    return 'টোল-ফ্ৰী $number';
  }

  @override
  String get linkDigiLockerTitle => 'ডিজিলকাৰ';

  @override
  String get linkDigiLockerDesc => 'আপোনাৰ ই-পলিচি বণ্ড সুৰক্ষিত ৰাখক';

  @override
  String get linkGrievanceTitle => 'ৰাজহুৱা অভিযোগ (CPGRAMS)';

  @override
  String get linkGrievanceDesc => 'ভাৰত চৰকাৰৰ ওচৰত অভিযোগ দাখিল কৰক';

  @override
  String get linksNote =>
      'এইবোৰে ভাৰত চৰকাৰৰ চৰকাৰী ৱেবছাইট খোলে। এই এপটো স্বতন্ত্ৰ আৰু ইণ্ডিয়া পোষ্ট বা ডাক বিভাগৰ সৈতে জড়িত নহয়।';

  @override
  String get formSourceLabel => 'এই ফৰ্মৰ চৰকাৰী উৎস';

  @override
  String get privacyPolicyLink => 'সম্পূৰ্ণ গোপনীয়তা নীতি পঢ়ক';

  @override
  String get helpTitle => 'সহায় আৰু মতামত';

  @override
  String helpBody(String email) {
    return 'কোনো সমস্যা বা ভুল অংক দেখিলে? আমাক জনাওক, পৰৱৰ্তী আপডেটত ঠিক কৰিম। সহায়: $email';
  }

  @override
  String get reportProblem => 'সমস্যা জনাওক';

  @override
  String get sendSuggestion => 'পৰামৰ্শ পঠিয়াওক';

  @override
  String get checkAppUpdates => 'এপ আপডেট চাওক (প্লে ষ্ট’ৰ)';
}
