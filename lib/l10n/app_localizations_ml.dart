// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'പിഎൽഐ സഹായക്';

  @override
  String get tilePremium => 'പ്രീമിയം';

  @override
  String get tileMaturity => 'കാലാവധി';

  @override
  String get tileCompare => 'താരതമ്യം';

  @override
  String get tileEligibility => 'യോഗ്യത';

  @override
  String get tileMyPolicies => 'എന്റെ പോളിസികൾ';

  @override
  String get tileQuotation => 'ക്വട്ടേഷൻ';

  @override
  String get comingSoon => 'ഉടൻ വരുന്നു';

  @override
  String get sampleDataBanner => 'സാമ്പിൾ ഡാറ്റ – ഔദ്യോഗികമല്ല';

  @override
  String ratesFooter(String financialYear) {
    return 'നിരക്കുകൾ സാമ്പത്തിക വർഷം $financialYear • ഉറവിടം: ഇന്ത്യ പോസ്റ്റ്';
  }

  @override
  String get bonusDisclaimer =>
      'ബോണസ് നിരക്കുകൾ ഓരോ വർഷവും പ്രഖ്യാപിക്കുന്നു, ഭാവിയിലേക്ക് ഉറപ്പില്ല. അന്തിമ തുക ഇന്ത്യ പോസ്റ്റ് പ്രകാരം.';

  @override
  String get independentDisclaimerTitle => 'ആരംഭിക്കുന്നതിന് മുമ്പ്';

  @override
  String get independentDisclaimer =>
      'ഇതൊരു സ്വതന്ത്ര കാൽക്കുലേറ്ററാണ്, ഇന്ത്യ പോസ്റ്റിന്റെ ഔദ്യോഗിക ആപ്പല്ല. എല്ലാ കണക്കുകൂട്ടലുകളും നിങ്ങളുടെ ഫോണിൽ തന്നെ; ഒരു ഡാറ്റയും ശേഖരിക്കുന്നില്ല.';

  @override
  String get understood => 'മനസ്സിലായി';

  @override
  String dataLoadError(String error) {
    return 'നിരക്ക് ഡാറ്റ ലോഡ് ചെയ്യാനായില്ല: $error';
  }

  @override
  String get maturityTitle => 'കാലാവധി & ബോണസ്';

  @override
  String get eligibilityTitle => 'യോഗ്യതാ പരിശോധന';

  @override
  String get premiumTitle => 'പ്രീമിയം കാൽക്കുലേറ്റർ';

  @override
  String get schemePli => 'തപാൽ ലൈഫ് ഇൻഷുറൻസ് (PLI)';

  @override
  String get schemeRpli => 'ഗ്രാമീണ തപാൽ ലൈഫ് ഇൻഷുറൻസ് (RPLI)';

  @override
  String get planLabel => 'പദ്ധതി';

  @override
  String rulesPendingSuffix(String plan) {
    return '$plan (നിയമങ്ങൾ ബാക്കി)';
  }

  @override
  String get entryAgeLabel => 'ചേരുമ്പോഴുള്ള പ്രായം';

  @override
  String get childAgeLabel => 'കുട്ടിയുടെ പ്രായം';

  @override
  String get spouseAgeLabel => 'ജീവിതപങ്കാളിയുടെ പ്രായം';

  @override
  String ageYears(int age) {
    return '$age വയസ്സ്';
  }

  @override
  String get decrease => 'കുറയ്ക്കുക';

  @override
  String get increase => 'കൂട്ടുക';

  @override
  String get ageBasisNote =>
      'പൂർത്തിയായ വർഷങ്ങളിൽ പ്രായം നൽകുക. ഇന്ത്യ പോസ്റ്റിന്റെ പ്രായ നിയമം സ്ഥിരീകരിച്ചാൽ ജനനത്തീയതിയിൽ നിന്ന് പ്രായം കണക്കാക്കുന്ന സൗകര്യം ചേർക്കും.';

  @override
  String get sumAssuredLabel => 'ഇൻഷുറൻസ് തുക (₹)';

  @override
  String get maturityAgeLabel => 'കാലാവധി പ്രായം';

  @override
  String get termLabel => 'പോളിസി കാലാവധി';

  @override
  String termYears(int years) {
    return '$years വർഷം';
  }

  @override
  String get startDateLabel => 'പോളിസി ആരംഭ തീയതി';

  @override
  String get resultMaturityValue => 'കാലാവധി തുക';

  @override
  String get resultTotalBenefits => 'ലഭിക്കുന്ന ആകെ ആനുകൂല്യം';

  @override
  String get sumAssuredRow => 'ഇൻഷുറൻസ് തുക';

  @override
  String get termRow => 'കാലാവധി';

  @override
  String bonusRateRow(String fy) {
    return 'ബോണസ് നിരക്ക് (സാ.വ. $fy)';
  }

  @override
  String bonusRateValue(int rate) {
    return 'ഓരോ ₹1,000-നും വർഷം ₹$rate';
  }

  @override
  String get annualBonusRow => 'വാർഷിക ബോണസ്';

  @override
  String totalBonusRow(int years) {
    return 'ആകെ ബോണസ് ($years വർഷം)';
  }

  @override
  String get terminalBonusRow => 'ടെർമിനൽ ബോണസ്';

  @override
  String projectionNote(String fy) {
    return 'കാലാവധിയിലെ എല്ലാ വർഷവും സാ.വ. $fy-ലെ ബോണസ് നിരക്ക് തുടരുമെന്ന് കണക്കാക്കുന്നു.';
  }

  @override
  String get timelineTitle => 'അതിജീവന ആനുകൂല്യ സമയക്രമം';

  @override
  String timelineYear(int year) {
    return '$year-ാം വർഷം';
  }

  @override
  String get timelineSurvival => 'അതിജീവന ആനുകൂല്യം';

  @override
  String get timelineMaturity => 'കാലാവധി: ബാക്കി ഇൻഷുറൻസ് തുക + മുഴുവൻ ബോണസ്';

  @override
  String get timelineDeathNote =>
      'കാലാവധിക്കിടെ മരണം സംഭവിച്ചാൽ: മുമ്പ് നൽകിയ ആനുകൂല്യങ്ങൾ കുറയ്ക്കാതെ മുഴുവൻ ഇൻഷുറൻസ് തുക + ബോണസ്.';

  @override
  String get notAvailableTitle => 'ഇതുവരെ ലഭ്യമല്ല';

  @override
  String get rulesPendingBody =>
      'ഈ പദ്ധതിയുടെ നിയമങ്ങൾ ഇന്ത്യ പോസ്റ്റിന്റെ ഔദ്യോഗിക സർക്കുലറിൽ നിന്ന് സ്ഥിരീകരിച്ചാൽ കണക്കുകൂട്ടൽ ചേർക്കും.';

  @override
  String get premiumPendingBody =>
      'പ്രീമിയം ഇന്ത്യ പോസ്റ്റിന്റെ ഔദ്യോഗിക പ്രീമിയം പട്ടികകളിൽ നിന്നുതന്നെ വരണം. ഔദ്യോഗിക പട്ടികകൾ ചേർത്ത് പരിശോധിച്ചശേഷം ഈ കാൽക്കുലേറ്റർ പ്രവർത്തിക്കും — ഏകദേശ പ്രീമിയം കാണിക്കില്ല.';

  @override
  String missingBonusRate(String fy) {
    return 'സാ.വ. $fy-ന് പ്രഖ്യാപിച്ച ബോണസ് നിരക്ക് ഇല്ല.';
  }

  @override
  String vEntryAge(String plan, int min, int max, int age) {
    return '$plan ചേരാനുള്ള പ്രായം $min–$max. നിങ്ങളുടെ പ്രായം: $age';
  }

  @override
  String vChildAge(int min, int max, int age) {
    return 'കുട്ടിയുടെ പ്രായം $min–$max ആയിരിക്കണം. നൽകിയത്: $age';
  }

  @override
  String vSpouseAge(int min, int max, int age) {
    return 'ജീവിതപങ്കാളിയുടെ പ്രായം $min–$max ആയിരിക്കണം. നൽകിയത്: $age';
  }

  @override
  String vSaMin(String min, String sa) {
    return 'കുറഞ്ഞ ഇൻഷുറൻസ് തുക $min. നൽകിയത്: $sa';
  }

  @override
  String vSaMax(String max, String sa) {
    return 'പരമാവധി ഇൻഷുറൻസ് തുക $max (ഈ പദ്ധതിയിലെ നിങ്ങളുടെ എല്ലാ പോളിസികളും ചേർത്ത്). നൽകിയത്: $sa';
  }

  @override
  String vSaMultiple(String multiple) {
    return 'ഇൻഷുറൻസ് തുക $multiple-ന്റെ ഗുണിതമായിരിക്കണം';
  }

  @override
  String vMaturityNotOffered(int value, String allowed) {
    return 'കാലാവധി പ്രായം $value ലഭ്യമല്ല. ഇവയിൽ നിന്ന് തിരഞ്ഞെടുക്കുക: $allowed';
  }

  @override
  String vCeasingNotOffered(int value, String allowed) {
    return 'പ്രീമിയം അടയ്ക്കുന്ന പ്രായം $value ലഭ്യമല്ല. ഇവയിൽ നിന്ന് തിരഞ്ഞെടുക്കുക: $allowed';
  }

  @override
  String vTermNotOffered(int value, String allowed) {
    return '$value വർഷത്തെ കാലാവധി ലഭ്യമല്ല. ഇവയിൽ നിന്ന് തിരഞ്ഞെടുക്കുക: $allowed';
  }

  @override
  String vNotAfterEntry(int value, int age) {
    return 'കാലാവധി പ്രായം $value ചേരുമ്പോഴുള്ള പ്രായത്തേക്കാൾ ($age) കൂടുതലായിരിക്കണം.';
  }

  @override
  String vTermRange(int min, int max, int term) {
    return 'കാലാവധി $min–$max വർഷം ആയിരിക്കണം. നൽകിയത്: $term';
  }

  @override
  String vParentAge(int max, int age) {
    return 'രക്ഷിതാവിന്റെ പ്രായം $max അല്ലെങ്കിൽ കുറവായിരിക്കണം. നൽകിയത്: $age';
  }

  @override
  String vTooManyChildren(int max) {
    return 'പരമാവധി $max കുട്ടികൾക്ക് മാത്രമേ ഇൻഷുറൻസ് സാധ്യമാകൂ.';
  }

  @override
  String vChildSaCap(String cap, String sa) {
    return 'ഈ കുട്ടിക്ക് പരമാവധി ഇൻഷുറൻസ് തുക $cap. നൽകിയത്: $sa';
  }

  @override
  String get vMissing => 'ദയവായി എല്ലാ വിവരങ്ങളും പൂരിപ്പിക്കുക.';

  @override
  String get eligibilityIntro =>
      'വ്യക്തിക്ക് ബാധകമായവയെല്ലാം തിരഞ്ഞെടുക്കുക, തുടർന്ന് പ്രായം നൽകുക.';

  @override
  String get groupsPli => 'PLI — ഇവയിൽ ഏതെങ്കിലും ഒന്ന്';

  @override
  String get groupsRpli => 'RPLI — ഇവയിൽ ഏതെങ്കിലും ഒന്ന്';

  @override
  String get group_central_state_govt => 'കേന്ദ്ര / സംസ്ഥാന സർക്കാർ ജീവനക്കാർ';

  @override
  String get group_defence_paramilitary => 'പ്രതിരോധ / അർദ്ധസൈനിക വിഭാഗം';

  @override
  String get group_psu => 'പൊതുമേഖലാ സ്ഥാപനം';

  @override
  String get group_banks => 'ബാങ്ക് ജീവനക്കാർ';

  @override
  String get group_local_bodies => 'തദ്ദേശ സ്ഥാപന ജീവനക്കാർ';

  @override
  String get group_educational_institutions =>
      'വിദ്യാഭ്യാസ സ്ഥാപനം (അംഗീകൃത സ്വകാര്യം ഉൾപ്പെടെ)';

  @override
  String get group_listed_companies => 'ലിസ്റ്റഡ് കമ്പനി ജീവനക്കാർ';

  @override
  String get group_professionals =>
      'പ്രൊഫഷണലുകൾ (ഡോക്ടർ, എഞ്ചിനീയർ, സിഎ, അഭിഭാഷകൻ…)';

  @override
  String get group_graduates_diploma_holders =>
      'ബിരുദധാരികൾ അല്ലെങ്കിൽ ഡിപ്ലോമക്കാർ';

  @override
  String get group_rural_resident => 'ഗ്രാമപ്രദേശത്തെ താമസക്കാർ';

  @override
  String get group_scheduled_bank_savings_account_holder =>
      'ഷെഡ്യൂൾഡ് ബാങ്കിൽ സേവിംഗ്സ് അക്കൗണ്ട് ഉള്ളവർ';

  @override
  String get ageLabel => 'പ്രായം';

  @override
  String get eligibleFor => 'യോഗ്യർ';

  @override
  String plansAtAge(int age) {
    return '$age വയസ്സിൽ ലഭ്യമായ പദ്ധതികൾ';
  }

  @override
  String get childPlansTitle => 'കുട്ടികളുടെ പോളിസികൾ (നിങ്ങളുടെ കുട്ടികൾക്ക്)';

  @override
  String get selectGroupPrompt =>
      'യോഗ്യമായ പദ്ധതികൾ കാണാൻ മുകളിൽ ഒന്നെങ്കിലും തിരഞ്ഞെടുക്കുക.';

  @override
  String noPlansAtAge(int age) {
    return '$age വയസ്സിൽ ഒരു പദ്ധതിയിലും ചേരാനാകില്ല.';
  }

  @override
  String get eligibilityNote =>
      'അന്തിമ സ്വീകാര്യത ഇന്ത്യ പോസ്റ്റിന്റെ വൈദ്യപരിശോധനയ്ക്കും രേഖകൾക്കും വിധേയമാണ്.';

  @override
  String get languageLabel => 'ഭാഷ';

  @override
  String get systemLanguage => 'ഉപകരണ ഭാഷ';
}
