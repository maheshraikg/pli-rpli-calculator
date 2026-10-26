// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'PLI & RPLI कैलकुलेटर';

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

  @override
  String get tileAfford => 'कितना संभव';

  @override
  String get tileTools => 'पॉलिसी टूल';

  @override
  String get tilePlans => 'योजनाएँ';

  @override
  String get tileAbout => 'जानकारी';

  @override
  String get dobLabel => 'जन्मतिथि';

  @override
  String get useAgeInstead => 'इसके बजाय आयु दर्ज करें';

  @override
  String get useDobInstead => 'जन्मतिथि दर्ज करें';

  @override
  String ageFromDobNearest(int age) {
    return 'आरंभ तिथि पर प्रवेश आयु: $age (निकटतम जन्मदिन आयु)';
  }

  @override
  String ageFromDobLast(int age) {
    return 'आरंभ तिथि पर प्रवेश आयु: $age (पिछले जन्मदिन की आयु)';
  }

  @override
  String get premiumCeasingAgeLabel => 'प्रीमियम भुगतान आयु';

  @override
  String get frequencyLabel => 'भुगतान आवृत्ति';

  @override
  String get freqMonthly => 'मासिक';

  @override
  String get freqQuarterly => 'त्रैमासिक';

  @override
  String get freqHalfYearly => 'अर्धवार्षिक';

  @override
  String get freqYearly => 'वार्षिक';

  @override
  String get premiumPerInstalment => 'प्रति किस्त प्रीमियम';

  @override
  String get tablePremiumRow => 'तालिका प्रीमियम';

  @override
  String get saRebateRow => 'बीमा राशि छूट';

  @override
  String totalPremiumRow(int count) {
    return 'कुल प्रीमियम ($count किस्तें)';
  }

  @override
  String get payingTermRow => 'प्रीमियम भुगतान अवधि';

  @override
  String get lifeCoverRow => 'जीवन सुरक्षा';

  @override
  String get allFrequenciesTitle => 'सभी भुगतान आवृत्तियाँ';

  @override
  String get notInTable => 'आधिकारिक तालिका में उपलब्ध नहीं';

  @override
  String get noTableForPlan =>
      'इस योजना की प्रीमियम तालिका अभी नहीं जोड़ी गई है।';

  @override
  String get illustrationTitle => 'वर्षवार लाभ विवरण';

  @override
  String get colYear => 'वर्ष';

  @override
  String get colPremiumsPaid => 'भुगतान प्रीमियम';

  @override
  String get colBonus => 'बोनस';

  @override
  String get colLifeCover => 'जीवन सुरक्षा';

  @override
  String get makeQuotation => 'कोटेशन बनाएँ';

  @override
  String get gstNote =>
      'जीएसटी: 22 सितंबर 2025 या उसके बाद चुकाए गए व्यक्तिगत जीवन बीमा प्रीमियम पर शून्य।';

  @override
  String get chartTitle => 'भुगतान प्रीमियम बनाम लाभ';

  @override
  String get chartPaid => 'कुल प्रीमियम';

  @override
  String get chartReceived => 'कुल लाभ';

  @override
  String get showTable => 'वर्षवार तालिका दिखाएँ';

  @override
  String get hideTable => 'वर्षवार तालिका छिपाएँ';

  @override
  String get reverseTitle => 'मैं कितना ले सकता हूँ?';

  @override
  String get budgetLabel => 'प्रति किस्त बजट (₹)';

  @override
  String get reverseIntro =>
      'आप कितना चुका सकते हैं, दर्ज करें। हर योजना विकल्प उस राशि में अधिकतम बीमा राशि दिखाता है।';

  @override
  String optMaturityAge(int age) {
    return '$age पर परिपक्वता';
  }

  @override
  String optCeasingAge(int age) {
    return '$age वर्ष तक प्रीमियम';
  }

  @override
  String optTerm(int years) {
    return '$years वर्ष की अवधि';
  }

  @override
  String get reverseNone => 'इस आयु में इस बजट में कोई योजना नहीं बैठती।';

  @override
  String get saShort => 'बीमा राशि';

  @override
  String get premiumShort => 'प्रीमियम';

  @override
  String get compareTitle => 'योजनाओं की तुलना';

  @override
  String optionN(int n) {
    return 'विकल्प $n';
  }

  @override
  String get addOption => 'विकल्प जोड़ें';

  @override
  String get removeOption => 'विकल्प हटाएँ';

  @override
  String get maturityShort => 'परिपक्वता / लाभ';

  @override
  String get totalPaidShort => 'कुल भुगतान';

  @override
  String get lifeCoverShort => 'जीवन सुरक्षा';

  @override
  String get comparisonTitle => 'तुलना';

  @override
  String get toolsTitle => 'पॉलिसी टूल';

  @override
  String get tabLoan => 'ऋण';

  @override
  String get tabPaidUp => 'पेड-अप';

  @override
  String get tabRevival => 'पुनर्जीवन';

  @override
  String get tabAdvance => 'अग्रिम';

  @override
  String get yearsInForceLabel => 'पॉलिसी कितने वर्ष से लागू है';

  @override
  String get loanAmountLabel => 'ऋण राशि (₹)';

  @override
  String get loanMonthsLabel => 'चुकाने तक के महीने';

  @override
  String monthsValue(int months) {
    return '$months महीने';
  }

  @override
  String get loanInterestRow => 'ब्याज';

  @override
  String get loanTotalRow => 'कुल चुकाना';

  @override
  String loanRateNote(String rate) {
    return '$rate% वार्षिक ब्याज, अर्धवार्षिक चक्रवृद्धि।';
  }

  @override
  String loanAvailableAfter(int years) {
    return '$years वर्ष बाद ऋण उपलब्ध।';
  }

  @override
  String get loanNotOffered => 'इस योजना में ऋण सुविधा नहीं है।';

  @override
  String get loanEligibleYes => 'ऋण के लिए पात्र';

  @override
  String get loanEligibleNo => 'अभी ऋण के लिए पात्र नहीं';

  @override
  String get loanAmountNote =>
      'अधिकतम ऋण समर्पण मूल्य पर निर्भर है, जिसकी गणना भारतीय डाक करता है।';

  @override
  String get premiumsPaidLabel => 'चुकाई गई किस्तें';

  @override
  String get premiumsPayableLabel => 'कुल देय किस्तें';

  @override
  String get paidUpSaRow => 'पेड-अप बीमा राशि';

  @override
  String get paidUpNote =>
      'अनुमानित। अर्जित बोनस भारतीय डाक के रिकॉर्ड अनुसार जुड़ता है। समर्पण मूल्य के लिए आधिकारिक समर्पण गुणक चाहिए, जिसकी गणना नहीं की गई है।';

  @override
  String paidUpNotEligible(int years) {
    return 'पॉलिसी $years वर्ष लागू रहने के बाद ही पेड-अप हो सकती है।';
  }

  @override
  String get paidUpInvalid =>
      'चुकाई गई किस्तें देय किस्तों से अधिक नहीं हो सकतीं।';

  @override
  String get instalmentLabel => 'प्रति किस्त प्रीमियम (₹)';

  @override
  String get firstUnpaidLabel => 'पहली बकाया किस्त की तिथि';

  @override
  String get payDateLabel => 'भुगतान तिथि';

  @override
  String get missedRow => 'देय किस्तें';

  @override
  String get arrearsRow => 'बकाया';

  @override
  String get defaultFeeRow => 'विलंब शुल्क';

  @override
  String get totalPayableRow => 'कुल देय';

  @override
  String revivalNote(String percent) {
    return 'देरी के हर महीने पर किस्त का $percent% विलंब शुल्क। लंबे समय बाद पुनर्जीवन के लिए चिकित्सा प्रमाणपत्र लग सकता है।';
  }

  @override
  String revivalLine(String date, int months, String fee) {
    return 'देय $date • $months महीने देर • शुल्क $fee';
  }

  @override
  String get nothingDue => 'उस तिथि को कुछ भी देय नहीं है।';

  @override
  String get monthsAdvanceLabel => 'अग्रिम चुकाए गए महीने';

  @override
  String rebateRow(String percent) {
    return 'छूट ($percent%)';
  }

  @override
  String get amountDueRow => 'देय राशि';

  @override
  String get payableRow => 'आप चुकाएँगे';

  @override
  String get advanceNote =>
      'दिखाई गई छूट दर डेटा की अग्रिम भुगतान छूट के अनुसार है; प्रीमियम अग्रिम चुकाने पर लागू।';

  @override
  String get policiesTitle => 'मेरी पॉलिसियाँ';

  @override
  String get noPolicies =>
      'अभी कोई पॉलिसी सहेजी नहीं गई। जोड़ने के लिए + दबाएँ।';

  @override
  String get addPolicy => 'पॉलिसी जोड़ें';

  @override
  String get editPolicy => 'पॉलिसी संपादित करें';

  @override
  String get holderNameLabel => 'पॉलिसीधारक का नाम';

  @override
  String get policyNumberLabel => 'पॉलिसी संख्या';

  @override
  String get premiumAmountLabel => 'प्रति किस्त प्रीमियम (₹, रसीद अनुसार)';

  @override
  String get save => 'सहेजें';

  @override
  String get delete => 'हटाएँ';

  @override
  String get deleteConfirm => 'यह पॉलिसी हटाएँ?';

  @override
  String get cancel => 'रद्द करें';

  @override
  String nextDue(String date) {
    return 'अगली किस्त: $date';
  }

  @override
  String get noMoreDues => 'सभी प्रीमियम चुका दिए गए';

  @override
  String get remindersLabel => 'हर किस्त से 3 दिन पहले याद दिलाएँ';

  @override
  String get remindersDenied => 'इस ऐप के लिए सूचनाएँ बंद हैं।';

  @override
  String get accruedBonusRow => 'अब तक अर्जित बोनस';

  @override
  String bonusMissingYears(String years) {
    return 'वि.व. $years की बोनस दरें ऐप डेटा में नहीं हैं; कुल में वे वर्ष शामिल नहीं।';
  }

  @override
  String maturityOn(String date) {
    return '$date को परिपक्वता';
  }

  @override
  String get upcomingDues => 'आगामी किस्त तिथियाँ';

  @override
  String get yearsInForceRow => 'लागू वर्ष';

  @override
  String get reminderTitle => 'पीएलआई प्रीमियम देय';

  @override
  String reminderBody(String name, String amount, String date, String number) {
    return '$name: $amount $date को देय (पॉलिसी $number)';
  }

  @override
  String get savedLocally => 'केवल इसी फ़ोन पर सहेजा गया।';

  @override
  String get requiredField => 'आवश्यक';

  @override
  String get projectedMaturityRow => 'अनुमानित परिपक्वता राशि';

  @override
  String get quotationTitle => 'कोटेशन';

  @override
  String get customerNameLabel => 'ग्राहक का नाम';

  @override
  String get agentNameLabel => 'तैयारकर्ता (वैकल्पिक)';

  @override
  String get sharePdf => 'PDF साझा करें';

  @override
  String get shareImage => 'चित्र साझा करें';

  @override
  String get quotationHeading => 'प्रीमियम कोटेशन';

  @override
  String preparedOn(String date) {
    return '$date को तैयार';
  }

  @override
  String quotationFor(String name) {
    return 'के लिए: $name';
  }

  @override
  String preparedBy(String name) {
    return 'तैयारकर्ता: $name';
  }

  @override
  String get quotationInvalid => 'कोटेशन बनाने के लिए योजना विवरण पूरा करें।';

  @override
  String get planDetailsTitle => 'योजना विवरण';

  @override
  String get planInfoTitle => 'योजना जानकारी';

  @override
  String entryAgeInfo(int min, int max) {
    return 'प्रवेश आयु: $min–$max';
  }

  @override
  String maturityAgesInfo(String ages) {
    return 'परिपक्वता आयु: $ages';
  }

  @override
  String ceasingAgesInfo(String ages, int age) {
    return 'प्रीमियम भुगतान आयु: $ages; $age पर परिपक्वता';
  }

  @override
  String termsInfo(String terms) {
    return 'अवधि: $terms वर्ष';
  }

  @override
  String survivalInfo(String list) {
    return 'मनी बैक: $list';
  }

  @override
  String survivalItem(int percent, int year) {
    return '$yearवें वर्ष में $percent%';
  }

  @override
  String loanInfo(int years) {
    return '$years वर्ष बाद ऋण';
  }

  @override
  String get noLoanInfo => 'ऋण नहीं';

  @override
  String surrenderInfo(int years) {
    return '$years वर्ष बाद समर्पण';
  }

  @override
  String get noSurrenderInfo => 'समर्पण नहीं';

  @override
  String bonusInfo(String fy, int rate) {
    return 'वि.व. $fy बोनस: ₹$rate प्रति ₹1,000 प्रति वर्ष';
  }

  @override
  String saLimitInfo(String min, String max) {
    return 'बीमा राशि: $min – $max';
  }

  @override
  String jointInfo(int min, int max, int tmin, int tmax) {
    return 'प्रत्येक जीवनसाथी की आयु $min–$max; अवधि $tmin–$tmax वर्ष';
  }

  @override
  String childInfo(int min, int max, int parent, int children, String cap) {
    return 'बच्चे की आयु $min–$max; माता/पिता की आयु $parent तक; अधिकतम $children बच्चे; बीमा राशि $cap तक';
  }

  @override
  String conversionInfo(int years) {
    return '$years वर्ष बाद बंदोबस्ती बीमा में बदल सकते हैं';
  }

  @override
  String get faqTitle => 'सामान्य प्रश्न';

  @override
  String get faq1q => 'क्या बोनस की गारंटी है?';

  @override
  String get faq1a =>
      'नहीं। भारतीय डाक हर वर्ष बोनस दरें घोषित करता है। यहाँ के अनुमान आगे के हर वर्ष के लिए नवीनतम घोषित दर मानते हैं।';

  @override
  String get faq2q => 'प्रीमियम कहाँ से आता है?';

  @override
  String get faq2a =>
      'भारतीय डाक की आधिकारिक प्रीमियम तालिकाओं से। ऐप कभी प्रीमियम का अनुमान नहीं लगाता।';

  @override
  String get faq3q => 'क्या आयकर लाभ मिलता है?';

  @override
  String get faq3a =>
      'प्रीमियम धारा 80C (पुरानी कर व्यवस्था) में पात्र हो सकता है और परिपक्वता राशि धारा 10(10D) में शर्तों के अधीन कर-मुक्त हो सकती है। यह कर सलाह नहीं है।';

  @override
  String get faq4q => 'क्या प्रीमियम पर जीएसटी लगता है?';

  @override
  String get faq4a =>
      'नहीं। 22 सितंबर 2025 से व्यक्तिगत जीवन बीमा प्रीमियम पर जीएसटी शून्य है।';

  @override
  String get faq5q => 'PLI और RPLI कौन ले सकता है?';

  @override
  String get faq5a =>
      'PLI: सरकारी और अर्ध-सरकारी कर्मचारी, पेशेवर, स्नातक, डिप्लोमा धारक और भारतीय डाक द्वारा सूचीबद्ध अन्य। RPLI: ग्रामीण निवासी और अनुसूचित बैंक बचत खाताधारक।';

  @override
  String get aboutTitle => 'जानकारी';

  @override
  String get privacyTitle => 'गोपनीयता';

  @override
  String get privacyBody =>
      'PLI & RPLI कैलकुलेटर कोई डेटा एकत्र नहीं करता। आप जो भी दर्ज या सहेजते हैं, वह इसी फ़ोन पर रहता है। किसी खाते या इंटरनेट की ज़रूरत नहीं।';

  @override
  String get dataSourceTitle => 'दर डेटा';

  @override
  String dataSourceBody(String id, String date, String source) {
    return 'नियम $id, $date से प्रभावी। स्रोत: $source';
  }

  @override
  String get provisionalTitle => 'अभी पुष्टि होने वाले नियम';

  @override
  String get provisionalIntro =>
      'भारतीय डाक के आधिकारिक परिपत्रों से पुष्टि होने तक ये नियम कार्यकारी मान्यताएँ हैं (अंग्रेज़ी में):';

  @override
  String get checkUpdates => 'दर अपडेट जाँचें';

  @override
  String updateInstalled(int version) {
    return 'दर डेटा संस्करण $version में अपडेट हुआ।';
  }

  @override
  String get updateCurrent => 'दर डेटा नवीनतम है।';

  @override
  String updateFailed(String error) {
    return 'अपडेट विफल; मौजूदा दरें बनी रहीं। $error';
  }

  @override
  String get sampleDataNote =>
      'प्रीमियम तालिकाएँ नमूना डेटा हैं, भारतीय डाक के आधिकारिक आँकड़े नहीं।';

  @override
  String appVersion(String version) {
    return 'संस्करण $version';
  }

  @override
  String get homeTagline => 'प्रीमियम, बोनस और परिपक्वता — ऑफ़लाइन भी';

  @override
  String get quickPremiumTitle => 'प्रीमियम निकालें';

  @override
  String get quickPremiumBody =>
      'कोई भी योजना, आयु और बीमा राशि — सभी आवृत्तियाँ';

  @override
  String get sectionCalculators => 'कैलकुलेटर';

  @override
  String get sectionServicing => 'पॉलिसी सेवाएँ';

  @override
  String get sectionLearn => 'जानकारी';

  @override
  String get descPremium => 'हर आवृत्ति का प्रीमियम';

  @override
  String get descMaturity => 'बोनस और परिपक्वता राशि';

  @override
  String get descCompare => 'योजनाएँ आमने-सामने';

  @override
  String get descAfford => 'आपके बजट में सबसे अच्छा कवर';

  @override
  String get descPolicies => 'सहेजी पॉलिसियाँ और देय तिथियाँ';

  @override
  String get descTools => 'ऋण, पुनर्जीवन, पेड-अप';

  @override
  String get descQuotation => 'PDF कोटेशन साझा करें';

  @override
  String get descEligibility => 'PLI या RPLI कौन ले सकता है';

  @override
  String get descPlans => 'योजना नियम और प्रश्न';

  @override
  String get descAbout => 'गोपनीयता और दर डेटा';

  @override
  String get sectionPersonTitle => 'पॉलिसीधारक';

  @override
  String get sectionCoverTitle => 'कवर और भुगतान';

  @override
  String get tileForms => 'फ़ॉर्म';

  @override
  String get descForms => 'फ़ॉर्म, सूचियाँ, पत्र';

  @override
  String get formsTitle => 'फ़ॉर्म और पत्र';

  @override
  String get formsIntro =>
      'हर PLI / RPLI अनुरोध के लिए क्या चाहिए, फ़ॉर्म कहाँ मिलेगा, और तैयार अनुरोध पत्र।';

  @override
  String get formsVerifyNote =>
      'दस्तावेज़ सूची केवल मार्गदर्शन है और बदल सकती है। जमा करने से पहले अपने डाकघर से पुष्टि करें।';

  @override
  String get whereToGetTitle => 'फ़ॉर्म कहाँ मिलेगा';

  @override
  String get whereToGetBody =>
      'किसी भी डाकघर या CPC पर निःशुल्क, या भारतीय डाक PLI वेबसाइट से डाउनलोड करें।';

  @override
  String get documentsTitle => 'तैयार रखने वाले दस्तावेज़';

  @override
  String get openOfficialForm => 'आधिकारिक फ़ॉर्म खोलें';

  @override
  String get getFromIndiaPost => 'भारतीय डाक से फ़ॉर्म लें';

  @override
  String get detailsSheetTitle => 'पॉलिसी विवरण पत्रक';

  @override
  String get detailsSheetIntro =>
      'आधिकारिक फ़ॉर्म में भरने के लिए आपकी सहेजी पॉलिसी का विवरण एक जगह।';

  @override
  String get writeLetterTitle => 'अनुरोध पत्र लिखें';

  @override
  String get writeLetterIntro =>
      'आपकी सहेजी पॉलिसी से भरा, पोस्टमास्टर के लिए तैयार पत्र।';

  @override
  String get choosePolicy => 'सहेजी पॉलिसी';

  @override
  String get noSavedPolicies => 'पहले मेरी पॉलिसियाँ में एक पॉलिसी सहेजें।';

  @override
  String get toOfficeLabel => 'सेवा में (डाकघर / CPC)';

  @override
  String get yourAddressLabel => 'आपका पता';

  @override
  String get phoneLabel => 'फ़ोन';

  @override
  String get placeLabel => 'स्थान';

  @override
  String get nomineeNameLabel => 'नए नामांकित का नाम';

  @override
  String get nomineeRelationLabel => 'संबंध';

  @override
  String get nomineeAgeLabel => 'नामांकित की आयु';

  @override
  String get newAddressLabel => 'नया पता';

  @override
  String get bondLost => 'खो गया';

  @override
  String get bondDamaged => 'क्षतिग्रस्त';

  @override
  String get lapsedFromLabel => 'प्रीमियम बकाया कब से';

  @override
  String get shareAsText => 'टेक्स्ट के रूप में साझा करें';

  @override
  String get copyText => 'कॉपी करें';

  @override
  String get copied => 'कॉपी हो गया';

  @override
  String get letterEnglishNote =>
      'पत्र अंग्रेज़ी में हैं — भारतीय डाक पत्राचार की सामान्य भाषा। जमा करने से पहले हस्ताक्षर करें।';

  @override
  String get formsOfficialNote =>
      'यह ऐप भारतीय डाक नहीं है। जहाँ निर्धारित फ़ॉर्म हो, वहाँ हमेशा भारतीय डाक का फ़ॉर्म ही जमा करें।';

  @override
  String get svc_proposal => 'नई पॉलिसी प्रस्ताव';

  @override
  String get svcDesc_proposal => 'नई PLI या RPLI पॉलिसी के लिए आवेदन';

  @override
  String get svc_maturity => 'परिपक्वता दावा';

  @override
  String get svcDesc_maturity => 'पॉलिसी परिपक्व होने पर राशि का दावा';

  @override
  String get svc_survival => 'उत्तरजीविता लाभ दावा';

  @override
  String get svcDesc_survival => 'मनी-बैक किस्तें (सुमंगल, ग्राम प्रिया)';

  @override
  String get svc_death => 'मृत्यु दावा';

  @override
  String get svcDesc_death => 'नामांकित या कानूनी वारिस द्वारा दावा';

  @override
  String get svc_loan => 'पॉलिसी ऋण';

  @override
  String get svcDesc_loan => 'अपनी पॉलिसी पर ऋण लें';

  @override
  String get svc_surrender => 'समर्पण';

  @override
  String get svcDesc_surrender => 'समर्पण मूल्य के लिए पॉलिसी जल्दी बंद करें';

  @override
  String get svc_revival => 'पुनर्जीवन';

  @override
  String get svcDesc_revival => 'व्यपगत पॉलिसी फिर शुरू करें';

  @override
  String get svc_nomination => 'नामांकन परिवर्तन';

  @override
  String get svcDesc_nomination => 'नामांकित जोड़ें या बदलें';

  @override
  String get svc_address => 'पता परिवर्तन';

  @override
  String get svcDesc_address => 'पॉलिसी में अपना पता अपडेट करें';

  @override
  String get svc_duplicate => 'डुप्लीकेट पॉलिसी बॉन्ड';

  @override
  String get svcDesc_duplicate => 'खोया या क्षतिग्रस्त बॉन्ड बदलें';

  @override
  String get svc_assignment => 'समनुदेशन';

  @override
  String get svcDesc_assignment =>
      'पॉलिसी अधिकार हस्तांतरित करें, जैसे बैंक को';

  @override
  String get svc_conversion => 'परिवर्तन (सुविधा)';

  @override
  String get svcDesc_conversion => 'संपूर्ण जीवन बीमा को बंदोबस्ती में बदलें';

  @override
  String get doc_form => 'निर्धारित फ़ॉर्म, भरा और हस्ताक्षरित';

  @override
  String get doc_policyBond => 'मूल पॉलिसी बॉन्ड (या ePLI बॉन्ड)';

  @override
  String get doc_receiptBook => 'प्रीमियम रसीद पुस्तिका या रसीदें';

  @override
  String get doc_idProof => 'पहचान प्रमाण (आधार, पैन आदि)';

  @override
  String get doc_addressProof => 'पते का प्रमाण';

  @override
  String get doc_ageProof => 'आयु प्रमाण';

  @override
  String get doc_bankDetails => 'बैंक पासबुक या रद्द चेक';

  @override
  String get doc_photo => 'पासपोर्ट आकार की फ़ोटो';

  @override
  String get doc_deathCertificate => 'मृत्यु प्रमाणपत्र';

  @override
  String get doc_claimantId => 'दावेदार का पहचान और संबंध प्रमाण';

  @override
  String get doc_medical =>
      'चिकित्सा प्रमाणपत्र / स्वास्थ्य घोषणा (माँगे जाने पर)';

  @override
  String get doc_eligibility =>
      'पात्रता प्रमाण (नौकरी, डिग्री या ग्रामीण निवास)';

  @override
  String get doc_nomineeDetails => 'नामांकित का नाम, आयु और संबंध';

  @override
  String get doc_indemnity => 'क्षतिपूर्ति बॉन्ड (माँगे जाने पर)';

  @override
  String get customerPhoneLabel =>
      'ग्राहक का मोबाइल (व्हाट्सऐप रिमाइंडर के लिए)';

  @override
  String get exportBackup => 'पॉलिसियों का बैकअप';

  @override
  String get importBackup => 'बैकअप से पुनर्स्थापित करें';

  @override
  String importConfirm(int count) {
    return 'इस बैकअप से $count पॉलिसियाँ पुनर्स्थापित करें? समान ID वाली सहेजी पॉलिसियाँ बदल दी जाएँगी।';
  }

  @override
  String importDone(int count) {
    return '$count पॉलिसियाँ पुनर्स्थापित हुईं।';
  }

  @override
  String get importFailed => 'यह PLI & RPLI कैलकुलेटर बैकअप फ़ाइल नहीं है।';

  @override
  String get backupNote =>
      'बैकअप फ़ाइल में आपकी पॉलिसी का विवरण है। इसे अपनी व्हाट्सऐप चैट या गूगल ड्राइव जैसी सुरक्षित जगह रखें।';

  @override
  String get restore => 'पुनर्स्थापित करें';

  @override
  String get tileDues => 'देय';

  @override
  String get descDues => 'इस महीने देय प्रीमियम';

  @override
  String get duesTitle => 'प्रीमियम देय';

  @override
  String get duesTotal => 'कुल देय';

  @override
  String duesCount(int count) {
    return '$count प्रीमियम';
  }

  @override
  String get noDuesInMonth => 'इस महीने कोई प्रीमियम देय नहीं।';

  @override
  String get remindOnWhatsApp => 'याद दिलाएँ';

  @override
  String dueReminderMessage(
    String name,
    String amount,
    String number,
    String date,
  ) {
    return 'प्रिय $name, पॉलिसी $number का $amount प्रीमियम $date को देय है। कृपया अपने डाकघर में भुगतान करें।';
  }

  @override
  String get tileProfile => 'एजेंट प्रोफ़ाइल';

  @override
  String get descProfile => 'कोटेशन पर आपका नाम और लोगो';

  @override
  String get profileTitle => 'एजेंट प्रोफ़ाइल';

  @override
  String get agentNameField => 'आपका नाम';

  @override
  String get agentPhoneField => 'आपका फ़ोन';

  @override
  String get agentCodeField => 'एजेंट ID / कार्यालय (वैकल्पिक)';

  @override
  String get chooseLogo => 'फ़ोटो या लोगो चुनें';

  @override
  String get removeLogo => 'हटाएँ';

  @override
  String get profileNote =>
      'कोटेशन और रिमाइंडर संदेशों में दिखेगा। केवल इसी फ़ोन पर सहेजा गया।';

  @override
  String get profileSaved => 'प्रोफ़ाइल सहेजी गई।';

  @override
  String get searchPolicies => 'नाम, पॉलिसी नं. या मोबाइल खोजें';

  @override
  String get sortLabel => 'क्रम';

  @override
  String get sortName => 'नाम';

  @override
  String get sortNextDue => 'अगली देय तिथि';

  @override
  String get sortSumAssured => 'बीमा राशि';

  @override
  String noSearchResults(String query) {
    return '“$query” से मेल खाती कोई पॉलिसी नहीं।';
  }

  @override
  String get filterAll => 'सभी';

  @override
  String get filterPending => 'बाकी';

  @override
  String get filterCollected => 'वसूल';

  @override
  String get markCollected => 'वसूल के रूप में चिह्नित करें';

  @override
  String get markNotCollected => 'वसूल नहीं के रूप में चिह्नित करें';

  @override
  String get duesPendingTotal => 'अभी वसूलना बाकी';

  @override
  String duesCollectedOf(int collected, int total) {
    return '$total में से $collected वसूल';
  }

  @override
  String get duesMonthTotal => 'महीने का कुल';

  @override
  String get collectedNote =>
      'वसूली के चिह्न आपका अपना रिकॉर्ड हैं। ये इंडिया पोस्ट की प्रणाली में भुगतान की जाँच नहीं करते।';

  @override
  String get noDuesInFilter => 'इस सूची में कुछ नहीं।';

  @override
  String get openFormLink => 'फ़ॉर्म डाउनलोड करें';

  @override
  String get shareFormLink => 'फ़ॉर्म लिंक साझा करें';

  @override
  String formLinkMessage(String service, String url) {
    return '$service फ़ॉर्म (इंडिया पोस्ट): $url';
  }
}
