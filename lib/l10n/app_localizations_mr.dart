// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'पीएलआय सहायक';

  @override
  String get tilePremium => 'प्रीमियम';

  @override
  String get tileMaturity => 'परिपक्वता';

  @override
  String get tileCompare => 'तुलना';

  @override
  String get tileEligibility => 'पात्रता';

  @override
  String get tileMyPolicies => 'माझ्या पॉलिसी';

  @override
  String get tileQuotation => 'कोटेशन';

  @override
  String get comingSoon => 'लवकरच';

  @override
  String get sampleDataBanner => 'नमुना डेटा – अधिकृत नाही';

  @override
  String ratesFooter(String financialYear) {
    return 'दर आर्थिक वर्ष $financialYear • स्रोत: भारतीय टपाल';
  }

  @override
  String get bonusDisclaimer =>
      'बोनस दर दरवर्षी जाहीर होतात आणि भविष्यासाठी हमी नाही. अंतिम रक्कम भारतीय टपालानुसार.';

  @override
  String get independentDisclaimerTitle => 'सुरू करण्यापूर्वी';

  @override
  String get independentDisclaimer =>
      'हा एक स्वतंत्र कॅल्क्युलेटर आहे, भारतीय टपालाचे अधिकृत ॲप नाही. सर्व गणना तुमच्या फोनवरच होते; कोणताही डेटा गोळा केला जात नाही.';

  @override
  String get understood => 'मला समजले';

  @override
  String dataLoadError(String error) {
    return 'दर डेटा लोड झाला नाही: $error';
  }

  @override
  String get maturityTitle => 'परिपक्वता आणि बोनस';

  @override
  String get eligibilityTitle => 'पात्रता तपासणी';

  @override
  String get premiumTitle => 'प्रीमियम कॅल्क्युलेटर';

  @override
  String get schemePli => 'टपाल जीवन विमा (PLI)';

  @override
  String get schemeRpli => 'ग्रामीण टपाल जीवन विमा (RPLI)';

  @override
  String get planLabel => 'योजना';

  @override
  String rulesPendingSuffix(String plan) {
    return '$plan (नियम प्रलंबित)';
  }

  @override
  String get entryAgeLabel => 'प्रवेश वय';

  @override
  String get childAgeLabel => 'मुलाचे वय';

  @override
  String get spouseAgeLabel => 'जोडीदाराचे वय';

  @override
  String ageYears(int age) {
    return '$age वर्षे';
  }

  @override
  String get decrease => 'कमी करा';

  @override
  String get increase => 'वाढवा';

  @override
  String get ageBasisNote =>
      'वय पूर्ण वर्षांत भरा. भारतीय टपालाचा वयाचा नियम निश्चित झाल्यावर जन्मतारखेवरून वय मोजण्याची सोय जोडली जाईल.';

  @override
  String get sumAssuredLabel => 'विमा रक्कम (₹)';

  @override
  String get maturityAgeLabel => 'परिपक्वता वय';

  @override
  String get termLabel => 'पॉलिसी मुदत';

  @override
  String termYears(int years) {
    return '$years वर्षे';
  }

  @override
  String get startDateLabel => 'पॉलिसी सुरू होण्याची तारीख';

  @override
  String get resultMaturityValue => 'परिपक्वता रक्कम';

  @override
  String get resultTotalBenefits => 'एकूण मिळणारे लाभ';

  @override
  String get sumAssuredRow => 'विमा रक्कम';

  @override
  String get termRow => 'मुदत';

  @override
  String bonusRateRow(String fy) {
    return 'बोनस दर (आ.व. $fy)';
  }

  @override
  String bonusRateValue(int rate) {
    return '₹1,000 मागे दरवर्षी ₹$rate';
  }

  @override
  String get annualBonusRow => 'वार्षिक बोनस';

  @override
  String totalBonusRow(int years) {
    return 'एकूण बोनस ($years वर्षे)';
  }

  @override
  String get terminalBonusRow => 'टर्मिनल बोनस';

  @override
  String projectionNote(String fy) {
    return 'मुदतीच्या प्रत्येक वर्षी आ.व. $fy चा बोनस दर कायम राहील असे गृहीत धरले आहे.';
  }

  @override
  String get timelineTitle => 'हयात लाभ वेळापत्रक';

  @override
  String timelineYear(int year) {
    return 'वर्ष $year';
  }

  @override
  String get timelineSurvival => 'हयात लाभ';

  @override
  String get timelineMaturity => 'परिपक्वता: उर्वरित विमा रक्कम + संपूर्ण बोनस';

  @override
  String get timelineDeathNote =>
      'मुदतीत मृत्यू झाल्यास: आधी दिलेले हयात लाभ न वजा करता संपूर्ण विमा रक्कम + बोनस.';

  @override
  String get notAvailableTitle => 'अद्याप उपलब्ध नाही';

  @override
  String get rulesPendingBody =>
      'या योजनेचे नियम भारतीय टपालाच्या अधिकृत परिपत्रकातून निश्चित झाल्यावर गणना जोडली जाईल.';

  @override
  String get premiumPendingBody =>
      'प्रीमियम भारतीय टपालाच्या अधिकृत प्रीमियम तक्त्यांमधूनच आला पाहिजे. अधिकृत तक्ते जोडून तपासल्यानंतर हा कॅल्क्युलेटर सुरू होईल — अंदाजे प्रीमियम दाखवले जात नाहीत.';

  @override
  String missingBonusRate(String fy) {
    return 'आ.व. $fy साठी जाहीर बोनस दर नाही.';
  }

  @override
  String vEntryAge(String plan, int min, int max, int age) {
    return '$plan साठी प्रवेश वय $min–$max आहे. तुमचे वय: $age';
  }

  @override
  String vChildAge(int min, int max, int age) {
    return 'मुलाचे वय $min–$max असावे. भरलेले: $age';
  }

  @override
  String vSpouseAge(int min, int max, int age) {
    return 'जोडीदाराचे वय $min–$max असावे. भरलेले: $age';
  }

  @override
  String vSaMin(String min, String sa) {
    return 'किमान विमा रक्कम $min आहे. भरलेली: $sa';
  }

  @override
  String vSaMax(String max, String sa) {
    return 'कमाल विमा रक्कम $max आहे (या योजनेतील तुमच्या सर्व पॉलिसी मिळून). भरलेली: $sa';
  }

  @override
  String vSaMultiple(String multiple) {
    return 'विमा रक्कम $multiple च्या पटीत असावी';
  }

  @override
  String vMaturityNotOffered(int value, String allowed) {
    return 'परिपक्वता वय $value उपलब्ध नाही. यातून निवडा: $allowed';
  }

  @override
  String vCeasingNotOffered(int value, String allowed) {
    return 'प्रीमियम भरण्याचे वय $value उपलब्ध नाही. यातून निवडा: $allowed';
  }

  @override
  String vTermNotOffered(int value, String allowed) {
    return '$value वर्षांची मुदत उपलब्ध नाही. यातून निवडा: $allowed';
  }

  @override
  String vNotAfterEntry(int value, int age) {
    return 'परिपक्वता वय $value हे प्रवेश वयापेक्षा ($age) जास्त असावे.';
  }

  @override
  String vTermRange(int min, int max, int term) {
    return 'मुदत $min–$max वर्षे असावी. भरलेली: $term';
  }

  @override
  String vParentAge(int max, int age) {
    return 'पालकांचे वय $max किंवा कमी असावे. भरलेले: $age';
  }

  @override
  String vTooManyChildren(int max) {
    return 'जास्तीत जास्त $max मुलांचा विमा होऊ शकतो.';
  }

  @override
  String vChildSaCap(String cap, String sa) {
    return 'या मुलासाठी कमाल विमा रक्कम $cap आहे. भरलेली: $sa';
  }

  @override
  String get vMissing => 'कृपया सर्व तपशील भरा.';

  @override
  String get eligibilityIntro =>
      'व्यक्तीला लागू होणारे सर्व पर्याय निवडा, नंतर वय भरा.';

  @override
  String get groupsPli => 'PLI — यापैकी कोणतेही एक';

  @override
  String get groupsRpli => 'RPLI — यापैकी कोणतेही एक';

  @override
  String get group_central_state_govt => 'केंद्र / राज्य सरकारी कर्मचारी';

  @override
  String get group_defence_paramilitary => 'संरक्षण / निमलष्करी दल';

  @override
  String get group_psu => 'सार्वजनिक क्षेत्र उपक्रम';

  @override
  String get group_banks => 'बँक कर्मचारी';

  @override
  String get group_local_bodies => 'स्थानिक स्वराज्य संस्था कर्मचारी';

  @override
  String get group_educational_institutions =>
      'शैक्षणिक संस्था (मान्यताप्राप्त खासगी सह)';

  @override
  String get group_listed_companies => 'सूचीबद्ध कंपनी कर्मचारी';

  @override
  String get group_professionals => 'व्यावसायिक (डॉक्टर, अभियंता, सीए, वकील…)';

  @override
  String get group_graduates_diploma_holders => 'पदवीधर किंवा पदविकाधारक';

  @override
  String get group_rural_resident => 'ग्रामीण भागातील रहिवासी';

  @override
  String get group_scheduled_bank_savings_account_holder =>
      'अनुसूचित बँकेत बचत खातेदार';

  @override
  String get ageLabel => 'वय';

  @override
  String get eligibleFor => 'पात्र आहात';

  @override
  String plansAtAge(int age) {
    return '$age व्या वर्षी उपलब्ध योजना';
  }

  @override
  String get childPlansTitle => 'मुलांच्या पॉलिसी (तुमच्या मुलांसाठी)';

  @override
  String get selectGroupPrompt =>
      'पात्र योजना पाहण्यासाठी वर किमान एक पर्याय निवडा.';

  @override
  String noPlansAtAge(int age) {
    return '$age व्या वर्षी कोणत्याही योजनेत प्रवेश नाही.';
  }

  @override
  String get eligibilityNote =>
      'अंतिम स्वीकृती भारतीय टपालाची वैद्यकीय तपासणी आणि कागदपत्रांच्या अधीन आहे.';

  @override
  String get languageLabel => 'भाषा';

  @override
  String get systemLanguage => 'डिव्हाइसची भाषा';
}
