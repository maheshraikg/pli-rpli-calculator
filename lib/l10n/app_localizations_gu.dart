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
}
