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
}
