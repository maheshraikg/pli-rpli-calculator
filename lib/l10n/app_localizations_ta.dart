// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'PLI RPLI கணிப்பான்';

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
  String get tileAfford => 'எவ்வளவு முடியும்';

  @override
  String get tileTools => 'பாலிசி கருவிகள்';

  @override
  String get tilePlans => 'திட்டங்கள்';

  @override
  String get tileAbout => 'பற்றி';

  @override
  String get dobLabel => 'பிறந்த தேதி';

  @override
  String get useAgeInstead => 'பதிலாக வயதை உள்ளிடவும்';

  @override
  String get useDobInstead => 'பிறந்த தேதியை உள்ளிடவும்';

  @override
  String ageFromDobNearest(int age) {
    return 'தொடக்க தேதியில் நுழைவு வயது: $age (அருகிலுள்ள பிறந்தநாள் வயது)';
  }

  @override
  String ageFromDobLast(int age) {
    return 'தொடக்க தேதியில் நுழைவு வயது: $age (கடைசி பிறந்தநாள் வயது)';
  }

  @override
  String get premiumCeasingAgeLabel => 'பிரீமியம் செலுத்தும் வயது';

  @override
  String get frequencyLabel => 'செலுத்தும் கால இடைவெளி';

  @override
  String get freqMonthly => 'மாதாந்திர';

  @override
  String get freqQuarterly => 'காலாண்டு';

  @override
  String get freqHalfYearly => 'அரையாண்டு';

  @override
  String get freqYearly => 'ஆண்டு';

  @override
  String get premiumPerInstalment => 'ஒரு தவணைக்கான பிரீமியம்';

  @override
  String get tablePremiumRow => 'அட்டவணை பிரீமியம்';

  @override
  String get saRebateRow => 'காப்பீட்டுத் தொகை தள்ளுபடி';

  @override
  String totalPremiumRow(int count) {
    return 'மொத்த பிரீமியம் ($count தவணைகள்)';
  }

  @override
  String get payingTermRow => 'பிரீமியம் செலுத்தும் காலம்';

  @override
  String get returnRow => 'பயனுள்ள வருவாய் (XIRR)';

  @override
  String returnValue(String percent) {
    return 'ஆண்டுக்கு $percent%';
  }

  @override
  String get lifeCoverRow => 'ஆயுள் பாதுகாப்பு';

  @override
  String get allFrequenciesTitle => 'அனைத்து செலுத்தும் இடைவெளிகள்';

  @override
  String get notInTable => 'அதிகாரப்பூர்வ அட்டவணையில் இல்லை';

  @override
  String get noTableForPlan =>
      'இந்தத் திட்டத்தின் பிரீமியம் அட்டவணை இன்னும் சேர்க்கப்படவில்லை.';

  @override
  String get illustrationTitle => 'ஆண்டுவாரி பலன் விவரம்';

  @override
  String get colYear => 'ஆண்டு';

  @override
  String get colPremiumsPaid => 'செலுத்திய பிரீமியம்';

  @override
  String get colBonus => 'போனஸ்';

  @override
  String get colLifeCover => 'ஆயுள் பாதுகாப்பு';

  @override
  String get makeQuotation => 'விலைப்புள்ளி உருவாக்கு';

  @override
  String get gstNote =>
      'ஜிஎஸ்டி: 22 செப்டம்பர் 2025 அல்லது அதற்குப் பின் செலுத்திய தனிநபர் ஆயுள் காப்பீட்டு பிரீமியத்துக்கு இல்லை.';

  @override
  String get chartTitle => 'செலுத்திய பிரீமியம் vs பலன்கள்';

  @override
  String get chartPaid => 'மொத்த பிரீமியம்';

  @override
  String get chartReceived => 'மொத்த பலன்கள்';

  @override
  String get showTable => 'ஆண்டுவாரி அட்டவணையைக் காட்டு';

  @override
  String get hideTable => 'ஆண்டுவாரி அட்டவணையை மறை';

  @override
  String get reverseTitle => 'எனக்கு எவ்வளவு முடியும்?';

  @override
  String get budgetLabel => 'ஒரு தவணைக்கான பட்ஜெட் (₹)';

  @override
  String get reverseIntro =>
      'நீங்கள் எவ்வளவு செலுத்த முடியும் என்பதை உள்ளிடவும். ஒவ்வொரு திட்ட விருப்பமும் அந்தத் தொகைக்குள் அதிகபட்ச காப்பீட்டுத் தொகையைக் காட்டும்.';

  @override
  String optMaturityAge(int age) {
    return '$age வயதில் முதிர்வு';
  }

  @override
  String optCeasingAge(int age) {
    return '$age வயது வரை பிரீமியம்';
  }

  @override
  String optTerm(int years) {
    return '$years ஆண்டு காலம்';
  }

  @override
  String get reverseNone =>
      'இந்த வயதில் இந்த பட்ஜெட்டுக்கு எந்தத் திட்டமும் பொருந்தவில்லை.';

  @override
  String get saShort => 'காப்பீட்டுத் தொகை';

  @override
  String get premiumShort => 'பிரீமியம்';

  @override
  String get compareTitle => 'திட்டங்களை ஒப்பிடு';

  @override
  String optionN(int n) {
    return 'விருப்பம் $n';
  }

  @override
  String get addOption => 'விருப்பம் சேர்';

  @override
  String get removeOption => 'விருப்பம் நீக்கு';

  @override
  String get maturityShort => 'முதிர்வு / பலன்கள்';

  @override
  String get totalPaidShort => 'மொத்தம் செலுத்தியது';

  @override
  String get returnShort => 'வருவாய்';

  @override
  String get lifeCoverShort => 'ஆயுள் பாதுகாப்பு';

  @override
  String get comparisonTitle => 'ஒப்பீடு';

  @override
  String get toolsTitle => 'பாலிசி கருவிகள்';

  @override
  String get tabLoan => 'கடன்';

  @override
  String get tabPaidUp => 'பெய்டு-அப்';

  @override
  String get tabRevival => 'புதுப்பித்தல்';

  @override
  String get tabAdvance => 'முன்கூட்டிய';

  @override
  String get yearsInForceLabel => 'பாலிசி நடைமுறையில் உள்ள ஆண்டுகள்';

  @override
  String get loanAmountLabel => 'கடன் தொகை (₹)';

  @override
  String get loanMonthsLabel => 'திருப்பிச் செலுத்தும் வரை மாதங்கள்';

  @override
  String monthsValue(int months) {
    return '$months மாதங்கள்';
  }

  @override
  String get loanInterestRow => 'வட்டி';

  @override
  String get loanTotalRow => 'மொத்தம் திருப்பிச் செலுத்த';

  @override
  String loanRateNote(String rate) {
    return 'ஆண்டுக்கு $rate% வட்டி, அரையாண்டு கூட்டு வட்டி.';
  }

  @override
  String loanAvailableAfter(int years) {
    return '$years ஆண்டுகளுக்குப் பின் கடன் கிடைக்கும்.';
  }

  @override
  String get loanNotOffered => 'இந்தத் திட்டத்தில் கடன் வசதி இல்லை.';

  @override
  String get loanEligibleYes => 'கடனுக்குத் தகுதியானது';

  @override
  String get loanEligibleNo => 'இன்னும் கடனுக்குத் தகுதியில்லை';

  @override
  String get loanAmountNote =>
      'அதிகபட்ச கடன் சரண்டர் மதிப்பைப் பொறுத்தது; அதை இந்திய அஞ்சல் கணக்கிடுகிறது.';

  @override
  String get premiumsPaidLabel => 'செலுத்திய தவணைகள்';

  @override
  String get premiumsPayableLabel => 'செலுத்த வேண்டிய மொத்த தவணைகள்';

  @override
  String get paidUpSaRow => 'பெய்டு-அப் காப்பீட்டுத் தொகை';

  @override
  String get paidUpNote =>
      'தோராயமானது. ஏற்கனவே ஈட்டிய போனஸ் இந்திய அஞ்சல் பதிவுகளின்படி சேர்க்கப்படும். சரண்டர் மதிப்புக்கு அதிகாரப்பூர்வ சரண்டர் காரணிகள் தேவை; அது கணக்கிடப்படவில்லை.';

  @override
  String paidUpNotEligible(int years) {
    return 'பாலிசி $years ஆண்டுகள் நடைமுறையில் இருந்த பின்னரே பெய்டு-அப் ஆக முடியும்.';
  }

  @override
  String get paidUpInvalid =>
      'செலுத்திய தவணைகள் செலுத்த வேண்டியதை விட அதிகமாக இருக்கக் கூடாது.';

  @override
  String get instalmentLabel => 'ஒரு தவணைக்கான பிரீமியம் (₹)';

  @override
  String get firstUnpaidLabel => 'முதல் நிலுவைத் தவணை தேதி';

  @override
  String get payDateLabel => 'செலுத்தும் தேதி';

  @override
  String get missedRow => 'நிலுவைத் தவணைகள்';

  @override
  String get arrearsRow => 'நிலுவைத் தொகை';

  @override
  String get defaultFeeRow => 'தாமதக் கட்டணம்';

  @override
  String get totalPayableRow => 'மொத்தம் செலுத்த வேண்டியது';

  @override
  String revivalNote(String percent) {
    return 'தாமதமான ஒவ்வொரு மாதத்துக்கும் தவணையில் $percent% தாமதக் கட்டணம். நீண்ட காலத்துக்குப் பின் புதுப்பிக்க மருத்துவச் சான்றிதழ் தேவைப்படலாம்.';
  }

  @override
  String revivalLine(String date, int months, String fee) {
    return 'நிலுவை $date • $months மாதம் தாமதம் • கட்டணம் $fee';
  }

  @override
  String get nothingDue => 'அந்தத் தேதியில் எதுவும் நிலுவையில் இல்லை.';

  @override
  String get monthsAdvanceLabel => 'முன்கூட்டிச் செலுத்தும் மாதங்கள்';

  @override
  String rebateRow(String percent) {
    return 'தள்ளுபடி ($percent%)';
  }

  @override
  String get amountDueRow => 'செலுத்த வேண்டிய தொகை';

  @override
  String get payableRow => 'நீங்கள் செலுத்துவது';

  @override
  String get advanceNote =>
      'காட்டப்படும் தள்ளுபடி விகிதத் தரவிலுள்ள முன்கூட்டிய செலுத்தல் தள்ளுபடியின்படி; பிரீமியம் முன்கூட்டிச் செலுத்தும்போது பொருந்தும்.';

  @override
  String get policiesTitle => 'எனது பாலிசிகள்';

  @override
  String get noPolicies =>
      'இன்னும் பாலிசி எதுவும் சேமிக்கப்படவில்லை. சேர்க்க + ஐ அழுத்தவும்.';

  @override
  String get addPolicy => 'பாலிசி சேர்';

  @override
  String get editPolicy => 'பாலிசி திருத்து';

  @override
  String get holderNameLabel => 'பாலிசிதாரர் பெயர்';

  @override
  String get policyNumberLabel => 'பாலிசி எண்';

  @override
  String get premiumAmountLabel => 'ஒரு தவணைக்கான பிரீமியம் (₹, ரசீதுப்படி)';

  @override
  String get save => 'சேமி';

  @override
  String get delete => 'நீக்கு';

  @override
  String get deleteConfirm => 'இந்தப் பாலிசியை நீக்கவா?';

  @override
  String get cancel => 'ரத்து';

  @override
  String nextDue(String date) {
    return 'அடுத்த தவணை: $date';
  }

  @override
  String get noMoreDues => 'அனைத்து பிரீமியமும் செலுத்தப்பட்டது';

  @override
  String get remindersLabel => 'ஒவ்வொரு தவணைக்கும் 3 நாள் முன் நினைவூட்டு';

  @override
  String get remindersDenied =>
      'இந்தச் செயலிக்கு அறிவிப்புகள் அணைக்கப்பட்டுள்ளன.';

  @override
  String get accruedBonusRow => 'இதுவரை சேர்ந்த போனஸ்';

  @override
  String bonusMissingYears(String years) {
    return 'நி.ஆ. $years போனஸ் விகிதங்கள் செயலித் தரவில் இல்லை; மொத்தத்தில் அந்த ஆண்டுகள் சேர்க்கப்படவில்லை.';
  }

  @override
  String maturityOn(String date) {
    return '$date அன்று முதிர்வு';
  }

  @override
  String get upcomingDues => 'வரவிருக்கும் தவணைத் தேதிகள்';

  @override
  String get yearsInForceRow => 'நடைமுறை ஆண்டுகள்';

  @override
  String get reminderTitle => 'பிஎல்ஐ பிரீமியம் நிலுவை';

  @override
  String reminderBody(String name, String amount, String date, String number) {
    return '$name: $amount $date அன்று செலுத்த வேண்டும் (பாலிசி $number)';
  }

  @override
  String get savedLocally => 'இந்தத் தொலைபேசியில் மட்டும் சேமிக்கப்பட்டது.';

  @override
  String get requiredField => 'அவசியம்';

  @override
  String get projectedMaturityRow => 'மதிப்பிடப்பட்ட முதிர்வுத் தொகை';

  @override
  String get quotationTitle => 'விலைப்புள்ளி';

  @override
  String get customerNameLabel => 'வாடிக்கையாளர் பெயர்';

  @override
  String get agentNameLabel => 'தயாரித்தவர் (விருப்பம்)';

  @override
  String get sharePdf => 'PDF பகிர்';

  @override
  String get shareImage => 'படம் பகிர்';

  @override
  String get quotationHeading => 'பிரீமியம் விலைப்புள்ளி';

  @override
  String preparedOn(String date) {
    return '$date அன்று தயாரிக்கப்பட்டது';
  }

  @override
  String quotationFor(String name) {
    return 'பெறுநர்: $name';
  }

  @override
  String preparedBy(String name) {
    return 'தயாரித்தவர்: $name';
  }

  @override
  String get quotationInvalid =>
      'விலைப்புள்ளி உருவாக்க திட்ட விவரங்களை நிறைவு செய்யவும்.';

  @override
  String get planDetailsTitle => 'திட்ட விவரங்கள்';

  @override
  String get planInfoTitle => 'திட்டத் தகவல்';

  @override
  String entryAgeInfo(int min, int max) {
    return 'நுழைவு வயது: $min–$max';
  }

  @override
  String maturityAgesInfo(String ages) {
    return 'முதிர்வு வயதுகள்: $ages';
  }

  @override
  String ceasingAgesInfo(String ages, int age) {
    return 'பிரீமியம் செலுத்தும் வயதுகள்: $ages; $age வயதில் முதிர்வு';
  }

  @override
  String termsInfo(String terms) {
    return 'காலம்: $terms ஆண்டுகள்';
  }

  @override
  String survivalInfo(String list) {
    return 'பணம் திரும்ப: $list';
  }

  @override
  String survivalItem(int percent, int year) {
    return '$yearஆம் ஆண்டில் $percent%';
  }

  @override
  String loanInfo(int years) {
    return '$years ஆண்டுகளுக்குப் பின் கடன்';
  }

  @override
  String get noLoanInfo => 'கடன் இல்லை';

  @override
  String surrenderInfo(int years) {
    return '$years ஆண்டுகளுக்குப் பின் சரண்டர்';
  }

  @override
  String get noSurrenderInfo => 'சரண்டர் இல்லை';

  @override
  String bonusInfo(String fy, int rate) {
    return 'நி.ஆ. $fy போனஸ்: ஒவ்வொரு ₹1,000க்கும் ஆண்டுக்கு ₹$rate';
  }

  @override
  String saLimitInfo(String min, String max) {
    return 'காப்பீட்டுத் தொகை: $min – $max';
  }

  @override
  String jointInfo(int min, int max, int tmin, int tmax) {
    return 'ஒவ்வொரு துணையின் வயது $min–$max; காலம் $tmin–$tmax ஆண்டுகள்';
  }

  @override
  String childInfo(int min, int max, int parent, int children, String cap) {
    return 'குழந்தையின் வயது $min–$max; பெற்றோர் வயது $parent வரை; அதிகபட்சம் $children குழந்தைகள்; காப்பீட்டுத் தொகை $cap வரை';
  }

  @override
  String conversionInfo(int years) {
    return '$years ஆண்டுகளுக்குப் பின் எண்டோமென்ட் காப்பீடாக மாற்றலாம்';
  }

  @override
  String get faqTitle => 'பொதுவான கேள்விகள்';

  @override
  String get faq1q => 'போனஸ் உத்தரவாதமா?';

  @override
  String get faq1a =>
      'இல்லை. இந்திய அஞ்சல் ஒவ்வொரு ஆண்டும் போனஸ் விகிதங்களை அறிவிக்கிறது. இங்குள்ள மதிப்பீடுகள் எதிர்கால ஒவ்வொரு ஆண்டுக்கும் சமீபத்திய அறிவிக்கப்பட்ட விகிதத்தையே கருதுகின்றன.';

  @override
  String get faq2q => 'பிரீமியம் எங்கிருந்து வருகிறது?';

  @override
  String get faq2a =>
      'இந்திய அஞ்சலின் அதிகாரப்பூர்வ பிரீமியம் அட்டவணைகளிலிருந்து. செயலி ஒருபோதும் பிரீமியத்தை மதிப்பிடுவதில்லை.';

  @override
  String get faq3q => 'வருமான வரிச் சலுகை உண்டா?';

  @override
  String get faq3a =>
      'பிரீமியம் பிரிவு 80C (பழைய வரி முறை) கீழ் தகுதி பெறலாம்; முதிர்வுத் தொகை பிரிவு 10(10D) கீழ் நிபந்தனைகளுக்கு உட்பட்டு விலக்கு பெறலாம். இது வரி ஆலோசனை அல்ல.';

  @override
  String get faq4q => 'பிரீமியத்துக்கு ஜிஎஸ்டி உண்டா?';

  @override
  String get faq4a =>
      'இல்லை. 22 செப்டம்பர் 2025 முதல் தனிநபர் ஆயுள் காப்பீட்டு பிரீமியத்துக்கு ஜிஎஸ்டி இல்லை.';

  @override
  String get faq5q => 'PLI, RPLI யார் எடுக்கலாம்?';

  @override
  String get faq5a =>
      'PLI: அரசு மற்றும் அரை-அரசு ஊழியர்கள், தொழில் வல்லுநர்கள், பட்டதாரிகள், பட்டயம் பெற்றவர்கள் மற்றும் இந்திய அஞ்சல் பட்டியலிட்ட பிறர். RPLI: கிராமப்புற வாசிகள் மற்றும் பட்டியலிடப்பட்ட வங்கி சேமிப்புக் கணக்கு வைத்திருப்போர்.';

  @override
  String get aboutTitle => 'பற்றி';

  @override
  String get privacyTitle => 'தனியுரிமை';

  @override
  String get privacyBody =>
      'PLI RPLI கணிப்பான் எந்தத் தரவையும் சேகரிப்பதில்லை. நீங்கள் உள்ளிடுவது அல்லது சேமிப்பது அனைத்தும் இந்தத் தொலைபேசியிலேயே இருக்கும். கணக்கு அல்லது இணையம் தேவையில்லை.';

  @override
  String get dataSourceTitle => 'விகிதத் தரவு';

  @override
  String dataSourceBody(String id, String date, String source) {
    return 'விதிகள் $id, $date முதல் நடைமுறை. ஆதாரம்: $source';
  }

  @override
  String get provisionalTitle => 'இன்னும் உறுதிசெய்யப்பட வேண்டிய விதிகள்';

  @override
  String get provisionalIntro =>
      'இந்திய அஞ்சலின் அதிகாரப்பூர்வ சுற்றறிக்கைகளிலிருந்து உறுதியாகும் வரை இவ்விதிகள் தற்காலிக அனுமானங்கள் (ஆங்கிலத்தில்):';

  @override
  String get checkUpdates => 'விகிதப் புதுப்பிப்புகளைச் சரிபார்';

  @override
  String updateInstalled(int version) {
    return 'விகிதத் தரவு பதிப்பு $versionக்குப் புதுப்பிக்கப்பட்டது.';
  }

  @override
  String get updateCurrent => 'விகிதத் தரவு சமீபத்தியது.';

  @override
  String updateFailed(String error) {
    return 'புதுப்பிப்பு தோல்வி; தற்போதைய விகிதங்கள் தொடர்கின்றன. $error';
  }

  @override
  String get sampleDataNote =>
      'பிரீமியம் அட்டவணைகள் மாதிரித் தரவு, இந்திய அஞ்சலின் அதிகாரப்பூர்வ எண்கள் அல்ல.';

  @override
  String appVersion(String version) {
    return 'பதிப்பு $version';
  }

  @override
  String get homeTagline => 'பிரீமியம், போனஸ், முதிர்வு — ஆஃப்லைனிலும்';

  @override
  String get quickPremiumTitle => 'பிரீமியம் கணக்கிடு';

  @override
  String get quickPremiumBody =>
      'எந்தத் திட்டம், வயது, காப்பீட்டுத் தொகையும் — அனைத்து இடைவெளிகளும்';

  @override
  String get sectionCalculators => 'கணிப்பான்கள்';

  @override
  String get sectionServicing => 'பாலிசி சேவைகள்';

  @override
  String get sectionLearn => 'அறிக';

  @override
  String get descPremium => 'ஒவ்வொரு இடைவெளிக்கும் பிரீமியம்';

  @override
  String get descMaturity => 'போனஸ் மற்றும் முதிர்வுத் தொகை';

  @override
  String get descCompare => 'திட்டங்கள் அருகருகே';

  @override
  String get descAfford => 'உங்கள் பட்ஜெட்டில் சிறந்த பாதுகாப்பு';

  @override
  String get descPolicies => 'சேமித்த பாலிசிகள், தவணைத் தேதிகள்';

  @override
  String get descTools => 'கடன், புதுப்பித்தல், பெய்டு-அப்';

  @override
  String get descQuotation => 'PDF விலைப்புள்ளி பகிர்';

  @override
  String get descEligibility => 'PLI அல்லது RPLI யார் எடுக்கலாம்';

  @override
  String get descPlans => 'திட்ட விதிகள், கேள்விகள்';

  @override
  String get descAbout => 'தனியுரிமை மற்றும் விகிதத் தரவு';

  @override
  String get sectionPersonTitle => 'பாலிசிதாரர்';

  @override
  String get sectionCoverTitle => 'பாதுகாப்பு மற்றும் செலுத்தல்';
}
