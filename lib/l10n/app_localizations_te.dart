// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitle => 'పీఎల్ఐ సహాయక్';

  @override
  String get tilePremium => 'ప్రీమియం';

  @override
  String get tileMaturity => 'మెచ్యూరిటీ';

  @override
  String get tileCompare => 'పోలిక';

  @override
  String get tileEligibility => 'అర్హత';

  @override
  String get tileMyPolicies => 'నా పాలసీలు';

  @override
  String get tileQuotation => 'కొటేషన్';

  @override
  String get comingSoon => 'త్వరలో';

  @override
  String get sampleDataBanner => 'నమూనా డేటా – అధికారికం కాదు';

  @override
  String ratesFooter(String financialYear) {
    return 'రేట్లు ఆర్థిక సంవత్సరం $financialYear • మూలం: భారత తపాలా';
  }

  @override
  String get bonusDisclaimer =>
      'బోనస్ రేట్లు ప్రతి సంవత్సరం ప్రకటించబడతాయి, భవిష్యత్తుకు హామీ లేదు. తుది మొత్తాలు భారత తపాలా ప్రకారం.';

  @override
  String get independentDisclaimerTitle => 'ప్రారంభించే ముందు';

  @override
  String get independentDisclaimer =>
      'ఇది స్వతంత్ర కాలిక్యులేటర్, భారత తపాలా అధికారిక యాప్ కాదు. అన్ని లెక్కలు మీ ఫోన్‌లోనే జరుగుతాయి; ఎలాంటి డేటా సేకరించబడదు.';

  @override
  String get understood => 'నాకు అర్థమైంది';

  @override
  String dataLoadError(String error) {
    return 'రేట్ల డేటా లోడ్ కాలేదు: $error';
  }

  @override
  String get maturityTitle => 'మెచ్యూరిటీ & బోనస్';

  @override
  String get eligibilityTitle => 'అర్హత తనిఖీ';

  @override
  String get premiumTitle => 'ప్రీమియం కాలిక్యులేటర్';

  @override
  String get schemePli => 'తపాలా జీవిత బీమా (PLI)';

  @override
  String get schemeRpli => 'గ్రామీణ తపాలా జీవిత బీమా (RPLI)';

  @override
  String get planLabel => 'పథకం';

  @override
  String rulesPendingSuffix(String plan) {
    return '$plan (నియమాలు పెండింగ్)';
  }

  @override
  String get entryAgeLabel => 'ప్రవేశ వయస్సు';

  @override
  String get childAgeLabel => 'పిల్లల వయస్సు';

  @override
  String get spouseAgeLabel => 'జీవిత భాగస్వామి వయస్సు';

  @override
  String ageYears(int age) {
    return '$age సంవత్సరాలు';
  }

  @override
  String get decrease => 'తగ్గించండి';

  @override
  String get increase => 'పెంచండి';

  @override
  String get ageBasisNote =>
      'పూర్తయిన సంవత్సరాల్లో వయస్సు నమోదు చేయండి. భారత తపాలా వయస్సు నియమం నిర్ధారణ అయ్యాక పుట్టిన తేదీ నుండి వయస్సు లెక్కించే సౌకర్యం జోడించబడుతుంది.';

  @override
  String get sumAssuredLabel => 'బీమా మొత్తం (₹)';

  @override
  String get maturityAgeLabel => 'మెచ్యూరిటీ వయస్సు';

  @override
  String get termLabel => 'పాలసీ కాలవ్యవధి';

  @override
  String termYears(int years) {
    return '$years సంవత్సరాలు';
  }

  @override
  String get startDateLabel => 'పాలసీ ప్రారంభ తేదీ';

  @override
  String get resultMaturityValue => 'మెచ్యూరిటీ మొత్తం';

  @override
  String get resultTotalBenefits => 'మొత్తం పొందే ప్రయోజనాలు';

  @override
  String get sumAssuredRow => 'బీమా మొత్తం';

  @override
  String get termRow => 'కాలవ్యవధి';

  @override
  String bonusRateRow(String fy) {
    return 'బోనస్ రేటు (ఆ.సం. $fy)';
  }

  @override
  String bonusRateValue(int rate) {
    return 'ప్రతి ₹1,000కి సంవత్సరానికి ₹$rate';
  }

  @override
  String get annualBonusRow => 'వార్షిక బోనస్';

  @override
  String totalBonusRow(int years) {
    return 'మొత్తం బోనస్ ($years సంవత్సరాలు)';
  }

  @override
  String get terminalBonusRow => 'టెర్మినల్ బోనస్';

  @override
  String projectionNote(String fy) {
    return 'కాలవ్యవధిలో ప్రతి సంవత్సరం ఆ.సం. $fy బోనస్ రేటే కొనసాగుతుందని భావించబడింది.';
  }

  @override
  String get timelineTitle => 'సర్వైవల్ ప్రయోజనాల కాలపట్టిక';

  @override
  String timelineYear(int year) {
    return '$yearవ సంవత్సరం';
  }

  @override
  String get timelineSurvival => 'సర్వైవల్ ప్రయోజనం';

  @override
  String get timelineMaturity =>
      'మెచ్యూరిటీ: మిగిలిన బీమా మొత్తం + పూర్తి బోనస్';

  @override
  String get timelineDeathNote =>
      'కాలవ్యవధిలో మరణిస్తే: ఇప్పటికే చెల్లించిన ప్రయోజనాలను తగ్గించకుండా పూర్తి బీమా మొత్తం + బోనస్.';

  @override
  String get notAvailableTitle => 'ఇంకా అందుబాటులో లేదు';

  @override
  String get rulesPendingBody =>
      'ఈ పథకం నియమాలు భారత తపాలా అధికారిక సర్క్యులర్ నుండి నిర్ధారణ అయ్యాక లెక్కింపు జోడించబడుతుంది.';

  @override
  String get premiumPendingBody =>
      'ప్రీమియం భారత తపాలా అధికారిక ప్రీమియం పట్టికల నుండే రావాలి. అధికారిక పట్టికలను జోడించి సరిచూసిన తర్వాత ఈ కాలిక్యులేటర్ ప్రారంభమవుతుంది — అంచనా ప్రీమియంలు చూపబడవు.';

  @override
  String missingBonusRate(String fy) {
    return 'ఆ.సం. $fyకి ప్రకటించిన బోనస్ రేటు లేదు.';
  }

  @override
  String vEntryAge(String plan, int min, int max, int age) {
    return '$plan ప్రవేశ వయస్సు $min–$max. మీ వయస్సు: $age';
  }

  @override
  String vChildAge(int min, int max, int age) {
    return 'పిల్లల వయస్సు $min–$max ఉండాలి. నమోదు చేసింది: $age';
  }

  @override
  String vSpouseAge(int min, int max, int age) {
    return 'జీవిత భాగస్వామి వయస్సు $min–$max ఉండాలి. నమోదు చేసింది: $age';
  }

  @override
  String vSaMin(String min, String sa) {
    return 'కనిష్ఠ బీమా మొత్తం $min. నమోదు చేసింది: $sa';
  }

  @override
  String vSaMax(String max, String sa) {
    return 'గరిష్ఠ బీమా మొత్తం $max (ఈ పథకంలో మీ అన్ని పాలసీలు కలిపి). నమోదు చేసింది: $sa';
  }

  @override
  String vSaMultiple(String multiple) {
    return 'బీమా మొత్తం $multiple గుణిజంగా ఉండాలి';
  }

  @override
  String vMaturityNotOffered(int value, String allowed) {
    return 'మెచ్యూరిటీ వయస్సు $value అందుబాటులో లేదు. వీటిలో ఎంచుకోండి: $allowed';
  }

  @override
  String vCeasingNotOffered(int value, String allowed) {
    return 'ప్రీమియం చెల్లింపు వయస్సు $value అందుబాటులో లేదు. వీటిలో ఎంచుకోండి: $allowed';
  }

  @override
  String vTermNotOffered(int value, String allowed) {
    return '$value సంవత్సరాల కాలవ్యవధి అందుబాటులో లేదు. వీటిలో ఎంచుకోండి: $allowed';
  }

  @override
  String vNotAfterEntry(int value, int age) {
    return 'మెచ్యూరిటీ వయస్సు $value ప్రవేశ వయస్సు ($age) కంటే ఎక్కువ ఉండాలి.';
  }

  @override
  String vTermRange(int min, int max, int term) {
    return 'కాలవ్యవధి $min–$max సంవత్సరాలు ఉండాలి. నమోదు చేసింది: $term';
  }

  @override
  String vParentAge(int max, int age) {
    return 'తల్లి/తండ్రి వయస్సు $max లేదా తక్కువ ఉండాలి. నమోదు చేసింది: $age';
  }

  @override
  String vTooManyChildren(int max) {
    return 'గరిష్ఠంగా $max పిల్లలకు మాత్రమే బీమా సాధ్యం.';
  }

  @override
  String vChildSaCap(String cap, String sa) {
    return 'ఈ పిల్లలకు గరిష్ఠ బీమా మొత్తం $cap. నమోదు చేసింది: $sa';
  }

  @override
  String get vMissing => 'దయచేసి అన్ని వివరాలు నింపండి.';

  @override
  String get eligibilityIntro =>
      'వ్యక్తికి వర్తించే అన్నింటినీ ఎంచుకోండి, తర్వాత వయస్సు నమోదు చేయండి.';

  @override
  String get groupsPli => 'PLI — వీటిలో ఏదైనా ఒకటి';

  @override
  String get groupsRpli => 'RPLI — వీటిలో ఏదైనా ఒకటి';

  @override
  String get group_central_state_govt => 'కేంద్ర / రాష్ట్ర ప్రభుత్వ ఉద్యోగి';

  @override
  String get group_defence_paramilitary => 'రక్షణ / పారామిలిటరీ దళాలు';

  @override
  String get group_psu => 'ప్రభుత్వ రంగ సంస్థ';

  @override
  String get group_banks => 'బ్యాంకు ఉద్యోగి';

  @override
  String get group_local_bodies => 'స్థానిక సంస్థ ఉద్యోగి';

  @override
  String get group_educational_institutions =>
      'విద్యా సంస్థ (గుర్తింపు పొందిన ప్రైవేట్‌తో సహా)';

  @override
  String get group_listed_companies => 'లిస్టెడ్ కంపెనీ ఉద్యోగి';

  @override
  String get group_professionals =>
      'వృత్తి నిపుణులు (డాక్టర్, ఇంజనీర్, సీఏ, న్యాయవాది…)';

  @override
  String get group_graduates_diploma_holders =>
      'పట్టభద్రులు లేదా డిప్లొమా హోల్డర్లు';

  @override
  String get group_rural_resident => 'గ్రామీణ ప్రాంత నివాసి';

  @override
  String get group_scheduled_bank_savings_account_holder =>
      'షెడ్యూల్డ్ బ్యాంకులో పొదుపు ఖాతాదారు';

  @override
  String get ageLabel => 'వయస్సు';

  @override
  String get eligibleFor => 'అర్హులు';

  @override
  String plansAtAge(int age) {
    return '$age ఏళ్ల వయస్సులో అందుబాటులో ఉన్న పథకాలు';
  }

  @override
  String get childPlansTitle => 'పిల్లల పాలసీలు (మీ పిల్లల కోసం)';

  @override
  String get selectGroupPrompt =>
      'అర్హ పథకాలు చూడడానికి పైన కనీసం ఒక ఎంపిక చేయండి.';

  @override
  String noPlansAtAge(int age) {
    return '$age ఏళ్ల వయస్సులో ఏ పథకంలోనూ ప్రవేశం లేదు.';
  }

  @override
  String get eligibilityNote =>
      'తుది ఆమోదం భారత తపాలా వైద్య పరీక్ష మరియు పత్రాలకు లోబడి ఉంటుంది.';

  @override
  String get languageLabel => 'భాష';

  @override
  String get systemLanguage => 'పరికర భాష';

  @override
  String get tileAfford => 'ఎంత సాధ్యం';

  @override
  String get tileTools => 'పాలసీ సాధనాలు';

  @override
  String get tilePlans => 'పథకాలు';

  @override
  String get tileAbout => 'గురించి';

  @override
  String get dobLabel => 'పుట్టిన తేదీ';

  @override
  String get useAgeInstead => 'బదులుగా వయస్సు నమోదు చేయండి';

  @override
  String get useDobInstead => 'పుట్టిన తేదీ నమోదు చేయండి';

  @override
  String ageFromDobNearest(int age) {
    return 'ప్రారంభ తేదీన ప్రవేశ వయస్సు: $age (సమీప పుట్టినరోజు వయస్సు)';
  }

  @override
  String ageFromDobLast(int age) {
    return 'ప్రారంభ తేదీన ప్రవేశ వయస్సు: $age (గత పుట్టినరోజు వయస్సు)';
  }

  @override
  String get premiumCeasingAgeLabel => 'ప్రీమియం చెల్లింపు వయస్సు';

  @override
  String get frequencyLabel => 'చెల్లింపు విధానం';

  @override
  String get freqMonthly => 'నెలవారీ';

  @override
  String get freqQuarterly => 'త్రైమాసిక';

  @override
  String get freqHalfYearly => 'అర్ధవార్షిక';

  @override
  String get freqYearly => 'వార్షిక';

  @override
  String get premiumPerInstalment => 'ఒక్కో వాయిదా ప్రీమియం';

  @override
  String get tablePremiumRow => 'పట్టిక ప్రీమియం';

  @override
  String get saRebateRow => 'బీమా మొత్తం రాయితీ';

  @override
  String totalPremiumRow(int count) {
    return 'మొత్తం ప్రీమియం ($count వాయిదాలు)';
  }

  @override
  String get payingTermRow => 'ప్రీమియం చెల్లింపు కాలం';

  @override
  String get returnRow => 'ప్రభావవంతమైన రాబడి (XIRR)';

  @override
  String returnValue(String percent) {
    return 'సంవత్సరానికి $percent%';
  }

  @override
  String get lifeCoverRow => 'జీవిత రక్షణ';

  @override
  String get allFrequenciesTitle => 'అన్ని చెల్లింపు విధానాలు';

  @override
  String get notInTable => 'అధికారిక పట్టికలో అందుబాటులో లేదు';

  @override
  String get noTableForPlan => 'ఈ పథకం ప్రీమియం పట్టిక ఇంకా జోడించలేదు.';

  @override
  String get illustrationTitle => 'సంవత్సరాల వారీ ప్రయోజన వివరణ';

  @override
  String get colYear => 'సంవత్సరం';

  @override
  String get colPremiumsPaid => 'చెల్లించిన ప్రీమియం';

  @override
  String get colBonus => 'బోనస్';

  @override
  String get colLifeCover => 'జీవిత రక్షణ';

  @override
  String get makeQuotation => 'కొటేషన్ తయారు చేయండి';

  @override
  String get gstNote =>
      'జీఎస్టీ: 22 సెప్టెంబర్ 2025 లేదా తర్వాత చెల్లించిన వ్యక్తిగత జీవిత బీమా ప్రీమియంపై సున్నా.';

  @override
  String get chartTitle => 'చెల్లించిన ప్రీమియం vs ప్రయోజనాలు';

  @override
  String get chartPaid => 'మొత్తం ప్రీమియం';

  @override
  String get chartReceived => 'మొత్తం ప్రయోజనాలు';

  @override
  String get showTable => 'సంవత్సరాల వారీ పట్టిక చూపించు';

  @override
  String get hideTable => 'సంవత్సరాల వారీ పట్టిక దాచు';

  @override
  String get reverseTitle => 'నేను ఎంత తీసుకోగలను?';

  @override
  String get budgetLabel => 'ఒక్కో వాయిదా బడ్జెట్ (₹)';

  @override
  String get reverseIntro =>
      'మీరు ఎంత చెల్లించగలరో నమోదు చేయండి. ప్రతి పథకం ఎంపిక ఆ మొత్తంలో గరిష్ఠ బీమా మొత్తాన్ని చూపుతుంది.';

  @override
  String optMaturityAge(int age) {
    return '$ageకి మెచ్యూరిటీ';
  }

  @override
  String optCeasingAge(int age) {
    return '$age ఏళ్ల వరకు ప్రీమియం';
  }

  @override
  String optTerm(int years) {
    return '$years ఏళ్ల కాలవ్యవధి';
  }

  @override
  String get reverseNone => 'ఈ వయస్సులో ఈ బడ్జెట్‌కు ఏ పథకమూ సరిపోదు.';

  @override
  String get saShort => 'బీమా మొత్తం';

  @override
  String get premiumShort => 'ప్రీమియం';

  @override
  String get compareTitle => 'పథకాల పోలిక';

  @override
  String optionN(int n) {
    return 'ఎంపిక $n';
  }

  @override
  String get addOption => 'ఎంపిక జోడించు';

  @override
  String get removeOption => 'ఎంపిక తీసివేయి';

  @override
  String get maturityShort => 'మెచ్యూరిటీ / ప్రయోజనాలు';

  @override
  String get totalPaidShort => 'మొత్తం చెల్లింపు';

  @override
  String get returnShort => 'రాబడి';

  @override
  String get lifeCoverShort => 'జీవిత రక్షణ';

  @override
  String get comparisonTitle => 'పోలిక';

  @override
  String get toolsTitle => 'పాలసీ సాధనాలు';

  @override
  String get tabLoan => 'రుణం';

  @override
  String get tabPaidUp => 'పెయిడ్-అప్';

  @override
  String get tabRevival => 'పునరుద్ధరణ';

  @override
  String get tabAdvance => 'ముందస్తు';

  @override
  String get yearsInForceLabel => 'పాలసీ ఎన్ని సంవత్సరాలుగా అమలులో ఉంది';

  @override
  String get loanAmountLabel => 'రుణ మొత్తం (₹)';

  @override
  String get loanMonthsLabel => 'తిరిగి చెల్లించే వరకు నెలలు';

  @override
  String monthsValue(int months) {
    return '$months నెలలు';
  }

  @override
  String get loanInterestRow => 'వడ్డీ';

  @override
  String get loanTotalRow => 'మొత్తం తిరిగి చెల్లింపు';

  @override
  String loanRateNote(String rate) {
    return 'సంవత్సరానికి $rate% వడ్డీ, అర్ధవార్షిక చక్రవడ్డీ.';
  }

  @override
  String loanAvailableAfter(int years) {
    return '$years సంవత్సరాల తర్వాత రుణం లభిస్తుంది.';
  }

  @override
  String get loanNotOffered => 'ఈ పథకంలో రుణ సౌకర్యం లేదు.';

  @override
  String get loanEligibleYes => 'రుణానికి అర్హులు';

  @override
  String get loanEligibleNo => 'ఇంకా రుణానికి అర్హులు కాదు';

  @override
  String get loanAmountNote =>
      'గరిష్ఠ రుణం సరెండర్ విలువపై ఆధారపడుతుంది, దానిని భారత తపాలా లెక్కిస్తుంది.';

  @override
  String get premiumsPaidLabel => 'చెల్లించిన వాయిదాలు';

  @override
  String get premiumsPayableLabel => 'చెల్లించాల్సిన మొత్తం వాయిదాలు';

  @override
  String get paidUpSaRow => 'పెయిడ్-అప్ బీమా మొత్తం';

  @override
  String get paidUpNote =>
      'అంచనా. ఇప్పటికే పొందిన బోనస్ భారత తపాలా రికార్డుల ప్రకారం జోడించబడుతుంది. సరెండర్ విలువకు అధికారిక సరెండర్ కారకాలు అవసరం, అది లెక్కించబడలేదు.';

  @override
  String paidUpNotEligible(int years) {
    return 'పాలసీ $years సంవత్సరాలు అమలులో ఉన్న తర్వాతే పెయిడ్-అప్ కావచ్చు.';
  }

  @override
  String get paidUpInvalid =>
      'చెల్లించిన వాయిదాలు చెల్లించాల్సిన వాయిదాల కంటే ఎక్కువ ఉండకూడదు.';

  @override
  String get instalmentLabel => 'ఒక్కో వాయిదా ప్రీమియం (₹)';

  @override
  String get firstUnpaidLabel => 'మొదటి బకాయి వాయిదా తేదీ';

  @override
  String get payDateLabel => 'చెల్లింపు తేదీ';

  @override
  String get missedRow => 'బకాయి వాయిదాలు';

  @override
  String get arrearsRow => 'బకాయిలు';

  @override
  String get defaultFeeRow => 'ఆలస్య రుసుము';

  @override
  String get totalPayableRow => 'మొత్తం చెల్లించాల్సింది';

  @override
  String revivalNote(String percent) {
    return 'ఆలస్యమైన ప్రతి నెలకు వాయిదాలో $percent% ఆలస్య రుసుము. ఎక్కువ కాలం తర్వాత పునరుద్ధరణకు వైద్య ధృవపత్రం అవసరం కావచ్చు.';
  }

  @override
  String revivalLine(String date, int months, String fee) {
    return 'బకాయి $date • $months నెలల ఆలస్యం • రుసుము $fee';
  }

  @override
  String get nothingDue => 'ఆ తేదీకి ఏమీ బకాయి లేదు.';

  @override
  String get monthsAdvanceLabel => 'ముందస్తుగా చెల్లించే నెలలు';

  @override
  String rebateRow(String percent) {
    return 'రాయితీ ($percent%)';
  }

  @override
  String get amountDueRow => 'బకాయి మొత్తం';

  @override
  String get payableRow => 'మీరు చెల్లించేది';

  @override
  String get advanceNote =>
      'చూపిన రాయితీ రేట్ల డేటాలోని ముందస్తు చెల్లింపు రాయితీ ప్రకారం; ప్రీమియం ముందుగా చెల్లిస్తే వర్తిస్తుంది.';

  @override
  String get policiesTitle => 'నా పాలసీలు';

  @override
  String get noPolicies =>
      'ఇంకా ఏ పాలసీ సేవ్ చేయలేదు. జోడించడానికి + నొక్కండి.';

  @override
  String get addPolicy => 'పాలసీ జోడించు';

  @override
  String get editPolicy => 'పాలసీ సవరించు';

  @override
  String get holderNameLabel => 'పాలసీదారు పేరు';

  @override
  String get policyNumberLabel => 'పాలసీ సంఖ్య';

  @override
  String get premiumAmountLabel => 'ఒక్కో వాయిదా ప్రీమియం (₹, రసీదు ప్రకారం)';

  @override
  String get save => 'సేవ్ చేయి';

  @override
  String get delete => 'తొలగించు';

  @override
  String get deleteConfirm => 'ఈ పాలసీని తొలగించాలా?';

  @override
  String get cancel => 'రద్దు';

  @override
  String nextDue(String date) {
    return 'తదుపరి వాయిదా: $date';
  }

  @override
  String get noMoreDues => 'అన్ని ప్రీమియంలు చెల్లించబడ్డాయి';

  @override
  String get remindersLabel => 'ప్రతి వాయిదాకు 3 రోజుల ముందు గుర్తు చేయి';

  @override
  String get remindersDenied => 'ఈ యాప్‌కు నోటిఫికేషన్లు ఆఫ్‌లో ఉన్నాయి.';

  @override
  String get accruedBonusRow => 'ఇప్పటివరకు జమ అయిన బోనస్';

  @override
  String bonusMissingYears(String years) {
    return 'ఆ.సం. $years బోనస్ రేట్లు యాప్ డేటాలో లేవు; మొత్తంలో ఆ సంవత్సరాలు చేర్చలేదు.';
  }

  @override
  String maturityOn(String date) {
    return '$dateన మెచ్యూరిటీ';
  }

  @override
  String get upcomingDues => 'రాబోయే వాయిదా తేదీలు';

  @override
  String get yearsInForceRow => 'అమలులో ఉన్న సంవత్సరాలు';

  @override
  String get reminderTitle => 'పీఎల్ఐ ప్రీమియం బకాయి';

  @override
  String reminderBody(String name, String amount, String date, String number) {
    return '$name: $amount $dateన చెల్లించాలి (పాలసీ $number)';
  }

  @override
  String get savedLocally => 'ఈ ఫోన్‌లో మాత్రమే సేవ్ చేయబడింది.';

  @override
  String get requiredField => 'తప్పనిసరి';

  @override
  String get projectedMaturityRow => 'అంచనా మెచ్యూరిటీ మొత్తం';

  @override
  String get quotationTitle => 'కొటేషన్';

  @override
  String get customerNameLabel => 'వినియోగదారు పేరు';

  @override
  String get agentNameLabel => 'తయారు చేసినవారు (ఐచ్ఛికం)';

  @override
  String get sharePdf => 'PDF షేర్ చేయి';

  @override
  String get shareImage => 'చిత్రం షేర్ చేయి';

  @override
  String get quotationHeading => 'ప్రీమియం కొటేషన్';

  @override
  String preparedOn(String date) {
    return '$dateన తయారు చేయబడింది';
  }

  @override
  String quotationFor(String name) {
    return 'వీరికి: $name';
  }

  @override
  String preparedBy(String name) {
    return 'తయారు చేసినవారు: $name';
  }

  @override
  String get quotationInvalid =>
      'కొటేషన్ తయారు చేయడానికి పథకం వివరాలు పూర్తి చేయండి.';

  @override
  String get planDetailsTitle => 'పథకం వివరాలు';

  @override
  String get planInfoTitle => 'పథకాల సమాచారం';

  @override
  String entryAgeInfo(int min, int max) {
    return 'ప్రవేశ వయస్సు: $min–$max';
  }

  @override
  String maturityAgesInfo(String ages) {
    return 'మెచ్యూరిటీ వయస్సులు: $ages';
  }

  @override
  String ceasingAgesInfo(String ages, int age) {
    return 'ప్రీమియం చెల్లింపు వయస్సులు: $ages; $ageకి మెచ్యూరిటీ';
  }

  @override
  String termsInfo(String terms) {
    return 'కాలవ్యవధి: $terms సంవత్సరాలు';
  }

  @override
  String survivalInfo(String list) {
    return 'మనీ బ్యాక్: $list';
  }

  @override
  String survivalItem(int percent, int year) {
    return '$yearవ సంవత్సరంలో $percent%';
  }

  @override
  String loanInfo(int years) {
    return '$years సంవత్సరాల తర్వాత రుణం';
  }

  @override
  String get noLoanInfo => 'రుణం లేదు';

  @override
  String surrenderInfo(int years) {
    return '$years సంవత్సరాల తర్వాత సరెండర్';
  }

  @override
  String get noSurrenderInfo => 'సరెండర్ లేదు';

  @override
  String bonusInfo(String fy, int rate) {
    return 'ఆ.సం. $fy బోనస్: ప్రతి ₹1,000కి సంవత్సరానికి ₹$rate';
  }

  @override
  String saLimitInfo(String min, String max) {
    return 'బీమా మొత్తం: $min – $max';
  }

  @override
  String jointInfo(int min, int max, int tmin, int tmax) {
    return 'ప్రతి జీవిత భాగస్వామి వయస్సు $min–$max; కాలవ్యవధి $tmin–$tmax సంవత్సరాలు';
  }

  @override
  String childInfo(int min, int max, int parent, int children, String cap) {
    return 'పిల్లల వయస్సు $min–$max; తల్లి/తండ్రి వయస్సు $parent వరకు; గరిష్ఠంగా $children పిల్లలు; బీమా మొత్తం $cap వరకు';
  }

  @override
  String conversionInfo(int years) {
    return '$years సంవత్సరాల తర్వాత ఎండోమెంట్ బీమాగా మార్చవచ్చు';
  }

  @override
  String get faqTitle => 'సాధారణ ప్రశ్నలు';

  @override
  String get faq1q => 'బోనస్‌కు హామీ ఉందా?';

  @override
  String get faq1a =>
      'లేదు. భారత తపాలా ప్రతి సంవత్సరం బోనస్ రేట్లు ప్రకటిస్తుంది. ఇక్కడి అంచనాలు భవిష్యత్తులోని ప్రతి సంవత్సరానికి తాజా ప్రకటిత రేటునే భావిస్తాయి.';

  @override
  String get faq2q => 'ప్రీమియం ఎక్కడి నుండి వస్తుంది?';

  @override
  String get faq2a =>
      'భారత తపాలా అధికారిక ప్రీమియం పట్టికల నుండి. యాప్ ఎప్పుడూ ప్రీమియం అంచనా వేయదు.';

  @override
  String get faq3q => 'ఆదాయపు పన్ను ప్రయోజనం ఉందా?';

  @override
  String get faq3a =>
      'ప్రీమియం సెక్షన్ 80C (పాత పన్ను విధానం) కింద అర్హత పొందవచ్చు, మెచ్యూరిటీ మొత్తం సెక్షన్ 10(10D) కింద షరతులకు లోబడి మినహాయింపు పొందవచ్చు. ఇది పన్ను సలహా కాదు.';

  @override
  String get faq4q => 'ప్రీమియంపై జీఎస్టీ ఉందా?';

  @override
  String get faq4a =>
      'లేదు. 22 సెప్టెంబర్ 2025 నుండి వ్యక్తిగత జీవిత బీమా ప్రీమియంపై జీఎస్టీ సున్నా.';

  @override
  String get faq5q => 'PLI, RPLI ఎవరు తీసుకోవచ్చు?';

  @override
  String get faq5a =>
      'PLI: ప్రభుత్వ, సెమీ-ప్రభుత్వ ఉద్యోగులు, వృత్తి నిపుణులు, పట్టభద్రులు, డిప్లొమా హోల్డర్లు మరియు భారత తపాలా జాబితాలోని ఇతరులు. RPLI: గ్రామీణ నివాసులు మరియు షెడ్యూల్డ్ బ్యాంకు పొదుపు ఖాతాదారులు.';

  @override
  String get aboutTitle => 'గురించి';

  @override
  String get privacyTitle => 'గోప్యత';

  @override
  String get privacyBody =>
      'పీఎల్ఐ సహాయక్ ఎలాంటి డేటా సేకరించదు. మీరు నమోదు చేసేది లేదా సేవ్ చేసేది అంతా ఈ ఫోన్‌లోనే ఉంటుంది. ఖాతా లేదా ఇంటర్నెట్ అవసరం లేదు.';

  @override
  String get dataSourceTitle => 'రేట్ల డేటా';

  @override
  String dataSourceBody(String id, String date, String source) {
    return 'నియమాలు $id, $date నుండి అమలు. మూలం: $source';
  }

  @override
  String get provisionalTitle => 'ఇంకా నిర్ధారణ కావాల్సిన నియమాలు';

  @override
  String get provisionalIntro =>
      'భారత తపాలా అధికారిక సర్క్యులర్ల నుండి నిర్ధారణ అయ్యే వరకు ఈ నియమాలు తాత్కాలిక అంచనాలు (ఆంగ్లంలో):';

  @override
  String get checkUpdates => 'రేట్ల నవీకరణ తనిఖీ చేయి';

  @override
  String updateInstalled(int version) {
    return 'రేట్ల డేటా వెర్షన్ $versionకు నవీకరించబడింది.';
  }

  @override
  String get updateCurrent => 'రేట్ల డేటా తాజాగా ఉంది.';

  @override
  String updateFailed(String error) {
    return 'నవీకరణ విఫలమైంది; ప్రస్తుత రేట్లు కొనసాగుతున్నాయి. $error';
  }

  @override
  String get sampleDataNote =>
      'ప్రీమియం పట్టికలు నమూనా డేటా, భారత తపాలా అధికారిక గణాంకాలు కావు.';

  @override
  String appVersion(String version) {
    return 'వెర్షన్ $version';
  }
}
