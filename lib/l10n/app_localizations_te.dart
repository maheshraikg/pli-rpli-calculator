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
  String get tileAfford => 'Afford';

  @override
  String get tileTools => 'Policy tools';

  @override
  String get tilePlans => 'Plans';

  @override
  String get tileAbout => 'About';

  @override
  String get dobLabel => 'Date of birth';

  @override
  String get useAgeInstead => 'Enter age instead';

  @override
  String get useDobInstead => 'Enter date of birth';

  @override
  String ageFromDobNearest(int age) {
    return 'Entry age on start date: $age (age nearest birthday)';
  }

  @override
  String ageFromDobLast(int age) {
    return 'Entry age on start date: $age (age last birthday)';
  }

  @override
  String get premiumCeasingAgeLabel => 'Premium paying age';

  @override
  String get frequencyLabel => 'Payment frequency';

  @override
  String get freqMonthly => 'Monthly';

  @override
  String get freqQuarterly => 'Quarterly';

  @override
  String get freqHalfYearly => 'Half-yearly';

  @override
  String get freqYearly => 'Yearly';

  @override
  String get premiumPerInstalment => 'Premium per instalment';

  @override
  String get tablePremiumRow => 'Table premium';

  @override
  String get saRebateRow => 'SA rebate';

  @override
  String totalPremiumRow(int count) {
    return 'Total premium ($count instalments)';
  }

  @override
  String get payingTermRow => 'Premium paying term';

  @override
  String get returnRow => 'Effective return (XIRR)';

  @override
  String returnValue(String percent) {
    return '$percent% a year';
  }

  @override
  String get lifeCoverRow => 'Life cover';

  @override
  String get allFrequenciesTitle => 'All payment frequencies';

  @override
  String get notInTable => 'Not available in official table';

  @override
  String get noTableForPlan =>
      'The premium table for this plan is not loaded yet.';

  @override
  String get illustrationTitle => 'Year-wise benefit illustration';

  @override
  String get colYear => 'Year';

  @override
  String get colPremiumsPaid => 'Premiums paid';

  @override
  String get colBonus => 'Bonus';

  @override
  String get colLifeCover => 'Life cover';

  @override
  String get makeQuotation => 'Create quotation';

  @override
  String get gstNote =>
      'GST: nil on individual life insurance premiums paid on or after 22 Sep 2025.';

  @override
  String get chartTitle => 'Premium paid vs benefits';

  @override
  String get chartPaid => 'Total premium';

  @override
  String get chartReceived => 'Total benefits';

  @override
  String get showTable => 'Show year-wise table';

  @override
  String get hideTable => 'Hide year-wise table';

  @override
  String get reverseTitle => 'What can I afford?';

  @override
  String get budgetLabel => 'Budget per instalment (₹)';

  @override
  String get reverseIntro =>
      'Enter how much you can pay. Each plan option shows the highest sum assured within that amount.';

  @override
  String optMaturityAge(int age) {
    return 'Matures at $age';
  }

  @override
  String optCeasingAge(int age) {
    return 'Premiums till age $age';
  }

  @override
  String optTerm(int years) {
    return '$years-year term';
  }

  @override
  String get reverseNone => 'No plan fits this budget at this age.';

  @override
  String get saShort => 'Sum assured';

  @override
  String get premiumShort => 'Premium';

  @override
  String get compareTitle => 'Compare plans';

  @override
  String optionN(int n) {
    return 'Option $n';
  }

  @override
  String get addOption => 'Add option';

  @override
  String get removeOption => 'Remove option';

  @override
  String get maturityShort => 'Maturity / benefits';

  @override
  String get totalPaidShort => 'Total paid';

  @override
  String get returnShort => 'Return';

  @override
  String get lifeCoverShort => 'Life cover';

  @override
  String get comparisonTitle => 'Comparison';

  @override
  String get toolsTitle => 'Policy tools';

  @override
  String get tabLoan => 'Loan';

  @override
  String get tabPaidUp => 'Paid-up';

  @override
  String get tabRevival => 'Revival';

  @override
  String get tabAdvance => 'Advance';

  @override
  String get yearsInForceLabel => 'Years the policy has been in force';

  @override
  String get loanAmountLabel => 'Loan amount (₹)';

  @override
  String get loanMonthsLabel => 'Months until repayment';

  @override
  String monthsValue(int months) {
    return '$months months';
  }

  @override
  String get loanInterestRow => 'Interest';

  @override
  String get loanTotalRow => 'Total to repay';

  @override
  String loanRateNote(String rate) {
    return 'Interest $rate% a year, compounded half-yearly.';
  }

  @override
  String loanAvailableAfter(int years) {
    return 'Loan available after $years years.';
  }

  @override
  String get loanNotOffered => 'This plan has no loan facility.';

  @override
  String get loanEligibleYes => 'Eligible for a loan';

  @override
  String get loanEligibleNo => 'Not yet eligible for a loan';

  @override
  String get loanAmountNote =>
      'The maximum loan depends on the surrender value, which India Post calculates.';

  @override
  String get premiumsPaidLabel => 'Instalments paid';

  @override
  String get premiumsPayableLabel => 'Total instalments payable';

  @override
  String get paidUpSaRow => 'Paid-up sum assured';

  @override
  String get paidUpNote =>
      'Approximate. Bonus already earned is added as per India Post records. Surrender value needs official surrender factors and is not calculated.';

  @override
  String paidUpNotEligible(int years) {
    return 'A policy can become paid-up only after $years years in force.';
  }

  @override
  String get paidUpInvalid =>
      'Instalments paid cannot exceed instalments payable.';

  @override
  String get instalmentLabel => 'Premium per instalment (₹)';

  @override
  String get firstUnpaidLabel => 'First unpaid due date';

  @override
  String get payDateLabel => 'Date of payment';

  @override
  String get missedRow => 'Instalments due';

  @override
  String get arrearsRow => 'Arrears';

  @override
  String get defaultFeeRow => 'Default fee';

  @override
  String get totalPayableRow => 'Total payable';

  @override
  String revivalNote(String percent) {
    return 'Default fee $percent% of the instalment per month of delay. Revival after a long lapse may need a medical certificate.';
  }

  @override
  String revivalLine(String date, int months, String fee) {
    return 'Due $date • $months months late • fee $fee';
  }

  @override
  String get nothingDue => 'Nothing is due on that date.';

  @override
  String get monthsAdvanceLabel => 'Months paid in advance';

  @override
  String rebateRow(String percent) {
    return 'Rebate ($percent%)';
  }

  @override
  String get amountDueRow => 'Amount due';

  @override
  String get payableRow => 'You pay';

  @override
  String get advanceNote =>
      'The rebate shown follows the advance-payment rebate in the rate data; it applies when premiums are paid in advance.';

  @override
  String get policiesTitle => 'My Policies';

  @override
  String get noPolicies => 'No saved policies yet. Tap + to add one.';

  @override
  String get addPolicy => 'Add policy';

  @override
  String get editPolicy => 'Edit policy';

  @override
  String get holderNameLabel => 'Policy holder name';

  @override
  String get policyNumberLabel => 'Policy number';

  @override
  String get premiumAmountLabel => 'Premium per instalment (₹, as on receipt)';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Delete';

  @override
  String get deleteConfirm => 'Delete this policy?';

  @override
  String get cancel => 'Cancel';

  @override
  String nextDue(String date) {
    return 'Next due: $date';
  }

  @override
  String get noMoreDues => 'All premiums paid';

  @override
  String get remindersLabel => 'Remind me 3 days before each due date';

  @override
  String get remindersDenied => 'Notifications are turned off for this app.';

  @override
  String get accruedBonusRow => 'Bonus accrued so far';

  @override
  String bonusMissingYears(String years) {
    return 'Bonus rates for FY $years are not in the app data; the total leaves out those years.';
  }

  @override
  String maturityOn(String date) {
    return 'Matures on $date';
  }

  @override
  String get upcomingDues => 'Upcoming due dates';

  @override
  String get yearsInForceRow => 'Years in force';

  @override
  String get reminderTitle => 'PLI premium due';

  @override
  String reminderBody(String name, String amount, String date, String number) {
    return '$name: $amount due on $date (policy $number)';
  }

  @override
  String get savedLocally => 'Saved only on this phone.';

  @override
  String get requiredField => 'Required';

  @override
  String get projectedMaturityRow => 'Projected maturity value';

  @override
  String get quotationTitle => 'Quotation';

  @override
  String get customerNameLabel => 'Customer name';

  @override
  String get agentNameLabel => 'Prepared by (optional)';

  @override
  String get sharePdf => 'Share PDF';

  @override
  String get shareImage => 'Share image';

  @override
  String get quotationHeading => 'Premium Quotation';

  @override
  String preparedOn(String date) {
    return 'Prepared on $date';
  }

  @override
  String quotationFor(String name) {
    return 'For: $name';
  }

  @override
  String preparedBy(String name) {
    return 'Prepared by: $name';
  }

  @override
  String get quotationInvalid =>
      'Complete the plan details to create a quotation.';

  @override
  String get planDetailsTitle => 'Plan details';

  @override
  String get planInfoTitle => 'Plan information';

  @override
  String entryAgeInfo(int min, int max) {
    return 'Entry age: $min–$max';
  }

  @override
  String maturityAgesInfo(String ages) {
    return 'Maturity ages: $ages';
  }

  @override
  String ceasingAgesInfo(String ages, int age) {
    return 'Premium paying ages: $ages; matures at $age';
  }

  @override
  String termsInfo(String terms) {
    return 'Terms: $terms years';
  }

  @override
  String survivalInfo(String list) {
    return 'Money back: $list';
  }

  @override
  String survivalItem(int percent, int year) {
    return '$percent% at year $year';
  }

  @override
  String loanInfo(int years) {
    return 'Loan after $years years';
  }

  @override
  String get noLoanInfo => 'No loan';

  @override
  String surrenderInfo(int years) {
    return 'Surrender after $years years';
  }

  @override
  String get noSurrenderInfo => 'No surrender';

  @override
  String bonusInfo(String fy, int rate) {
    return 'Bonus FY $fy: ₹$rate per ₹1,000 a year';
  }

  @override
  String saLimitInfo(String min, String max) {
    return 'Sum assured: $min – $max';
  }

  @override
  String jointInfo(int min, int max, int tmin, int tmax) {
    return 'Each spouse aged $min–$max; term $tmin–$tmax years';
  }

  @override
  String childInfo(int min, int max, int parent, int children, String cap) {
    return 'Child aged $min–$max; parent aged up to $parent; up to $children children; SA up to $cap';
  }

  @override
  String conversionInfo(int years) {
    return 'Can be converted to endowment after $years years';
  }

  @override
  String get faqTitle => 'Common questions';

  @override
  String get faq1q => 'Is the bonus guaranteed?';

  @override
  String get faq1a =>
      'No. India Post declares bonus rates every year. Projections here assume the latest declared rate for every future year.';

  @override
  String get faq2q => 'Where do the premiums come from?';

  @override
  String get faq2a =>
      'From India Post\'s official premium tables. The app never estimates a premium.';

  @override
  String get faq3q => 'Is there an income tax benefit?';

  @override
  String get faq3a =>
      'Premiums may qualify under Section 80C (old tax regime) and maturity may be exempt under Section 10(10D), subject to conditions. This is not tax advice.';

  @override
  String get faq4q => 'Is GST charged on premiums?';

  @override
  String get faq4a =>
      'No. GST on individual life insurance premiums is nil from 22 September 2025.';

  @override
  String get faq5q => 'Who can buy PLI and RPLI?';

  @override
  String get faq5a =>
      'PLI: government and semi-government employees, professionals, graduates, diploma holders and others listed by India Post. RPLI: rural residents and scheduled bank savings account holders.';

  @override
  String get aboutTitle => 'About';

  @override
  String get privacyTitle => 'Privacy';

  @override
  String get privacyBody =>
      'PLI Sahayak collects no data. Everything you enter or save stays on this phone. No account or internet connection is needed.';

  @override
  String get dataSourceTitle => 'Rate data';

  @override
  String dataSourceBody(String id, String date, String source) {
    return 'Rules $id, effective $date. Source: $source';
  }

  @override
  String get provisionalTitle => 'Rules still being confirmed';

  @override
  String get provisionalIntro =>
      'These rules are working assumptions until they are confirmed from official India Post circulars (shown in English):';

  @override
  String get checkUpdates => 'Check for rate updates';

  @override
  String updateInstalled(int version) {
    return 'Rate data updated to version $version.';
  }

  @override
  String get updateCurrent => 'Rate data is up to date.';

  @override
  String updateFailed(String error) {
    return 'Update failed; current rates kept. $error';
  }

  @override
  String get sampleDataNote =>
      'Premium tables are SAMPLE data, not official India Post figures.';

  @override
  String appVersion(String version) {
    return 'Version $version';
  }
}
