// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTitle => 'PLI & RPLI કેલ્ક્યુલેટર';

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
  String get tileAfford => 'કેટલું શક્ય';

  @override
  String get tileTools => 'પૉલિસી સાધનો';

  @override
  String get tilePlans => 'યોજનાઓ';

  @override
  String get tileAbout => 'વિશે';

  @override
  String get dobLabel => 'જન્મતારીખ';

  @override
  String get useAgeInstead => 'તેના બદલે ઉંમર દાખલ કરો';

  @override
  String get useDobInstead => 'જન્મતારીખ દાખલ કરો';

  @override
  String ageFromDobNearest(int age) {
    return 'શરૂઆતની તારીખે પ્રવેશ ઉંમર: $age (નજીકના જન્મદિવસ મુજબ ઉંમર)';
  }

  @override
  String ageFromDobLast(int age) {
    return 'શરૂઆતની તારીખે પ્રવેશ ઉંમર: $age (છેલ્લા જન્મદિવસ મુજબ ઉંમર)';
  }

  @override
  String get premiumCeasingAgeLabel => 'પ્રીમિયમ ભરવાની ઉંમર';

  @override
  String get frequencyLabel => 'ચુકવણી આવર્તન';

  @override
  String get freqMonthly => 'માસિક';

  @override
  String get freqQuarterly => 'ત્રિમાસિક';

  @override
  String get freqHalfYearly => 'છ માસિક';

  @override
  String get freqYearly => 'વાર્ષિક';

  @override
  String get premiumPerInstalment => 'હપ્તા દીઠ પ્રીમિયમ';

  @override
  String get tablePremiumRow => 'કોષ્ટક પ્રીમિયમ';

  @override
  String get saRebateRow => 'વીમા રકમ રાહત';

  @override
  String totalPremiumRow(int count) {
    return 'કુલ પ્રીમિયમ ($count હપ્તા)';
  }

  @override
  String get payingTermRow => 'પ્રીમિયમ ભરવાની મુદત';

  @override
  String get lifeCoverRow => 'જીવન સુરક્ષા';

  @override
  String get allFrequenciesTitle => 'બધા ચુકવણી આવર્તન';

  @override
  String get notInTable => 'સત્તાવાર કોષ્ટકમાં ઉપલબ્ધ નથી';

  @override
  String get noTableForPlan => 'આ યોજનાનું પ્રીમિયમ કોષ્ટક હજુ ઉમેરાયું નથી.';

  @override
  String get illustrationTitle => 'વર્ષવાર લાભ વિગત';

  @override
  String get colYear => 'વર્ષ';

  @override
  String get colPremiumsPaid => 'ભરેલું પ્રીમિયમ';

  @override
  String get colBonus => 'બોનસ';

  @override
  String get colLifeCover => 'જીવન સુરક્ષા';

  @override
  String get makeQuotation => 'ક્વોટેશન બનાવો';

  @override
  String get gstNote =>
      'જીએસટી: 22 સપ્ટેમ્બર 2025 કે પછી ભરેલા વ્યક્તિગત જીવન વીમા પ્રીમિયમ પર શૂન્ય.';

  @override
  String get chartTitle => 'ભરેલું પ્રીમિયમ સામે લાભ';

  @override
  String get chartPaid => 'કુલ પ્રીમિયમ';

  @override
  String get chartReceived => 'કુલ લાભ';

  @override
  String get showTable => 'વર્ષવાર કોષ્ટક બતાવો';

  @override
  String get hideTable => 'વર્ષવાર કોષ્ટક છુપાવો';

  @override
  String get reverseTitle => 'મને કેટલું પરવડે?';

  @override
  String get budgetLabel => 'હપ્તા દીઠ બજેટ (₹)';

  @override
  String get reverseIntro =>
      'તમે કેટલું ભરી શકો તે દાખલ કરો. દરેક યોજના વિકલ્પ એ રકમમાં મહત્તમ વીમા રકમ બતાવે છે.';

  @override
  String optMaturityAge(int age) {
    return '$age વર્ષે પાકતી';
  }

  @override
  String optCeasingAge(int age) {
    return '$age વર્ષ સુધી પ્રીમિયમ';
  }

  @override
  String optTerm(int years) {
    return '$years વર્ષની મુદત';
  }

  @override
  String get reverseNone => 'આ ઉંમરે આ બજેટમાં કોઈ યોજના બેસતી નથી.';

  @override
  String get saShort => 'વીમા રકમ';

  @override
  String get premiumShort => 'પ્રીમિયમ';

  @override
  String get compareTitle => 'યોજનાઓની સરખામણી';

  @override
  String optionN(int n) {
    return 'વિકલ્પ $n';
  }

  @override
  String get addOption => 'વિકલ્પ ઉમેરો';

  @override
  String get removeOption => 'વિકલ્પ દૂર કરો';

  @override
  String get maturityShort => 'પાકતી / લાભ';

  @override
  String get totalPaidShort => 'કુલ ચુકવણી';

  @override
  String get lifeCoverShort => 'જીવન સુરક્ષા';

  @override
  String get comparisonTitle => 'સરખામણી';

  @override
  String get toolsTitle => 'પૉલિસી સાધનો';

  @override
  String get tabLoan => 'લોન';

  @override
  String get tabPaidUp => 'પેઇડ-અપ';

  @override
  String get tabRevival => 'પુનઃજીવિત';

  @override
  String get tabAdvance => 'અગાઉથી';

  @override
  String get yearsInForceLabel => 'પૉલિસી કેટલા વર્ષથી ચાલુ છે';

  @override
  String get loanAmountLabel => 'લોનની રકમ (₹)';

  @override
  String get loanMonthsLabel => 'ચુકવણી સુધીના મહિના';

  @override
  String monthsValue(int months) {
    return '$months મહિના';
  }

  @override
  String get loanInterestRow => 'વ્યાજ';

  @override
  String get loanTotalRow => 'કુલ ચુકવવાનું';

  @override
  String loanRateNote(String rate) {
    return 'વાર્ષિક $rate% વ્યાજ, છ માસિક ચક્રવૃદ્ધિ.';
  }

  @override
  String loanAvailableAfter(int years) {
    return '$years વર્ષ પછી લોન ઉપલબ્ધ.';
  }

  @override
  String get loanNotOffered => 'આ યોજનામાં લોન સુવિધા નથી.';

  @override
  String get loanEligibleYes => 'લોન માટે પાત્ર';

  @override
  String get loanEligibleNo => 'હજુ લોન માટે પાત્ર નથી';

  @override
  String get loanAmountNote =>
      'મહત્તમ લોન સરેન્ડર મૂલ્ય પર આધાર રાખે છે, જેની ગણતરી ભારતીય ટપાલ કરે છે.';

  @override
  String get premiumsPaidLabel => 'ભરેલા હપ્તા';

  @override
  String get premiumsPayableLabel => 'કુલ ભરવાપાત્ર હપ્તા';

  @override
  String get paidUpSaRow => 'પેઇડ-અપ વીમા રકમ';

  @override
  String get paidUpNote =>
      'અંદાજિત. બોનસ: પોલિસી 5 વર્ષથી ઓછી જૂની હોય તો નહીં; 5 વર્ષ પછી પેઇડ-અપ રકમ પર પ્રમાણસર બોનસ, ઇન્ડિયા પોસ્ટ મુજબ. સરેન્ડર મૂલ્ય માટે અધિકૃત સરેન્ડર ફેક્ટર જોઈએ, તેની ગણતરી કરી નથી.';

  @override
  String paidUpNotEligible(int years) {
    return 'પૉલિસી $years વર્ષ ચાલુ રહ્યા પછી જ પેઇડ-અપ થઈ શકે.';
  }

  @override
  String get paidUpInvalid =>
      'ભરેલા હપ્તા ભરવાપાત્ર હપ્તા કરતાં વધુ ન હોઈ શકે.';

  @override
  String get instalmentLabel => 'હપ્તા દીઠ પ્રીમિયમ (₹)';

  @override
  String get firstUnpaidLabel => 'પહેલા બાકી હપ્તાની તારીખ';

  @override
  String get payDateLabel => 'ચુકવણીની તારીખ';

  @override
  String get missedRow => 'બાકી હપ્તા';

  @override
  String get arrearsRow => 'બાકી રકમ';

  @override
  String get defaultFeeRow => 'વિલંબ ફી';

  @override
  String get totalPayableRow => 'કુલ ભરવાપાત્ર';

  @override
  String revivalNote(String percent) {
    return 'વિલંબના દરેક મહિને હપ્તાના $percent% વિલંબ ફી. લાંબા સમય પછી પુનઃજીવિત કરવા તબીબી પ્રમાણપત્ર જોઈએ.';
  }

  @override
  String revivalLine(String date, int months, String fee) {
    return 'બાકી $date • $months મહિના મોડું • ફી $fee';
  }

  @override
  String get nothingDue => 'એ તારીખે કંઈ બાકી નથી.';

  @override
  String get monthsAdvanceLabel => 'અગાઉથી ભરેલા મહિના';

  @override
  String rebateRow(String percent) {
    return 'રાહત ($percent%)';
  }

  @override
  String get amountDueRow => 'બાકી રકમ';

  @override
  String get payableRow => 'તમે ભરશો';

  @override
  String get advanceNote =>
      'બતાવેલી રાહત દર ડેટાની અગાઉથી ચુકવણી રાહત મુજબ છે; પ્રીમિયમ અગાઉથી ભરો ત્યારે લાગુ.';

  @override
  String get policiesTitle => 'મારી પૉલિસીઓ';

  @override
  String get noPolicies => 'હજુ કોઈ પૉલિસી સાચવી નથી. ઉમેરવા + દબાવો.';

  @override
  String get addPolicy => 'પૉલિસી ઉમેરો';

  @override
  String get editPolicy => 'પૉલિસી સુધારો';

  @override
  String get holderNameLabel => 'પૉલિસીધારકનું નામ';

  @override
  String get policyNumberLabel => 'પૉલિસી નંબર';

  @override
  String get premiumAmountLabel => 'હપ્તા દીઠ પ્રીમિયમ (₹, રસીદ મુજબ)';

  @override
  String get save => 'સાચવો';

  @override
  String get delete => 'કાઢી નાખો';

  @override
  String get deleteConfirm => 'આ પૉલિસી કાઢી નાખવી?';

  @override
  String get cancel => 'રદ કરો';

  @override
  String nextDue(String date) {
    return 'આગલો હપ્તો: $date';
  }

  @override
  String get noMoreDues => 'બધું પ્રીમિયમ ભરાઈ ગયું';

  @override
  String get remindersLabel => 'દરેક હપ્તાના 3 દિવસ પહેલાં યાદ અપાવો';

  @override
  String get remindersDenied => 'આ એપ માટે સૂચનાઓ બંધ છે.';

  @override
  String get accruedBonusRow => 'અત્યાર સુધી જમા બોનસ';

  @override
  String bonusMissingYears(String years) {
    return 'ના.વ. $years ના બોનસ દરો એપ ડેટામાં નથી; કુલમાં તે વર્ષો સામેલ નથી.';
  }

  @override
  String maturityOn(String date) {
    return '$date ના રોજ પાકતી';
  }

  @override
  String get upcomingDues => 'આગામી હપ્તાની તારીખો';

  @override
  String get yearsInForceRow => 'ચાલુ વર્ષો';

  @override
  String get reminderTitle => 'પીએલઆઈ પ્રીમિયમ બાકી';

  @override
  String reminderBody(String name, String amount, String date, String number) {
    return '$name: $amount $date ના રોજ બાકી (પૉલિસી $number)';
  }

  @override
  String get savedLocally => 'ફક્ત આ ફોન પર સાચવ્યું.';

  @override
  String get requiredField => 'જરૂરી';

  @override
  String get projectedMaturityRow => 'અંદાજિત પાકતી રકમ';

  @override
  String get quotationTitle => 'ક્વોટેશન';

  @override
  String get customerNameLabel => 'ગ્રાહકનું નામ';

  @override
  String get agentNameLabel => 'તૈયાર કરનાર (વૈકલ્પિક)';

  @override
  String get sharePdf => 'PDF શેર કરો';

  @override
  String get shareImage => 'છબી શેર કરો';

  @override
  String get quotationHeading => 'પ્રીમિયમ ક્વોટેશન';

  @override
  String preparedOn(String date) {
    return '$date ના રોજ તૈયાર';
  }

  @override
  String quotationFor(String name) {
    return 'માટે: $name';
  }

  @override
  String preparedBy(String name) {
    return 'તૈયાર કરનાર: $name';
  }

  @override
  String get quotationInvalid => 'ક્વોટેશન બનાવવા યોજનાની વિગતો પૂર્ણ કરો.';

  @override
  String get planDetailsTitle => 'યોજનાની વિગતો';

  @override
  String get planInfoTitle => 'યોજના માહિતી';

  @override
  String entryAgeInfo(int min, int max) {
    return 'પ્રવેશ ઉંમર: $min–$max';
  }

  @override
  String maturityAgesInfo(String ages) {
    return 'પાકતી ઉંમર: $ages';
  }

  @override
  String ceasingAgesInfo(String ages, int age) {
    return 'પ્રીમિયમ ભરવાની ઉંમર: $ages; $age વર્ષે પાકતી';
  }

  @override
  String termsInfo(String terms) {
    return 'મુદત: $terms વર્ષ';
  }

  @override
  String survivalInfo(String list) {
    return 'મની બેક: $list';
  }

  @override
  String survivalItem(int percent, int year) {
    return '$yearમા વર્ષે $percent%';
  }

  @override
  String loanInfo(int years) {
    return '$years વર્ષ પછી લોન';
  }

  @override
  String get noLoanInfo => 'લોન નથી';

  @override
  String surrenderInfo(int years) {
    return '$years વર્ષ પછી સરેન્ડર';
  }

  @override
  String get noSurrenderInfo => 'સરેન્ડર નથી';

  @override
  String bonusInfo(String fy, int rate) {
    return 'ના.વ. $fy બોનસ: ₹1,000 દીઠ વાર્ષિક ₹$rate';
  }

  @override
  String saLimitInfo(String min, String max) {
    return 'વીમા રકમ: $min – $max';
  }

  @override
  String jointInfo(int min, int max, int tmin, int tmax) {
    return 'દરેક જીવનસાથીની ઉંમર $min–$max; મુદત $tmin–$tmax વર્ષ';
  }

  @override
  String childInfo(int min, int max, int parent, int children, String cap) {
    return 'બાળકની ઉંમર $min–$max; માતા/પિતાની ઉંમર $parent સુધી; વધુમાં વધુ $children બાળકો; વીમા રકમ $cap સુધી';
  }

  @override
  String conversionInfo(int years) {
    return '$years વર્ષ પછી એન્ડોમેન્ટ વીમામાં ફેરવી શકાય';
  }

  @override
  String get faqTitle => 'સામાન્ય પ્રશ્નો';

  @override
  String get faq1q => 'શું બોનસની ખાતરી છે?';

  @override
  String get faq1a =>
      'ના. ભારતીય ટપાલ દર વર્ષે બોનસ દર જાહેર કરે છે. અહીંના અંદાજ દરેક ભાવિ વર્ષ માટે તાજેતરનો જાહેર દર માને છે.';

  @override
  String get faq2q => 'પ્રીમિયમ ક્યાંથી આવે છે?';

  @override
  String get faq2a =>
      'ભારતીય ટપાલના સત્તાવાર પ્રીમિયમ કોષ્ટકોમાંથી. એપ ક્યારેય પ્રીમિયમનો અંદાજ લગાવતી નથી.';

  @override
  String get faq3q => 'શું આવકવેરા લાભ મળે છે?';

  @override
  String get faq3a =>
      'પ્રીમિયમ કલમ 80C (જૂની કર પદ્ધતિ) હેઠળ પાત્ર થઈ શકે અને પાકતી રકમ કલમ 10(10D) હેઠળ શરતોને આધીન કરમુક્ત થઈ શકે. આ કર સલાહ નથી.';

  @override
  String get faq4q => 'શું પ્રીમિયમ પર જીએસટી લાગે છે?';

  @override
  String get faq4a =>
      'ના. 22 સપ્ટેમ્બર 2025 થી વ્યક્તિગત જીવન વીમા પ્રીમિયમ પર જીએસટી શૂન્ય છે.';

  @override
  String get faq5q => 'PLI અને RPLI કોણ લઈ શકે?';

  @override
  String get faq5a =>
      'PLI: સરકારી અને અર્ધ-સરકારી કર્મચારીઓ, વ્યાવસાયિકો, સ્નાતકો, ડિપ્લોમા ધારકો અને ભારતીય ટપાલે સૂચિબદ્ધ કરેલા અન્ય. RPLI: ગ્રામ્ય રહેવાસીઓ અને અનુસૂચિત બેંક બચત ખાતાધારકો.';

  @override
  String get aboutTitle => 'વિશે';

  @override
  String get privacyTitle => 'ગોપનીયતા';

  @override
  String get privacyBody =>
      'PLI & RPLI કેલ્ક્યુલેટર કોઈ ડેટા એકત્ર કરતું નથી. તમે દાખલ કરો કે સાચવો તે બધું આ ફોન પર જ રહે છે. ખાતું કે ઇન્ટરનેટ જરૂરી નથી.';

  @override
  String get dataSourceTitle => 'દર ડેટા';

  @override
  String dataSourceBody(String id, String date, String source) {
    return 'નિયમો $id, $date થી અમલી. સ્રોત: $source';
  }

  @override
  String get provisionalTitle => 'હજુ પુષ્ટિ બાકી નિયમો';

  @override
  String get provisionalIntro =>
      'ભારતીય ટપાલના સત્તાવાર પરિપત્રોથી પુષ્ટિ ન થાય ત્યાં સુધી આ નિયમો કાર્યકારી ધારણાઓ છે (અંગ્રેજીમાં):';

  @override
  String get checkUpdates => 'દર અપડેટ તપાસો';

  @override
  String updateInstalled(int version) {
    return 'દર ડેટા આવૃત્તિ $version માં અપડેટ થયો.';
  }

  @override
  String get updateCurrent => 'દર ડેટા અદ્યતન છે.';

  @override
  String updateFailed(String error) {
    return 'અપડેટ નિષ્ફળ; હાલના દરો યથાવત. $error';
  }

  @override
  String get sampleDataNote =>
      'પ્રીમિયમ કોષ્ટકો નમૂના ડેટા છે, ભારતીય ટપાલના સત્તાવાર આંકડા નથી.';

  @override
  String appVersion(String version) {
    return 'આવૃત્તિ $version';
  }

  @override
  String get homeTagline => 'પ્રીમિયમ, બોનસ અને પાકતી રકમ — ઑફલાઇન પણ';

  @override
  String get quickPremiumTitle => 'પ્રીમિયમ ગણો';

  @override
  String get quickPremiumBody => 'કોઈ પણ યોજના, ઉંમર અને વીમા રકમ — બધા આવર્તન';

  @override
  String get sectionCalculators => 'કેલ્ક્યુલેટર';

  @override
  String get sectionServicing => 'પૉલિસી સેવાઓ';

  @override
  String get sectionLearn => 'જાણો';

  @override
  String get descPremium => 'દરેક આવર્તનનું પ્રીમિયમ';

  @override
  String get descMaturity => 'બોનસ અને પાકતી રકમ';

  @override
  String get descCompare => 'યોજનાઓ બાજુ-બાજુમાં';

  @override
  String get descAfford => 'તમારા બજેટમાં શ્રેષ્ઠ સુરક્ષા';

  @override
  String get descPolicies => 'સાચવેલી પૉલિસીઓ અને બાકી તારીખો';

  @override
  String get descTools => 'લોન, પુનઃજીવિત, પેઇડ-અપ';

  @override
  String get descQuotation => 'PDF ક્વોટેશન શેર કરો';

  @override
  String get descEligibility => 'PLI કે RPLI કોણ લઈ શકે';

  @override
  String get descPlans => 'યોજના નિયમો અને પ્રશ્નો';

  @override
  String get descAbout => 'ગોપનીયતા અને દર ડેટા';

  @override
  String get sectionPersonTitle => 'પૉલિસીધારક';

  @override
  String get sectionCoverTitle => 'સુરક્ષા અને ચુકવણી';

  @override
  String get tileForms => 'ફોર્મ';

  @override
  String get descForms => 'ફોર્મ, યાદીઓ, પત્રો';

  @override
  String get formsTitle => 'ફોર્મ અને પત્રો';

  @override
  String get formsIntro =>
      'દરેક PLI / RPLI વિનંતી માટે શું જોઈએ, ફોર્મ ક્યાં મળે, અને તૈયાર વિનંતી પત્રો.';

  @override
  String get formsVerifyNote =>
      'દસ્તાવેજોની યાદી માર્ગદર્શક છે અને બદલાઈ શકે. જમા કરતાં પહેલાં તમારી ટપાલ કચેરીમાં ખાતરી કરો.';

  @override
  String get whereToGetTitle => 'ફોર્મ ક્યાં મળે';

  @override
  String get whereToGetBody =>
      'કોઈ પણ ટપાલ કચેરી કે CPC પર મફત, અથવા ભારતીય ટપાલ PLI વેબસાઇટ પરથી ડાઉનલોડ કરો.';

  @override
  String get documentsTitle => 'તૈયાર રાખવાના દસ્તાવેજો';

  @override
  String get openOfficialForm => 'સત્તાવાર ફોર્મ ખોલો';

  @override
  String get getFromIndiaPost => 'ભારતીય ટપાલ પાસેથી ફોર્મ મેળવો';

  @override
  String get detailsSheetTitle => 'પૉલિસી વિગત પત્રક';

  @override
  String get detailsSheetIntro =>
      'સત્તાવાર ફોર્મમાં લખવા માટે તમારી સાચવેલી પૉલિસીની વિગતો એક જગ્યાએ.';

  @override
  String get writeLetterTitle => 'વિનંતી પત્ર લખો';

  @override
  String get writeLetterIntro =>
      'તમારી સાચવેલી પૉલિસીમાંથી ભરેલો, પોસ્ટમાસ્ટર માટે તૈયાર પત્ર.';

  @override
  String get choosePolicy => 'સાચવેલી પૉલિસી';

  @override
  String get noSavedPolicies => 'પહેલાં મારી પૉલિસીઓમાં એક પૉલિસી સાચવો.';

  @override
  String get toOfficeLabel => 'પ્રતિ (ટપાલ કચેરી / CPC)';

  @override
  String get yourAddressLabel => 'તમારું સરનામું';

  @override
  String get phoneLabel => 'ફોન';

  @override
  String get placeLabel => 'સ્થળ';

  @override
  String get nomineeNameLabel => 'નવા નોમિનીનું નામ';

  @override
  String get nomineeRelationLabel => 'સંબંધ';

  @override
  String get nomineeAgeLabel => 'નોમિનીની ઉંમર';

  @override
  String get newAddressLabel => 'નવું સરનામું';

  @override
  String get bondLost => 'ખોવાયું';

  @override
  String get bondDamaged => 'નુકસાન પામ્યું';

  @override
  String get lapsedFromLabel => 'પ્રીમિયમ બાકી ક્યારથી';

  @override
  String get shareAsText => 'લખાણ તરીકે શેર કરો';

  @override
  String get copyText => 'કૉપિ કરો';

  @override
  String get copied => 'કૉપિ થયું';

  @override
  String get letterEnglishNote =>
      'પત્રો અંગ્રેજીમાં છે — ભારતીય ટપાલ પત્રવ્યવહારની સામાન્ય ભાષા. જમા કરતાં પહેલાં સહી કરો.';

  @override
  String get formsOfficialNote =>
      'આ એપ ભારતીય ટપાલ નથી. નિયત ફોર્મ હોય ત્યાં હંમેશા ભારતીય ટપાલનું જ ફોર્મ જમા કરો.';

  @override
  String get svc_proposal => 'નવી પૉલિસી દરખાસ્ત';

  @override
  String get svcDesc_proposal => 'નવી PLI કે RPLI પૉલિસી માટે અરજી';

  @override
  String get svc_maturity => 'પાકતી રકમનો દાવો';

  @override
  String get svcDesc_maturity => 'પૉલિસી પાકે ત્યારે રકમનો દાવો';

  @override
  String get svc_survival => 'જીવિત લાભ દાવો';

  @override
  String get svcDesc_survival => 'મની-બેક હપ્તા (સુમંગલ, ગ્રામ પ્રિયા)';

  @override
  String get svc_death => 'મૃત્યુ દાવો';

  @override
  String get svcDesc_death => 'નોમિની કે કાનૂની વારસદાર દ્વારા દાવો';

  @override
  String get svc_loan => 'પૉલિસી લોન';

  @override
  String get svcDesc_loan => 'તમારી પૉલિસી પર લોન લો';

  @override
  String get svc_surrender => 'સરેન્ડર';

  @override
  String get svcDesc_surrender => 'સરેન્ડર મૂલ્ય માટે પૉલિસી વહેલી બંધ કરો';

  @override
  String get svc_revival => 'પુનઃજીવિત';

  @override
  String get svcDesc_revival => 'બંધ પડેલી પૉલિસી ફરી શરૂ કરો';

  @override
  String get svc_nomination => 'નોમિનેશન ફેરફાર';

  @override
  String get svcDesc_nomination => 'નોમિની ઉમેરો કે બદલો';

  @override
  String get svc_address => 'સરનામું ફેરફાર';

  @override
  String get svcDesc_address => 'પૉલિસીમાં તમારું સરનામું અપડેટ કરો';

  @override
  String get svc_duplicate => 'ડુપ્લિકેટ પૉલિસી બોન્ડ';

  @override
  String get svcDesc_duplicate => 'ખોવાયેલો કે નુકસાન પામેલો બોન્ડ બદલો';

  @override
  String get svc_assignment => 'હક્ક તબદીલી';

  @override
  String get svcDesc_assignment => 'પૉલિસી હક્કો તબદીલ કરો, દા.ત. બેંકને';

  @override
  String get svc_conversion => 'રૂપાંતર (સુવિધા)';

  @override
  String get svcDesc_conversion => 'આજીવન વીમાને એન્ડોમેન્ટમાં ફેરવો';

  @override
  String get doc_form => 'નિયત ફોર્મ, ભરેલું અને સહી કરેલું';

  @override
  String get doc_policyBond => 'મૂળ પૉલિસી બોન્ડ (અથવા ePLI બોન્ડ)';

  @override
  String get doc_receiptBook => 'પ્રીમિયમ રસીદ બુક કે રસીદો';

  @override
  String get doc_idProof => 'ઓળખનો પુરાવો (આધાર, પાન વગેરે)';

  @override
  String get doc_addressProof => 'સરનામાનો પુરાવો';

  @override
  String get doc_ageProof => 'ઉંમરનો પુરાવો';

  @override
  String get doc_bankDetails => 'બેંક પાસબુક કે રદ કરેલો ચેક';

  @override
  String get doc_photo => 'પાસપોર્ટ સાઇઝ ફોટો';

  @override
  String get doc_deathCertificate => 'મૃત્યુ પ્રમાણપત્ર';

  @override
  String get doc_claimantId => 'દાવેદારની ઓળખ અને સંબંધનો પુરાવો';

  @override
  String get doc_medical => 'તબીબી પ્રમાણપત્ર / આરોગ્ય ઘોષણા (માગે તો)';

  @override
  String get doc_eligibility =>
      'પાત્રતાનો પુરાવો (નોકરી, ડિગ્રી કે ગ્રામ્ય નિવાસ)';

  @override
  String get doc_nomineeDetails => 'નોમિનીનું નામ, ઉંમર અને સંબંધ';

  @override
  String get doc_indemnity => 'ક્ષતિપૂર્તિ બોન્ડ (માગે તો)';

  @override
  String get customerPhoneLabel => 'ગ્રાહકનો મોબાઇલ (વૉટ્સએપ યાદી માટે)';

  @override
  String get exportBackup => 'પૉલિસીઓનો બેકઅપ';

  @override
  String get importBackup => 'બેકઅપમાંથી પુનઃસ્થાપિત કરો';

  @override
  String importConfirm(int count) {
    return 'આ બેકઅપમાંથી $count પૉલિસીઓ પુનઃસ્થાપિત કરવી? સમાન ID વાળી સાચવેલી પૉલિસીઓ બદલાશે.';
  }

  @override
  String importDone(int count) {
    return '$count પૉલિસીઓ પુનઃસ્થાપિત થઈ.';
  }

  @override
  String get importFailed => 'આ PLI & RPLI કેલ્ક્યુલેટર બેકઅપ ફાઇલ નથી.';

  @override
  String get backupNote =>
      'બેકઅપ ફાઇલમાં તમારી પૉલિસીની વિગતો છે. તેને તમારી વૉટ્સએપ ચૅટ કે ગૂગલ ડ્રાઇવ જેવી સુરક્ષિત જગ્યાએ રાખો.';

  @override
  String get restore => 'પુનઃસ્થાપિત કરો';

  @override
  String get tileDues => 'બાકી';

  @override
  String get descDues => 'આ મહિને બાકી પ્રીમિયમ';

  @override
  String get duesTitle => 'પ્રીમિયમ બાકી';

  @override
  String get duesTotal => 'કુલ બાકી';

  @override
  String duesCount(int count) {
    return '$count પ્રીમિયમ';
  }

  @override
  String get noDuesInMonth => 'આ મહિને કોઈ પ્રીમિયમ બાકી નથી.';

  @override
  String get remindOnWhatsApp => 'યાદ અપાવો';

  @override
  String dueReminderMessage(
    String name,
    String amount,
    String number,
    String date,
  ) {
    return 'પ્રિય $name, પૉલિસી $number નું $amount પ્રીમિયમ $date ના રોજ બાકી છે. કૃપા કરી તમારી ટપાલ કચેરીમાં ભરો.';
  }

  @override
  String get tileProfile => 'એજન્ટ પ્રોફાઇલ';

  @override
  String get descProfile => 'ક્વોટેશન પર તમારું નામ અને લોગો';

  @override
  String get profileTitle => 'એજન્ટ પ્રોફાઇલ';

  @override
  String get agentNameField => 'તમારું નામ';

  @override
  String get agentPhoneField => 'તમારો ફોન';

  @override
  String get agentCodeField => 'એજન્ટ ID / કચેરી (વૈકલ્પિક)';

  @override
  String get chooseLogo => 'ફોટો કે લોગો પસંદ કરો';

  @override
  String get removeLogo => 'દૂર કરો';

  @override
  String get profileNote =>
      'ક્વોટેશન અને યાદી સંદેશાઓમાં દેખાશે. ફક્ત આ ફોન પર સાચવેલ.';

  @override
  String get profileSaved => 'પ્રોફાઇલ સાચવી.';

  @override
  String get searchPolicies => 'નામ, પોલિસી નં. અથવા મોબાઇલ શોધો';

  @override
  String get sortLabel => 'ક્રમ';

  @override
  String get sortName => 'નામ';

  @override
  String get sortNextDue => 'આગલી બાકી તારીખ';

  @override
  String get sortSumAssured => 'વીમા રકમ';

  @override
  String noSearchResults(String query) {
    return '“$query” સાથે મેળ ખાતી કોઈ પોલિસી નથી.';
  }

  @override
  String get filterAll => 'બધી';

  @override
  String get filterPending => 'બાકી';

  @override
  String get filterCollected => 'વસૂલ';

  @override
  String get markCollected => 'વસૂલ તરીકે ચિહ્નિત કરો';

  @override
  String get markNotCollected => 'વસૂલ નથી તરીકે ચિહ્નિત કરો';

  @override
  String get duesPendingTotal => 'હજી વસૂલવાનું';

  @override
  String duesCollectedOf(int collected, int total) {
    return '$total માંથી $collected વસૂલ';
  }

  @override
  String get duesMonthTotal => 'મહિનાનો કુલ';

  @override
  String get collectedNote =>
      'વસૂલીના ચિહ્નો તમારો પોતાનો રેકોર્ડ છે. તે ઇન્ડિયા પોસ્ટની સિસ્ટમમાં ચુકવણી તપાસતા નથી.';

  @override
  String get noDuesInFilter => 'આ યાદીમાં કંઈ નથી.';

  @override
  String get openFormLink => 'ફોર્મ ડાઉનલોડ કરો';

  @override
  String get shareFormLink => 'ફોર્મ લિંક શેર કરો';

  @override
  String formLinkMessage(String service, String url) {
    return '$service ફોર્મ (ઇન્ડિયા પોસ્ટ): $url';
  }

  @override
  String get tileLinks => 'અધિકૃત લિંક';

  @override
  String get descLinks => 'પોર્ટલ, ફોર્મ, હેલ્પલાઇન';

  @override
  String get linksTitle => 'અધિકૃત લિંક અને મદદ';

  @override
  String get linkPortalTitle => 'PLI ગ્રાહક પોર્ટલ';

  @override
  String get linkPortalDesc => 'ઓનલાઇન પ્રીમિયમ ચુકવણી, પોલિસી સ્થિતિ, રસીદો';

  @override
  String get linkFormsTitle => 'અધિકૃત PLI/RPLI ફોર્મ';

  @override
  String get linkFormsDesc => 'ઇન્ડિયા પોસ્ટ પરથી ફોર્મ ડાઉનલોડ કરો';

  @override
  String get linkIndiaPostTitle => 'ઇન્ડિયા પોસ્ટ';

  @override
  String get linkIndiaPostDesc => 'ટપાલ વિભાગની વેબસાઇટ';

  @override
  String get linkHelplineTitle => 'ઇન્ડિયા પોસ્ટ ગ્રાહક સેવા';

  @override
  String linkHelplineDesc(String number) {
    return 'ટોલ-ફ્રી $number';
  }

  @override
  String get linkDigiLockerTitle => 'ડિજિલોકર';

  @override
  String get linkDigiLockerDesc => 'તમારો ઇ-પોલિસી બોન્ડ સુરક્ષિત રાખો';

  @override
  String get linkGrievanceTitle => 'જાહેર ફરિયાદ (CPGRAMS)';

  @override
  String get linkGrievanceDesc => 'ભારત સરકારને ફરિયાદ કરો';

  @override
  String get linksNote =>
      'આ ભારત સરકારની અધિકૃત વેબસાઇટ્સ ખોલે છે. આ એપ સ્વતંત્ર છે અને ઇન્ડિયા પોસ્ટ કે ટપાલ વિભાગ સાથે સંકળાયેલી નથી.';

  @override
  String get formSourceLabel => 'આ ફોર્મનો અધિકૃત સ્ત્રોત';
}
