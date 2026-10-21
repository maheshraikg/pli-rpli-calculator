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
}
