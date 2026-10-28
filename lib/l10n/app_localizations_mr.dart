// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'PLI & RPLI कॅल्क्युलेटर';

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

  @override
  String get tileAfford => 'किती शक्य';

  @override
  String get tileTools => 'पॉलिसी साधने';

  @override
  String get tilePlans => 'योजना';

  @override
  String get tileAbout => 'माहिती';

  @override
  String get dobLabel => 'जन्मतारीख';

  @override
  String get useAgeInstead => 'त्याऐवजी वय भरा';

  @override
  String get useDobInstead => 'जन्मतारीख भरा';

  @override
  String ageFromDobNearest(int age) {
    return 'सुरुवातीच्या तारखेला प्रवेश वय: $age (जवळच्या वाढदिवसानुसार वय)';
  }

  @override
  String ageFromDobLast(int age) {
    return 'सुरुवातीच्या तारखेला प्रवेश वय: $age (मागील वाढदिवसानुसार वय)';
  }

  @override
  String get premiumCeasingAgeLabel => 'प्रीमियम भरण्याचे वय';

  @override
  String get frequencyLabel => 'भरणा वारंवारता';

  @override
  String get freqMonthly => 'मासिक';

  @override
  String get freqQuarterly => 'त्रैमासिक';

  @override
  String get freqHalfYearly => 'सहामाही';

  @override
  String get freqYearly => 'वार्षिक';

  @override
  String get premiumPerInstalment => 'प्रति हप्ता प्रीमियम';

  @override
  String get tablePremiumRow => 'तक्त्यातील प्रीमियम';

  @override
  String get saRebateRow => 'विमा रक्कम सवलत';

  @override
  String totalPremiumRow(int count) {
    return 'एकूण प्रीमियम ($count हप्ते)';
  }

  @override
  String get payingTermRow => 'प्रीमियम भरण्याची मुदत';

  @override
  String get lifeCoverRow => 'जीवन संरक्षण';

  @override
  String get allFrequenciesTitle => 'सर्व भरणा वारंवारता';

  @override
  String get notInTable => 'अधिकृत तक्त्यात उपलब्ध नाही';

  @override
  String get noTableForPlan => 'या योजनेचा प्रीमियम तक्ता अद्याप जोडलेला नाही.';

  @override
  String get illustrationTitle => 'वर्षनिहाय लाभ तपशील';

  @override
  String get colYear => 'वर्ष';

  @override
  String get colPremiumsPaid => 'भरलेला प्रीमियम';

  @override
  String get colBonus => 'बोनस';

  @override
  String get colLifeCover => 'जीवन संरक्षण';

  @override
  String get makeQuotation => 'कोटेशन तयार करा';

  @override
  String get gstNote =>
      'जीएसटी: 22 सप्टेंबर 2025 किंवा नंतर भरलेल्या वैयक्तिक जीवन विमा प्रीमियमवर शून्य.';

  @override
  String get chartTitle => 'भरलेला प्रीमियम विरुद्ध लाभ';

  @override
  String get chartPaid => 'एकूण प्रीमियम';

  @override
  String get chartReceived => 'एकूण लाभ';

  @override
  String get showTable => 'वर्षनिहाय तक्ता दाखवा';

  @override
  String get hideTable => 'वर्षनिहाय तक्ता लपवा';

  @override
  String get reverseTitle => 'मला किती परवडेल?';

  @override
  String get budgetLabel => 'प्रति हप्ता बजेट (₹)';

  @override
  String get reverseIntro =>
      'तुम्ही किती भरू शकता ते भरा. प्रत्येक योजना पर्याय त्या रकमेत कमाल विमा रक्कम दाखवतो.';

  @override
  String optMaturityAge(int age) {
    return '$age व्या वर्षी परिपक्वता';
  }

  @override
  String optCeasingAge(int age) {
    return '$age वयापर्यंत प्रीमियम';
  }

  @override
  String optTerm(int years) {
    return '$years वर्षांची मुदत';
  }

  @override
  String get reverseNone => 'या वयात या बजेटमध्ये कोणतीही योजना बसत नाही.';

  @override
  String get saShort => 'विमा रक्कम';

  @override
  String get premiumShort => 'प्रीमियम';

  @override
  String get compareTitle => 'योजनांची तुलना';

  @override
  String optionN(int n) {
    return 'पर्याय $n';
  }

  @override
  String get addOption => 'पर्याय जोडा';

  @override
  String get removeOption => 'पर्याय काढा';

  @override
  String get maturityShort => 'परिपक्वता / लाभ';

  @override
  String get totalPaidShort => 'एकूण भरणा';

  @override
  String get lifeCoverShort => 'जीवन संरक्षण';

  @override
  String get comparisonTitle => 'तुलना';

  @override
  String get toolsTitle => 'पॉलिसी साधने';

  @override
  String get tabLoan => 'कर्ज';

  @override
  String get tabPaidUp => 'पेड-अप';

  @override
  String get tabRevival => 'पुनरुज्जीवन';

  @override
  String get tabAdvance => 'आगाऊ';

  @override
  String get yearsInForceLabel => 'पॉलिसी किती वर्षे चालू आहे';

  @override
  String get loanAmountLabel => 'कर्ज रक्कम (₹)';

  @override
  String get loanMonthsLabel => 'परतफेडीपर्यंतचे महिने';

  @override
  String monthsValue(int months) {
    return '$months महिने';
  }

  @override
  String get loanInterestRow => 'व्याज';

  @override
  String get loanTotalRow => 'एकूण परतफेड';

  @override
  String loanRateNote(String rate) {
    return 'वार्षिक $rate% व्याज, सहामाही चक्रवाढ.';
  }

  @override
  String loanAvailableAfter(int years) {
    return '$years वर्षांनंतर कर्ज उपलब्ध.';
  }

  @override
  String get loanNotOffered => 'या योजनेत कर्ज सुविधा नाही.';

  @override
  String get loanEligibleYes => 'कर्जासाठी पात्र';

  @override
  String get loanEligibleNo => 'अद्याप कर्जासाठी पात्र नाही';

  @override
  String get loanAmountNote =>
      'कमाल कर्ज समर्पण मूल्यावर अवलंबून असते, ज्याची गणना भारतीय टपाल करते.';

  @override
  String get premiumsPaidLabel => 'भरलेले हप्ते';

  @override
  String get premiumsPayableLabel => 'एकूण देय हप्ते';

  @override
  String get paidUpSaRow => 'पेड-अप विमा रक्कम';

  @override
  String get paidUpNote =>
      'अंदाजे. बोनस: पॉलिसी 5 वर्षांपेक्षा कमी जुनी असल्यास नाही; 5 वर्षांनंतर पेड-अप रकमेवर प्रमाणशीर बोनस, इंडिया पोस्टनुसार. सरेंडर मूल्यासाठी अधिकृत सरेंडर घटक लागतात, त्याची गणना केलेली नाही.';

  @override
  String paidUpNotEligible(int years) {
    return 'पॉलिसी $years वर्षे चालू राहिल्यानंतरच पेड-अप होऊ शकते.';
  }

  @override
  String get paidUpInvalid =>
      'भरलेले हप्ते देय हप्त्यांपेक्षा जास्त असू शकत नाहीत.';

  @override
  String get instalmentLabel => 'प्रति हप्ता प्रीमियम (₹)';

  @override
  String get firstUnpaidLabel => 'पहिल्या थकीत हप्त्याची तारीख';

  @override
  String get payDateLabel => 'भरण्याची तारीख';

  @override
  String get missedRow => 'देय हप्ते';

  @override
  String get arrearsRow => 'थकबाकी';

  @override
  String get defaultFeeRow => 'विलंब शुल्क';

  @override
  String get totalPayableRow => 'एकूण देय';

  @override
  String revivalNote(String percent) {
    return 'विलंबाच्या प्रत्येक महिन्याला हप्त्याच्या $percent% विलंब शुल्क. दीर्घ काळानंतर पुनरुज्जीवनासाठी वैद्यकीय प्रमाणपत्र लागू शकते.';
  }

  @override
  String revivalLine(String date, int months, String fee) {
    return 'देय $date • $months महिने उशीर • शुल्क $fee';
  }

  @override
  String get nothingDue => 'त्या तारखेला काहीही देय नाही.';

  @override
  String get monthsAdvanceLabel => 'आगाऊ भरलेले महिने';

  @override
  String rebateRow(String percent) {
    return 'सवलत ($percent%)';
  }

  @override
  String get amountDueRow => 'देय रक्कम';

  @override
  String get payableRow => 'तुम्ही भराल';

  @override
  String get advanceNote =>
      'दाखवलेली सवलत दर डेटामधील आगाऊ भरणा सवलतीनुसार आहे; प्रीमियम आगाऊ भरल्यावर लागू.';

  @override
  String get policiesTitle => 'माझ्या पॉलिसी';

  @override
  String get noPolicies =>
      'अद्याप एकही पॉलिसी जतन केलेली नाही. जोडण्यासाठी + दाबा.';

  @override
  String get addPolicy => 'पॉलिसी जोडा';

  @override
  String get editPolicy => 'पॉलिसी संपादित करा';

  @override
  String get holderNameLabel => 'पॉलिसीधारकाचे नाव';

  @override
  String get policyNumberLabel => 'पॉलिसी क्रमांक';

  @override
  String get premiumAmountLabel => 'प्रति हप्ता प्रीमियम (₹, पावतीनुसार)';

  @override
  String get save => 'जतन करा';

  @override
  String get delete => 'हटवा';

  @override
  String get deleteConfirm => 'ही पॉलिसी हटवायची?';

  @override
  String get cancel => 'रद्द करा';

  @override
  String nextDue(String date) {
    return 'पुढील हप्ता: $date';
  }

  @override
  String get noMoreDues => 'सर्व प्रीमियम भरले';

  @override
  String get remindersLabel => 'प्रत्येक हप्त्याच्या 3 दिवस आधी आठवण करा';

  @override
  String get remindersDenied => 'या ॲपसाठी सूचना बंद आहेत.';

  @override
  String get accruedBonusRow => 'आतापर्यंत जमा बोनस';

  @override
  String bonusMissingYears(String years) {
    return 'आ.व. $years चे बोनस दर ॲप डेटामध्ये नाहीत; एकूण रकमेत ती वर्षे नाहीत.';
  }

  @override
  String maturityOn(String date) {
    return '$date रोजी परिपक्वता';
  }

  @override
  String get upcomingDues => 'आगामी हप्त्यांच्या तारखा';

  @override
  String get yearsInForceRow => 'चालू वर्षे';

  @override
  String get reminderTitle => 'पीएलआय प्रीमियम देय';

  @override
  String reminderBody(String name, String amount, String date, String number) {
    return '$name: $amount $date रोजी देय (पॉलिसी $number)';
  }

  @override
  String get savedLocally => 'फक्त या फोनवर जतन केले.';

  @override
  String get requiredField => 'आवश्यक';

  @override
  String get projectedMaturityRow => 'अंदाजित परिपक्वता रक्कम';

  @override
  String get quotationTitle => 'कोटेशन';

  @override
  String get customerNameLabel => 'ग्राहकाचे नाव';

  @override
  String get agentNameLabel => 'तयार करणारे (ऐच्छिक)';

  @override
  String get sharePdf => 'PDF शेअर करा';

  @override
  String get shareImage => 'प्रतिमा शेअर करा';

  @override
  String get quotationHeading => 'प्रीमियम कोटेशन';

  @override
  String preparedOn(String date) {
    return '$date रोजी तयार';
  }

  @override
  String quotationFor(String name) {
    return 'यांच्यासाठी: $name';
  }

  @override
  String preparedBy(String name) {
    return 'तयार करणारे: $name';
  }

  @override
  String get quotationInvalid =>
      'कोटेशन तयार करण्यासाठी योजनेचा तपशील पूर्ण करा.';

  @override
  String get planDetailsTitle => 'योजनेचा तपशील';

  @override
  String get planInfoTitle => 'योजना माहिती';

  @override
  String entryAgeInfo(int min, int max) {
    return 'प्रवेश वय: $min–$max';
  }

  @override
  String maturityAgesInfo(String ages) {
    return 'परिपक्वता वय: $ages';
  }

  @override
  String ceasingAgesInfo(String ages, int age) {
    return 'प्रीमियम भरण्याचे वय: $ages; $age व्या वर्षी परिपक्वता';
  }

  @override
  String termsInfo(String terms) {
    return 'मुदत: $terms वर्षे';
  }

  @override
  String survivalInfo(String list) {
    return 'मनी बॅक: $list';
  }

  @override
  String survivalItem(int percent, int year) {
    return '$year व्या वर्षी $percent%';
  }

  @override
  String loanInfo(int years) {
    return '$years वर्षांनंतर कर्ज';
  }

  @override
  String get noLoanInfo => 'कर्ज नाही';

  @override
  String surrenderInfo(int years) {
    return '$years वर्षांनंतर समर्पण';
  }

  @override
  String get noSurrenderInfo => 'समर्पण नाही';

  @override
  String bonusInfo(String fy, int rate) {
    return 'आ.व. $fy बोनस: ₹1,000 मागे दरवर्षी ₹$rate';
  }

  @override
  String saLimitInfo(String min, String max) {
    return 'विमा रक्कम: $min – $max';
  }

  @override
  String jointInfo(int min, int max, int tmin, int tmax) {
    return 'प्रत्येक जोडीदाराचे वय $min–$max; मुदत $tmin–$tmax वर्षे';
  }

  @override
  String childInfo(int min, int max, int parent, int children, String cap) {
    return 'मुलाचे वय $min–$max; पालकांचे वय $parent पर्यंत; जास्तीत जास्त $children मुले; विमा रक्कम $cap पर्यंत';
  }

  @override
  String conversionInfo(int years) {
    return '$years वर्षांनंतर एंडोमेंट विम्यात रूपांतर करता येते';
  }

  @override
  String get faqTitle => 'नेहमीचे प्रश्न';

  @override
  String get faq1q => 'बोनसची हमी आहे का?';

  @override
  String get faq1a =>
      'नाही. भारतीय टपाल दरवर्षी बोनस दर जाहीर करते. येथील अंदाज पुढील प्रत्येक वर्षासाठी नवीनतम जाहीर दर गृहीत धरतात.';

  @override
  String get faq2q => 'प्रीमियम कुठून येतो?';

  @override
  String get faq2a =>
      'भारतीय टपालाच्या अधिकृत प्रीमियम तक्त्यांमधून. ॲप कधीही प्रीमियमचा अंदाज करत नाही.';

  @override
  String get faq3q => 'आयकर लाभ मिळतो का?';

  @override
  String get faq3a =>
      'प्रीमियम कलम 80C (जुनी कर पद्धत) अंतर्गत पात्र ठरू शकतो आणि परिपक्वता रक्कम कलम 10(10D) अंतर्गत अटींच्या अधीन करमुक्त असू शकते. हा कर सल्ला नाही.';

  @override
  String get faq4q => 'प्रीमियमवर जीएसटी लागतो का?';

  @override
  String get faq4a =>
      'नाही. 22 सप्टेंबर 2025 पासून वैयक्तिक जीवन विमा प्रीमियमवर जीएसटी शून्य आहे.';

  @override
  String get faq5q => 'PLI आणि RPLI कोण घेऊ शकते?';

  @override
  String get faq5a =>
      'PLI: सरकारी व निमसरकारी कर्मचारी, व्यावसायिक, पदवीधर, पदविकाधारक आणि भारतीय टपालाने सूचीबद्ध केलेले इतर. RPLI: ग्रामीण रहिवासी आणि अनुसूचित बँक बचत खातेदार.';

  @override
  String get aboutTitle => 'माहिती';

  @override
  String get privacyTitle => 'गोपनीयता';

  @override
  String get privacyBody =>
      'PLI & RPLI कॅल्क्युलेटर कोणताही डेटा गोळा करत नाही. तुम्ही भरलेले किंवा जतन केलेले सर्व काही याच फोनवर राहते. खाते किंवा इंटरनेटची गरज नाही.';

  @override
  String get dataSourceTitle => 'दर डेटा';

  @override
  String dataSourceBody(String id, String date, String source) {
    return 'नियम $id, $date पासून लागू. स्रोत: $source';
  }

  @override
  String get provisionalTitle => 'अद्याप निश्चित होणारे नियम';

  @override
  String get provisionalIntro =>
      'भारतीय टपालाच्या अधिकृत परिपत्रकांमधून निश्चित होईपर्यंत हे नियम कार्यरत गृहीतके आहेत (इंग्रजीत):';

  @override
  String get checkUpdates => 'दर अपडेट तपासा';

  @override
  String updateInstalled(int version) {
    return 'दर डेटा आवृत्ती $version वर अपडेट झाला.';
  }

  @override
  String get updateCurrent => 'दर डेटा अद्ययावत आहे.';

  @override
  String updateFailed(String error) {
    return 'अपडेट अयशस्वी; सध्याचे दर कायम. $error';
  }

  @override
  String get sampleDataNote =>
      'प्रीमियम तक्ते नमुना डेटा आहेत, भारतीय टपालाचे अधिकृत आकडे नाहीत.';

  @override
  String appVersion(String version) {
    return 'आवृत्ती $version';
  }

  @override
  String get homeTagline => 'प्रीमियम, बोनस आणि परिपक्वता — ऑफलाइनही';

  @override
  String get quickPremiumTitle => 'प्रीमियम काढा';

  @override
  String get quickPremiumBody =>
      'कोणतीही योजना, वय आणि विमा रक्कम — सर्व वारंवारता';

  @override
  String get sectionCalculators => 'कॅल्क्युलेटर';

  @override
  String get sectionServicing => 'पॉलिसी सेवा';

  @override
  String get sectionLearn => 'माहिती';

  @override
  String get descPremium => 'प्रत्येक वारंवारतेचा प्रीमियम';

  @override
  String get descMaturity => 'बोनस आणि परिपक्वता रक्कम';

  @override
  String get descCompare => 'योजना शेजारी-शेजारी';

  @override
  String get descAfford => 'तुमच्या बजेटमध्ये उत्तम संरक्षण';

  @override
  String get descPolicies => 'जतन पॉलिसी आणि देय तारखा';

  @override
  String get descTools => 'कर्ज, पुनरुज्जीवन, पेड-अप';

  @override
  String get descQuotation => 'PDF कोटेशन शेअर करा';

  @override
  String get descEligibility => 'PLI किंवा RPLI कोण घेऊ शकते';

  @override
  String get descPlans => 'योजना नियम आणि प्रश्न';

  @override
  String get descAbout => 'गोपनीयता आणि दर डेटा';

  @override
  String get sectionPersonTitle => 'पॉलिसीधारक';

  @override
  String get sectionCoverTitle => 'संरक्षण आणि भरणा';

  @override
  String get tileForms => 'फॉर्म';

  @override
  String get descForms => 'फॉर्म, याद्या, पत्रे';

  @override
  String get formsTitle => 'फॉर्म आणि पत्रे';

  @override
  String get formsIntro =>
      'प्रत्येक PLI / RPLI विनंतीसाठी काय लागते, फॉर्म कुठे मिळतो, आणि तयार विनंती पत्रे.';

  @override
  String get formsVerifyNote =>
      'कागदपत्रांची यादी मार्गदर्शक आहे आणि बदलू शकते. सादर करण्यापूर्वी तुमच्या टपाल कार्यालयात खात्री करा.';

  @override
  String get whereToGetTitle => 'फॉर्म कुठे मिळेल';

  @override
  String get whereToGetBody =>
      'कोणत्याही टपाल कार्यालयात किंवा CPC मध्ये मोफत, किंवा भारतीय टपाल PLI वेबसाइटवरून डाउनलोड करा.';

  @override
  String get documentsTitle => 'तयार ठेवायची कागदपत्रे';

  @override
  String get openOfficialForm => 'अधिकृत फॉर्म उघडा';

  @override
  String get getFromIndiaPost => 'भारतीय टपालाकडून फॉर्म मिळवा';

  @override
  String get detailsSheetTitle => 'पॉलिसी तपशील पत्रक';

  @override
  String get detailsSheetIntro =>
      'अधिकृत फॉर्मवर लिहिण्यासाठी तुमच्या जतन पॉलिसीचा तपशील एकाच ठिकाणी.';

  @override
  String get writeLetterTitle => 'विनंती पत्र लिहा';

  @override
  String get writeLetterIntro =>
      'तुमच्या जतन पॉलिसीवरून भरलेले, पोस्टमास्टरसाठी तयार पत्र.';

  @override
  String get choosePolicy => 'जतन पॉलिसी';

  @override
  String get noSavedPolicies => 'आधी माझ्या पॉलिसीमध्ये एक पॉलिसी जतन करा.';

  @override
  String get toOfficeLabel => 'प्रति (टपाल कार्यालय / CPC)';

  @override
  String get yourAddressLabel => 'तुमचा पत्ता';

  @override
  String get phoneLabel => 'फोन';

  @override
  String get placeLabel => 'ठिकाण';

  @override
  String get nomineeNameLabel => 'नवीन नामनिर्देशिताचे नाव';

  @override
  String get nomineeRelationLabel => 'नाते';

  @override
  String get nomineeAgeLabel => 'नामनिर्देशिताचे वय';

  @override
  String get newAddressLabel => 'नवीन पत्ता';

  @override
  String get bondLost => 'हरवले';

  @override
  String get bondDamaged => 'खराब झाले';

  @override
  String get lapsedFromLabel => 'प्रीमियम थकीत तारखेपासून';

  @override
  String get shareAsText => 'मजकूर म्हणून शेअर करा';

  @override
  String get copyText => 'कॉपी करा';

  @override
  String get copied => 'कॉपी झाले';

  @override
  String get letterEnglishNote =>
      'पत्रे इंग्रजीत आहेत — भारतीय टपाल पत्रव्यवहाराची नेहमीची भाषा. सादर करण्यापूर्वी सही करा.';

  @override
  String get formsOfficialNote =>
      'हे ॲप भारतीय टपाल नाही. विहित फॉर्म असल्यास नेहमी भारतीय टपालाचाच फॉर्म सादर करा.';

  @override
  String get svc_proposal => 'नवीन पॉलिसी प्रस्ताव';

  @override
  String get svcDesc_proposal => 'नवीन PLI किंवा RPLI पॉलिसीसाठी अर्ज';

  @override
  String get svc_maturity => 'परिपक्वता दावा';

  @override
  String get svcDesc_maturity => 'पॉलिसी परिपक्व झाल्यावर रकमेचा दावा';

  @override
  String get svc_survival => 'हयात लाभ दावा';

  @override
  String get svcDesc_survival => 'मनी-बॅक हप्ते (सुमंगल, ग्राम प्रिया)';

  @override
  String get svc_death => 'मृत्यू दावा';

  @override
  String get svcDesc_death => 'नामनिर्देशित किंवा कायदेशीर वारसाकडून दावा';

  @override
  String get svc_loan => 'पॉलिसी कर्ज';

  @override
  String get svcDesc_loan => 'तुमच्या पॉलिसीवर कर्ज घ्या';

  @override
  String get svc_surrender => 'समर्पण';

  @override
  String get svcDesc_surrender => 'समर्पण मूल्यासाठी पॉलिसी लवकर बंद करा';

  @override
  String get svc_revival => 'पुनरुज्जीवन';

  @override
  String get svcDesc_revival => 'व्यपगत पॉलिसी पुन्हा सुरू करा';

  @override
  String get svc_nomination => 'नामनिर्देशन बदल';

  @override
  String get svcDesc_nomination => 'नामनिर्देशित जोडा किंवा बदला';

  @override
  String get svc_address => 'पत्ता बदल';

  @override
  String get svcDesc_address => 'पॉलिसीवरील तुमचा पत्ता अद्ययावत करा';

  @override
  String get svc_duplicate => 'डुप्लिकेट पॉलिसी बाँड';

  @override
  String get svcDesc_duplicate => 'हरवलेला किंवा खराब बाँड बदला';

  @override
  String get svc_assignment => 'अभिहस्तांकन';

  @override
  String get svcDesc_assignment => 'पॉलिसी हक्क हस्तांतरित करा, उदा. बँकेला';

  @override
  String get svc_conversion => 'रूपांतरण (सुविधा)';

  @override
  String get svcDesc_conversion => 'आजीवन विम्याचे एंडोमेंटमध्ये रूपांतर';

  @override
  String get doc_form => 'विहित फॉर्म, भरलेला आणि सही केलेला';

  @override
  String get doc_policyBond => 'मूळ पॉलिसी बाँड (किंवा ePLI बाँड)';

  @override
  String get doc_receiptBook => 'प्रीमियम पावती पुस्तक किंवा पावत्या';

  @override
  String get doc_idProof => 'ओळखीचा पुरावा (आधार, पॅन इ.)';

  @override
  String get doc_addressProof => 'पत्त्याचा पुरावा';

  @override
  String get doc_ageProof => 'वयाचा पुरावा';

  @override
  String get doc_bankDetails => 'बँक पासबुक किंवा रद्द धनादेश';

  @override
  String get doc_photo => 'पासपोर्ट आकाराचा फोटो';

  @override
  String get doc_deathCertificate => 'मृत्यू प्रमाणपत्र';

  @override
  String get doc_claimantId => 'दावेदाराचा ओळख आणि नात्याचा पुरावा';

  @override
  String get doc_medical => 'वैद्यकीय प्रमाणपत्र / आरोग्य घोषणा (मागितल्यास)';

  @override
  String get doc_eligibility =>
      'पात्रतेचा पुरावा (नोकरी, पदवी किंवा ग्रामीण निवास)';

  @override
  String get doc_nomineeDetails => 'नामनिर्देशिताचे नाव, वय आणि नाते';

  @override
  String get doc_indemnity => 'नुकसानभरपाई बाँड (मागितल्यास)';

  @override
  String get customerPhoneLabel => 'ग्राहकाचा मोबाइल (व्हॉट्सॲप आठवणीसाठी)';

  @override
  String get exportBackup => 'पॉलिसींचा बॅकअप';

  @override
  String get importBackup => 'बॅकअपमधून पुनर्संचयित करा';

  @override
  String importConfirm(int count) {
    return 'या बॅकअपमधून $count पॉलिसी पुनर्संचयित करायच्या? समान ID असलेल्या जतन पॉलिसी बदलल्या जातील.';
  }

  @override
  String importDone(int count) {
    return '$count पॉलिसी पुनर्संचयित झाल्या.';
  }

  @override
  String get importFailed => 'ही PLI & RPLI कॅल्क्युलेटर बॅकअप फाइल नाही.';

  @override
  String get backupNote =>
      'बॅकअप फाइलमध्ये तुमच्या पॉलिसीचा तपशील आहे. ती तुमच्या व्हॉट्सॲप चॅट किंवा गूगल ड्राइव्हसारख्या सुरक्षित ठिकाणी ठेवा.';

  @override
  String get restore => 'पुनर्संचयित करा';

  @override
  String get tileDues => 'देय';

  @override
  String get descDues => 'या महिन्याचे देय प्रीमियम';

  @override
  String get duesTitle => 'प्रीमियम देय';

  @override
  String get duesTotal => 'एकूण देय';

  @override
  String duesCount(int count) {
    return '$count प्रीमियम';
  }

  @override
  String get noDuesInMonth => 'या महिन्यात कोणताही प्रीमियम देय नाही.';

  @override
  String get remindOnWhatsApp => 'आठवण करा';

  @override
  String dueReminderMessage(
    String name,
    String amount,
    String number,
    String date,
  ) {
    return 'प्रिय $name, पॉलिसी $number चा $amount प्रीमियम $date रोजी देय आहे. कृपया तुमच्या टपाल कार्यालयात भरा.';
  }

  @override
  String get tileProfile => 'एजंट प्रोफाइल';

  @override
  String get descProfile => 'कोटेशनवर तुमचे नाव आणि लोगो';

  @override
  String get profileTitle => 'एजंट प्रोफाइल';

  @override
  String get agentNameField => 'तुमचे नाव';

  @override
  String get agentPhoneField => 'तुमचा फोन';

  @override
  String get agentCodeField => 'एजंट ID / कार्यालय (ऐच्छिक)';

  @override
  String get chooseLogo => 'फोटो किंवा लोगो निवडा';

  @override
  String get removeLogo => 'काढा';

  @override
  String get profileNote =>
      'कोटेशन आणि आठवण संदेशांमध्ये दिसेल. फक्त या फोनवर जतन.';

  @override
  String get profileSaved => 'प्रोफाइल जतन झाले.';

  @override
  String get searchPolicies => 'नाव, पॉलिसी क्र. किंवा मोबाइल शोधा';

  @override
  String get sortLabel => 'क्रम';

  @override
  String get sortName => 'नाव';

  @override
  String get sortNextDue => 'पुढील देय';

  @override
  String get sortSumAssured => 'विमा रक्कम';

  @override
  String noSearchResults(String query) {
    return '“$query” शी जुळणारी पॉलिसी नाही.';
  }

  @override
  String get filterAll => 'सर्व';

  @override
  String get filterPending => 'बाकी';

  @override
  String get filterCollected => 'वसूल';

  @override
  String get markCollected => 'वसूल म्हणून खूण करा';

  @override
  String get markNotCollected => 'वसूल नाही म्हणून खूण करा';

  @override
  String get duesPendingTotal => 'अजून वसूल करायचे';

  @override
  String duesCollectedOf(int collected, int total) {
    return '$total पैकी $collected वसूल';
  }

  @override
  String get duesMonthTotal => 'महिन्याची एकूण';

  @override
  String get collectedNote =>
      'वसुलीच्या खुणा तुमची स्वतःची नोंद आहेत. त्या इंडिया पोस्टच्या प्रणालीत भरणा तपासत नाहीत.';

  @override
  String get noDuesInFilter => 'या यादीत काही नाही.';

  @override
  String get openFormLink => 'फॉर्म डाउनलोड करा';

  @override
  String get shareFormLink => 'फॉर्म लिंक शेअर करा';

  @override
  String formLinkMessage(String service, String url) {
    return '$service फॉर्म (इंडिया पोस्ट): $url';
  }

  @override
  String get tileLinks => 'अधिकृत लिंक';

  @override
  String get descLinks => 'पोर्टल, फॉर्म, हेल्पलाइन';

  @override
  String get linksTitle => 'अधिकृत लिंक आणि मदत';

  @override
  String get linkPortalTitle => 'PLI ग्राहक पोर्टल';

  @override
  String get linkPortalDesc => 'ऑनलाइन प्रीमियम भरणा, पॉलिसी स्थिती, पावत्या';

  @override
  String get linkFormsTitle => 'अधिकृत PLI/RPLI फॉर्म';

  @override
  String get linkFormsDesc => 'इंडिया पोस्टवरून फॉर्म डाउनलोड करा';

  @override
  String get linkIndiaPostTitle => 'इंडिया पोस्ट';

  @override
  String get linkIndiaPostDesc => 'टपाल विभागाचे संकेतस्थळ';

  @override
  String get linkHelplineTitle => 'इंडिया पोस्ट ग्राहक सेवा';

  @override
  String linkHelplineDesc(String number) {
    return 'टोल-फ्री $number';
  }

  @override
  String get linkDigiLockerTitle => 'डिजिलॉकर';

  @override
  String get linkDigiLockerDesc => 'तुमचा ई-पॉलिसी बाँड सुरक्षित ठेवा';

  @override
  String get linkGrievanceTitle => 'सार्वजनिक तक्रार (CPGRAMS)';

  @override
  String get linkGrievanceDesc => 'भारत सरकारकडे तक्रार नोंदवा';

  @override
  String get linksNote =>
      'हे भारत सरकारच्या अधिकृत संकेतस्थळांवर नेतात. हे ॲप स्वतंत्र आहे आणि इंडिया पोस्ट किंवा टपाल विभागाशी संलग्न नाही.';

  @override
  String get formSourceLabel => 'या फॉर्मचा अधिकृत स्रोत';

  @override
  String get privacyPolicyLink => 'संपूर्ण गोपनीयता धोरण वाचा';

  @override
  String get helpTitle => 'मदत आणि अभिप्राय';

  @override
  String helpBody(String email) {
    return 'काही अडचण किंवा चुकीची रक्कम दिसली? आम्हाला कळवा, पुढच्या अपडेटमध्ये दुरुस्त करू. सहाय्य: $email';
  }

  @override
  String get reportProblem => 'अडचण कळवा';

  @override
  String get sendSuggestion => 'सूचना पाठवा';

  @override
  String get checkAppUpdates => 'ॲप अपडेट तपासा (प्ले स्टोअर)';
}
