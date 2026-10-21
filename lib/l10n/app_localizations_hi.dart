// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'पीएलआई सहायक';

  @override
  String get tilePremium => 'प्रीमियम';

  @override
  String get tileMaturity => 'परिपक्वता';

  @override
  String get tileCompare => 'तुलना';

  @override
  String get tileEligibility => 'पात्रता';

  @override
  String get tileMyPolicies => 'मेरी पॉलिसियाँ';

  @override
  String get tileQuotation => 'कोटेशन';

  @override
  String get comingSoon => 'जल्द आ रहा है';

  @override
  String get sampleDataBanner => 'नमूना डेटा – आधिकारिक नहीं';

  @override
  String ratesFooter(String financialYear) {
    return 'दरें वित्त वर्ष $financialYear • स्रोत: भारतीय डाक';
  }

  @override
  String get bonusDisclaimer =>
      'बोनस दरें हर वर्ष घोषित होती हैं और भविष्य के लिए गारंटीशुदा नहीं हैं। अंतिम राशि भारतीय डाक के अनुसार।';

  @override
  String get independentDisclaimerTitle => 'शुरू करने से पहले';

  @override
  String get independentDisclaimer =>
      'यह एक स्वतंत्र कैलकुलेटर है, भारतीय डाक का आधिकारिक ऐप नहीं। सारी गणना आपके फ़ोन पर होती है; कोई डेटा एकत्र नहीं किया जाता।';

  @override
  String get understood => 'मैं समझ गया/गई';

  @override
  String dataLoadError(String error) {
    return 'दर डेटा लोड नहीं हो सका: $error';
  }

  @override
  String get maturityTitle => 'परिपक्वता और बोनस';

  @override
  String get eligibilityTitle => 'पात्रता जाँच';

  @override
  String get premiumTitle => 'प्रीमियम कैलकुलेटर';

  @override
  String get schemePli => 'डाक जीवन बीमा (PLI)';

  @override
  String get schemeRpli => 'ग्रामीण डाक जीवन बीमा (RPLI)';

  @override
  String get planLabel => 'योजना';

  @override
  String rulesPendingSuffix(String plan) {
    return '$plan (नियम लंबित)';
  }

  @override
  String get entryAgeLabel => 'प्रवेश आयु';

  @override
  String get childAgeLabel => 'बच्चे की आयु';

  @override
  String get spouseAgeLabel => 'जीवनसाथी की आयु';

  @override
  String ageYears(int age) {
    return '$age वर्ष';
  }

  @override
  String get decrease => 'घटाएँ';

  @override
  String get increase => 'बढ़ाएँ';

  @override
  String get ageBasisNote =>
      'आयु पूरे वर्षों में दर्ज करें। भारतीय डाक का आयु नियम पुष्ट होने के बाद जन्मतिथि से आयु की सुविधा जोड़ी जाएगी।';

  @override
  String get sumAssuredLabel => 'बीमा राशि (₹)';

  @override
  String get maturityAgeLabel => 'परिपक्वता आयु';

  @override
  String get termLabel => 'पॉलिसी अवधि';

  @override
  String termYears(int years) {
    return '$years वर्ष';
  }

  @override
  String get startDateLabel => 'पॉलिसी आरंभ तिथि';

  @override
  String get resultMaturityValue => 'परिपक्वता राशि';

  @override
  String get resultTotalBenefits => 'कुल प्राप्त लाभ';

  @override
  String get sumAssuredRow => 'बीमा राशि';

  @override
  String get termRow => 'अवधि';

  @override
  String bonusRateRow(String fy) {
    return 'बोनस दर (वि.व. $fy)';
  }

  @override
  String bonusRateValue(int rate) {
    return '₹$rate प्रति ₹1,000 / वर्ष';
  }

  @override
  String get annualBonusRow => 'वार्षिक बोनस';

  @override
  String totalBonusRow(int years) {
    return 'कुल बोनस ($years वर्ष)';
  }

  @override
  String get terminalBonusRow => 'टर्मिनल बोनस';

  @override
  String projectionNote(String fy) {
    return 'माना गया है कि वि.व. $fy की बोनस दर पूरी अवधि के हर वर्ष जारी रहेगी।';
  }

  @override
  String get timelineTitle => 'उत्तरजीविता लाभ समय-सारणी';

  @override
  String timelineYear(int year) {
    return 'वर्ष $year';
  }

  @override
  String get timelineSurvival => 'उत्तरजीविता लाभ';

  @override
  String get timelineMaturity => 'परिपक्वता: शेष बीमा राशि + पूरा बोनस';

  @override
  String get timelineDeathNote =>
      'अवधि के दौरान मृत्यु होने पर: पहले दिए गए उत्तरजीविता लाभ घटाए बिना पूरी बीमा राशि + बोनस।';

  @override
  String get notAvailableTitle => 'अभी उपलब्ध नहीं';

  @override
  String get rulesPendingBody =>
      'इस योजना के नियम भारतीय डाक के आधिकारिक परिपत्र से पुष्ट होने के बाद गणना जोड़ी जाएगी।';

  @override
  String get premiumPendingBody =>
      'प्रीमियम भारतीय डाक की आधिकारिक प्रीमियम तालिकाओं से ही आना चाहिए। आधिकारिक तालिकाएँ जोड़कर जाँचने के बाद यह कैलकुलेटर चालू होगा — अनुमानित प्रीमियम नहीं दिखाए जाते।';

  @override
  String missingBonusRate(String fy) {
    return 'वि.व. $fy के लिए कोई घोषित बोनस दर नहीं।';
  }

  @override
  String vEntryAge(String plan, int min, int max, int age) {
    return '$plan की प्रवेश आयु $min–$max है। आपकी आयु: $age';
  }

  @override
  String vChildAge(int min, int max, int age) {
    return 'बच्चे की आयु $min–$max होनी चाहिए। दर्ज: $age';
  }

  @override
  String vSpouseAge(int min, int max, int age) {
    return 'जीवनसाथी की आयु $min–$max होनी चाहिए। दर्ज: $age';
  }

  @override
  String vSaMin(String min, String sa) {
    return 'न्यूनतम बीमा राशि $min है। दर्ज: $sa';
  }

  @override
  String vSaMax(String max, String sa) {
    return 'अधिकतम बीमा राशि $max है (इस योजना की आपकी सभी पॉलिसियाँ मिलाकर)। दर्ज: $sa';
  }

  @override
  String vSaMultiple(String multiple) {
    return 'बीमा राशि $multiple के गुणज में होनी चाहिए';
  }

  @override
  String vMaturityNotOffered(int value, String allowed) {
    return 'परिपक्वता आयु $value उपलब्ध नहीं है। इनमें से चुनें: $allowed';
  }

  @override
  String vCeasingNotOffered(int value, String allowed) {
    return 'प्रीमियम भुगतान आयु $value उपलब्ध नहीं है। इनमें से चुनें: $allowed';
  }

  @override
  String vTermNotOffered(int value, String allowed) {
    return '$value वर्ष की अवधि उपलब्ध नहीं है। इनमें से चुनें: $allowed';
  }

  @override
  String vNotAfterEntry(int value, int age) {
    return 'परिपक्वता आयु $value प्रवेश आयु ($age) से अधिक होनी चाहिए।';
  }

  @override
  String vTermRange(int min, int max, int term) {
    return 'अवधि $min–$max वर्ष होनी चाहिए। दर्ज: $term';
  }

  @override
  String vParentAge(int max, int age) {
    return 'माता/पिता की आयु $max या कम होनी चाहिए। दर्ज: $age';
  }

  @override
  String vTooManyChildren(int max) {
    return 'अधिकतम $max बच्चों का बीमा हो सकता है।';
  }

  @override
  String vChildSaCap(String cap, String sa) {
    return 'इस बच्चे के लिए अधिकतम बीमा राशि $cap है। दर्ज: $sa';
  }

  @override
  String get vMissing => 'कृपया सभी विवरण भरें।';

  @override
  String get eligibilityIntro =>
      'व्यक्ति पर लागू होने वाले सभी विकल्प चुनें, फिर आयु दर्ज करें।';

  @override
  String get groupsPli => 'PLI — इनमें से कोई एक';

  @override
  String get groupsRpli => 'RPLI — इनमें से कोई एक';

  @override
  String get group_central_state_govt => 'केंद्र / राज्य सरकार कर्मचारी';

  @override
  String get group_defence_paramilitary => 'रक्षा / अर्धसैनिक बल';

  @override
  String get group_psu => 'सार्वजनिक क्षेत्र उपक्रम';

  @override
  String get group_banks => 'बैंक कर्मचारी';

  @override
  String get group_local_bodies => 'स्थानीय निकाय कर्मचारी';

  @override
  String get group_educational_institutions =>
      'शैक्षणिक संस्थान (मान्यता प्राप्त निजी सहित)';

  @override
  String get group_listed_companies => 'सूचीबद्ध कंपनी कर्मचारी';

  @override
  String get group_professionals => 'पेशेवर (डॉक्टर, इंजीनियर, सीए, वकील…)';

  @override
  String get group_graduates_diploma_holders => 'स्नातक या डिप्लोमा धारक';

  @override
  String get group_rural_resident => 'ग्रामीण क्षेत्र के निवासी';

  @override
  String get group_scheduled_bank_savings_account_holder =>
      'अनुसूचित बैंक में बचत खाताधारक';

  @override
  String get ageLabel => 'आयु';

  @override
  String get eligibleFor => 'पात्र हैं';

  @override
  String plansAtAge(int age) {
    return '$age वर्ष की आयु में उपलब्ध योजनाएँ';
  }

  @override
  String get childPlansTitle => 'बच्चों की पॉलिसियाँ (आपके बच्चों के लिए)';

  @override
  String get selectGroupPrompt =>
      'पात्र योजनाएँ देखने के लिए ऊपर कम से कम एक विकल्प चुनें।';

  @override
  String noPlansAtAge(int age) {
    return '$age वर्ष की आयु में किसी योजना में प्रवेश नहीं।';
  }

  @override
  String get eligibilityNote =>
      'अंतिम स्वीकृति भारतीय डाक की चिकित्सा जाँच और दस्तावेज़ों के अधीन है।';

  @override
  String get languageLabel => 'भाषा';

  @override
  String get systemLanguage => 'डिवाइस की भाषा';
}
