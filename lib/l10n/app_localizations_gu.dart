// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTitle => 'પીએલઆઈ સહાયક';

  @override
  String get tilePremium => 'પ્રીમિયમ';

  @override
  String get tileMaturity => 'પાકતી રકમ';

  @override
  String get tileCompare => 'સરખામણી';

  @override
  String get tileEligibility => 'પાત્રતા';

  @override
  String get tileMyPolicies => 'મારી પૉલિસીઓ';

  @override
  String get tileQuotation => 'ક્વોટેશન';

  @override
  String get comingSoon => 'ટૂંક સમયમાં';

  @override
  String get sampleDataBanner => 'નમૂના ડેટા – સત્તાવાર નથી';

  @override
  String ratesFooter(String financialYear) {
    return 'દરો નાણાકીય વર્ષ $financialYear • સ્રોત: ભારતીય ટપાલ';
  }

  @override
  String get bonusDisclaimer =>
      'બોનસ દરો દર વર્ષે જાહેર થાય છે અને ભવિષ્ય માટે ખાતરીપૂર્વક નથી. અંતિમ રકમ ભારતીય ટપાલ મુજબ.';

  @override
  String get independentDisclaimerTitle => 'શરૂ કરતાં પહેલાં';

  @override
  String get independentDisclaimer =>
      'આ એક સ્વતંત્ર કેલ્ક્યુલેટર છે, ભારતીય ટપાલની સત્તાવાર એપ નથી. બધી ગણતરી તમારા ફોન પર જ થાય છે; કોઈ ડેટા એકત્ર કરવામાં આવતો નથી.';

  @override
  String get understood => 'હું સમજ્યો/સમજી';

  @override
  String dataLoadError(String error) {
    return 'દર ડેટા લોડ થઈ શક્યો નહીં: $error';
  }

  @override
  String get maturityTitle => 'પાકતી રકમ અને બોનસ';

  @override
  String get eligibilityTitle => 'પાત્રતા તપાસ';

  @override
  String get premiumTitle => 'પ્રીમિયમ કેલ્ક્યુલેટર';

  @override
  String get schemePli => 'ટપાલ જીવન વીમો (PLI)';

  @override
  String get schemeRpli => 'ગ્રામીણ ટપાલ જીવન વીમો (RPLI)';

  @override
  String get planLabel => 'યોજના';

  @override
  String rulesPendingSuffix(String plan) {
    return '$plan (નિયમ બાકી)';
  }

  @override
  String get entryAgeLabel => 'પ્રવેશ ઉંમર';

  @override
  String get childAgeLabel => 'બાળકની ઉંમર';

  @override
  String get spouseAgeLabel => 'જીવનસાથીની ઉંમર';

  @override
  String ageYears(int age) {
    return '$age વર્ષ';
  }

  @override
  String get decrease => 'ઘટાડો';

  @override
  String get increase => 'વધારો';

  @override
  String get ageBasisNote =>
      'ઉંમર પૂર્ણ વર્ષોમાં દાખલ કરો. ભારતીય ટપાલનો ઉંમરનો નિયમ પુષ્ટ થયા પછી જન્મતારીખ પરથી ઉંમરની સુવિધા ઉમેરાશે.';

  @override
  String get sumAssuredLabel => 'વીમા રકમ (₹)';

  @override
  String get maturityAgeLabel => 'પાકતી ઉંમર';

  @override
  String get termLabel => 'પૉલિસી મુદત';

  @override
  String termYears(int years) {
    return '$years વર્ષ';
  }

  @override
  String get startDateLabel => 'પૉલિસી શરૂ થવાની તારીખ';

  @override
  String get resultMaturityValue => 'પાકતી રકમ';

  @override
  String get resultTotalBenefits => 'કુલ મળતા લાભ';

  @override
  String get sumAssuredRow => 'વીમા રકમ';

  @override
  String get termRow => 'મુદત';

  @override
  String bonusRateRow(String fy) {
    return 'બોનસ દર (ના.વ. $fy)';
  }

  @override
  String bonusRateValue(int rate) {
    return '₹1,000 દીઠ વાર્ષિક ₹$rate';
  }

  @override
  String get annualBonusRow => 'વાર્ષિક બોનસ';

  @override
  String totalBonusRow(int years) {
    return 'કુલ બોનસ ($years વર્ષ)';
  }

  @override
  String get terminalBonusRow => 'ટર્મિનલ બોનસ';

  @override
  String projectionNote(String fy) {
    return 'મુદતના દરેક વર્ષે ના.વ. $fyનો બોનસ દર ચાલુ રહેશે એવું માની લેવાયું છે.';
  }

  @override
  String get timelineTitle => 'જીવિત લાભ સમયપત્રક';

  @override
  String timelineYear(int year) {
    return 'વર્ષ $year';
  }

  @override
  String get timelineSurvival => 'જીવિત લાભ';

  @override
  String get timelineMaturity => 'પાકતી વખતે: બાકી વીમા રકમ + પૂરો બોનસ';

  @override
  String get timelineDeathNote =>
      'મુદત દરમિયાન મૃત્યુ થાય તો: અગાઉ ચૂકવેલા જીવિત લાભ બાદ કર્યા વિના પૂરી વીમા રકમ + બોનસ.';

  @override
  String get notAvailableTitle => 'હજુ ઉપલબ્ધ નથી';

  @override
  String get rulesPendingBody =>
      'આ યોજનાના નિયમો ભારતીય ટપાલના સત્તાવાર પરિપત્રમાંથી પુષ્ટ થયા પછી ગણતરી ઉમેરાશે.';

  @override
  String get premiumPendingBody =>
      'પ્રીમિયમ ભારતીય ટપાલના સત્તાવાર પ્રીમિયમ કોષ્ટકોમાંથી જ આવવું જોઈએ. સત્તાવાર કોષ્ટકો ઉમેરી ચકાસ્યા પછી આ કેલ્ક્યુલેટર શરૂ થશે — અંદાજિત પ્રીમિયમ બતાવાતું નથી.';

  @override
  String missingBonusRate(String fy) {
    return 'ના.વ. $fy માટે કોઈ જાહેર બોનસ દર નથી.';
  }

  @override
  String vEntryAge(String plan, int min, int max, int age) {
    return '$plan માટે પ્રવેશ ઉંમર $min–$max છે. તમારી ઉંમર: $age';
  }

  @override
  String vChildAge(int min, int max, int age) {
    return 'બાળકની ઉંમર $min–$max હોવી જોઈએ. દાખલ: $age';
  }

  @override
  String vSpouseAge(int min, int max, int age) {
    return 'જીવનસાથીની ઉંમર $min–$max હોવી જોઈએ. દાખલ: $age';
  }

  @override
  String vSaMin(String min, String sa) {
    return 'ન્યૂનતમ વીમા રકમ $min છે. દાખલ: $sa';
  }

  @override
  String vSaMax(String max, String sa) {
    return 'મહત્તમ વીમા રકમ $max છે (આ યોજનાની તમારી બધી પૉલિસીઓ મળીને). દાખલ: $sa';
  }

  @override
  String vSaMultiple(String multiple) {
    return 'વીમા રકમ $multipleના ગુણાંકમાં હોવી જોઈએ';
  }

  @override
  String vMaturityNotOffered(int value, String allowed) {
    return 'પાકતી ઉંમર $value ઉપલબ્ધ નથી. આમાંથી પસંદ કરો: $allowed';
  }

  @override
  String vCeasingNotOffered(int value, String allowed) {
    return 'પ્રીમિયમ ભરવાની ઉંમર $value ઉપલબ્ધ નથી. આમાંથી પસંદ કરો: $allowed';
  }

  @override
  String vTermNotOffered(int value, String allowed) {
    return '$value વર્ષની મુદત ઉપલબ્ધ નથી. આમાંથી પસંદ કરો: $allowed';
  }

  @override
  String vNotAfterEntry(int value, int age) {
    return 'પાકતી ઉંમર $value પ્રવેશ ઉંમર ($age) કરતાં વધુ હોવી જોઈએ.';
  }

  @override
  String vTermRange(int min, int max, int term) {
    return 'મુદત $min–$max વર્ષ હોવી જોઈએ. દાખલ: $term';
  }

  @override
  String vParentAge(int max, int age) {
    return 'માતા/પિતાની ઉંમર $max કે ઓછી હોવી જોઈએ. દાખલ: $age';
  }

  @override
  String vTooManyChildren(int max) {
    return 'વધુમાં વધુ $max બાળકોનો વીમો થઈ શકે.';
  }

  @override
  String vChildSaCap(String cap, String sa) {
    return 'આ બાળક માટે મહત્તમ વીમા રકમ $cap છે. દાખલ: $sa';
  }

  @override
  String get vMissing => 'કૃપા કરી બધી વિગતો ભરો.';

  @override
  String get eligibilityIntro =>
      'વ્યક્તિને લાગુ પડતા બધા વિકલ્પો પસંદ કરો, પછી ઉંમર દાખલ કરો.';

  @override
  String get groupsPli => 'PLI — આમાંથી કોઈ પણ એક';

  @override
  String get groupsRpli => 'RPLI — આમાંથી કોઈ પણ એક';

  @override
  String get group_central_state_govt => 'કેન્દ્ર / રાજ્ય સરકારી કર્મચારી';

  @override
  String get group_defence_paramilitary => 'સંરક્ષણ / અર્ધલશ્કરી દળ';

  @override
  String get group_psu => 'જાહેર ક્ષેત્રનું સાહસ';

  @override
  String get group_banks => 'બેંક કર્મચારી';

  @override
  String get group_local_bodies => 'સ્થાનિક સ્વરાજ્ય સંસ્થા કર્મચારી';

  @override
  String get group_educational_institutions =>
      'શૈક્ષણિક સંસ્થા (માન્યતાપ્રાપ્ત ખાનગી સહિત)';

  @override
  String get group_listed_companies => 'લિસ્ટેડ કંપની કર્મચારી';

  @override
  String get group_professionals =>
      'વ્યાવસાયિક (ડૉક્ટર, એન્જિનિયર, સીએ, વકીલ…)';

  @override
  String get group_graduates_diploma_holders => 'સ્નાતક અથવા ડિપ્લોમા ધારક';

  @override
  String get group_rural_resident => 'ગ્રામ્ય વિસ્તારના રહેવાસી';

  @override
  String get group_scheduled_bank_savings_account_holder =>
      'અનુસૂચિત બેંકમાં બચત ખાતાધારક';

  @override
  String get ageLabel => 'ઉંમર';

  @override
  String get eligibleFor => 'પાત્ર છો';

  @override
  String plansAtAge(int age) {
    return '$age વર્ષની ઉંમરે ઉપલબ્ધ યોજનાઓ';
  }

  @override
  String get childPlansTitle => 'બાળકોની પૉલિસીઓ (તમારાં બાળકો માટે)';

  @override
  String get selectGroupPrompt =>
      'પાત્ર યોજનાઓ જોવા ઉપર ઓછામાં ઓછો એક વિકલ્પ પસંદ કરો.';

  @override
  String noPlansAtAge(int age) {
    return '$age વર્ષની ઉંમરે કોઈ યોજનામાં પ્રવેશ નથી.';
  }

  @override
  String get eligibilityNote =>
      'અંતિમ સ્વીકૃતિ ભારતીય ટપાલની તબીબી તપાસ અને દસ્તાવેજોને આધીન છે.';

  @override
  String get languageLabel => 'ભાષા';

  @override
  String get systemLanguage => 'ઉપકરણની ભાષા';

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
