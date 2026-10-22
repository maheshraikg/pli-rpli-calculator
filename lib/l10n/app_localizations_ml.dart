// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'PLI & RPLI കാൽക്കുലേറ്റർ';

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

  @override
  String get tileAfford => 'എത്ര സാധ്യം';

  @override
  String get tileTools => 'പോളിസി ടൂളുകൾ';

  @override
  String get tilePlans => 'പദ്ധതികൾ';

  @override
  String get tileAbout => 'വിവരം';

  @override
  String get dobLabel => 'ജനനത്തീയതി';

  @override
  String get useAgeInstead => 'പകരം പ്രായം നൽകുക';

  @override
  String get useDobInstead => 'ജനനത്തീയതി നൽകുക';

  @override
  String ageFromDobNearest(int age) {
    return 'ആരംഭ തീയതിയിലെ ചേരൽ പ്രായം: $age (അടുത്ത ജന്മദിന പ്രായം)';
  }

  @override
  String ageFromDobLast(int age) {
    return 'ആരംഭ തീയതിയിലെ ചേരൽ പ്രായം: $age (കഴിഞ്ഞ ജന്മദിന പ്രായം)';
  }

  @override
  String get premiumCeasingAgeLabel => 'പ്രീമിയം അടയ്ക്കുന്ന പ്രായം';

  @override
  String get frequencyLabel => 'അടവ് ഇടവേള';

  @override
  String get freqMonthly => 'പ്രതിമാസം';

  @override
  String get freqQuarterly => 'ത്രൈമാസം';

  @override
  String get freqHalfYearly => 'അർദ്ധവാർഷികം';

  @override
  String get freqYearly => 'വാർഷികം';

  @override
  String get premiumPerInstalment => 'ഒരു തവണയുടെ പ്രീമിയം';

  @override
  String get tablePremiumRow => 'പട്ടിക പ്രീമിയം';

  @override
  String get saRebateRow => 'ഇൻഷുറൻസ് തുക ഇളവ്';

  @override
  String totalPremiumRow(int count) {
    return 'ആകെ പ്രീമിയം ($count തവണകൾ)';
  }

  @override
  String get payingTermRow => 'പ്രീമിയം അടയ്ക്കുന്ന കാലം';

  @override
  String get returnRow => 'ഫലപ്രദമായ വരുമാനം (XIRR)';

  @override
  String returnValue(String percent) {
    return 'വർഷം $percent%';
  }

  @override
  String get lifeCoverRow => 'ജീവൻ പരിരക്ഷ';

  @override
  String get allFrequenciesTitle => 'എല്ലാ അടവ് ഇടവേളകളും';

  @override
  String get notInTable => 'ഔദ്യോഗിക പട്ടികയിൽ ലഭ്യമല്ല';

  @override
  String get noTableForPlan =>
      'ഈ പദ്ധതിയുടെ പ്രീമിയം പട്ടിക ഇതുവരെ ചേർത്തിട്ടില്ല.';

  @override
  String get illustrationTitle => 'വർഷം തിരിച്ചുള്ള ആനുകൂല്യ വിവരം';

  @override
  String get colYear => 'വർഷം';

  @override
  String get colPremiumsPaid => 'അടച്ച പ്രീമിയം';

  @override
  String get colBonus => 'ബോണസ്';

  @override
  String get colLifeCover => 'ജീവൻ പരിരക്ഷ';

  @override
  String get makeQuotation => 'ക്വട്ടേഷൻ തയ്യാറാക്കുക';

  @override
  String get gstNote =>
      'ജിഎസ്ടി: 22 സെപ്റ്റംബർ 2025-നോ ശേഷമോ അടച്ച വ്യക്തിഗത ലൈഫ് ഇൻഷുറൻസ് പ്രീമിയത്തിന് പൂജ്യം.';

  @override
  String get chartTitle => 'അടച്ച പ്രീമിയവും ആനുകൂല്യവും';

  @override
  String get chartPaid => 'ആകെ പ്രീമിയം';

  @override
  String get chartReceived => 'ആകെ ആനുകൂല്യം';

  @override
  String get showTable => 'വർഷം തിരിച്ചുള്ള പട്ടിക കാണിക്കുക';

  @override
  String get hideTable => 'വർഷം തിരിച്ചുള്ള പട്ടിക മറയ്ക്കുക';

  @override
  String get reverseTitle => 'എനിക്ക് എത്ര സാധിക്കും?';

  @override
  String get budgetLabel => 'ഒരു തവണയുടെ ബജറ്റ് (₹)';

  @override
  String get reverseIntro =>
      'നിങ്ങൾക്ക് എത്ര അടയ്ക്കാനാകും എന്ന് നൽകുക. ഓരോ പദ്ധതി ഓപ്ഷനും ആ തുകയ്ക്കുള്ളിലെ പരമാവധി ഇൻഷുറൻസ് തുക കാണിക്കും.';

  @override
  String optMaturityAge(int age) {
    return '$age വയസ്സിൽ കാലാവധി';
  }

  @override
  String optCeasingAge(int age) {
    return '$age വയസ്സുവരെ പ്രീമിയം';
  }

  @override
  String optTerm(int years) {
    return '$years വർഷ കാലാവധി';
  }

  @override
  String get reverseNone =>
      'ഈ പ്രായത്തിൽ ഈ ബജറ്റിൽ ഒരു പദ്ധതിയും ഒതുങ്ങുന്നില്ല.';

  @override
  String get saShort => 'ഇൻഷുറൻസ് തുക';

  @override
  String get premiumShort => 'പ്രീമിയം';

  @override
  String get compareTitle => 'പദ്ധതികൾ താരതമ്യം';

  @override
  String optionN(int n) {
    return 'ഓപ്ഷൻ $n';
  }

  @override
  String get addOption => 'ഓപ്ഷൻ ചേർക്കുക';

  @override
  String get removeOption => 'ഓപ്ഷൻ നീക്കുക';

  @override
  String get maturityShort => 'കാലാവധി / ആനുകൂല്യം';

  @override
  String get totalPaidShort => 'ആകെ അടച്ചത്';

  @override
  String get returnShort => 'വരുമാനം';

  @override
  String get lifeCoverShort => 'ജീവൻ പരിരക്ഷ';

  @override
  String get comparisonTitle => 'താരതമ്യം';

  @override
  String get toolsTitle => 'പോളിസി ടൂളുകൾ';

  @override
  String get tabLoan => 'വായ്പ';

  @override
  String get tabPaidUp => 'പെയ്ഡ്-അപ്പ്';

  @override
  String get tabRevival => 'പുനരുജ്ജീവനം';

  @override
  String get tabAdvance => 'മുൻകൂർ';

  @override
  String get yearsInForceLabel => 'പോളിസി പ്രാബല്യത്തിലുള്ള വർഷങ്ങൾ';

  @override
  String get loanAmountLabel => 'വായ്പ തുക (₹)';

  @override
  String get loanMonthsLabel => 'തിരിച്ചടവ് വരെയുള്ള മാസങ്ങൾ';

  @override
  String monthsValue(int months) {
    return '$months മാസം';
  }

  @override
  String get loanInterestRow => 'പലിശ';

  @override
  String get loanTotalRow => 'ആകെ തിരിച്ചടവ്';

  @override
  String loanRateNote(String rate) {
    return 'വർഷം $rate% പലിശ, അർദ്ധവാർഷിക കൂട്ടുപലിശ.';
  }

  @override
  String loanAvailableAfter(int years) {
    return '$years വർഷത്തിനു ശേഷം വായ്പ ലഭ്യം.';
  }

  @override
  String get loanNotOffered => 'ഈ പദ്ധതിയിൽ വായ്പ സൗകര്യമില്ല.';

  @override
  String get loanEligibleYes => 'വായ്പയ്ക്ക് അർഹം';

  @override
  String get loanEligibleNo => 'ഇതുവരെ വായ്പയ്ക്ക് അർഹമല്ല';

  @override
  String get loanAmountNote =>
      'പരമാവധി വായ്പ സറണ്ടർ മൂല്യത്തെ ആശ്രയിക്കുന്നു; അത് ഇന്ത്യ പോസ്റ്റ് കണക്കാക്കുന്നു.';

  @override
  String get premiumsPaidLabel => 'അടച്ച തവണകൾ';

  @override
  String get premiumsPayableLabel => 'അടയ്ക്കേണ്ട ആകെ തവണകൾ';

  @override
  String get paidUpSaRow => 'പെയ്ഡ്-അപ്പ് ഇൻഷുറൻസ് തുക';

  @override
  String get paidUpNote =>
      'ഏകദേശം. ഇതിനകം നേടിയ ബോണസ് ഇന്ത്യ പോസ്റ്റ് രേഖകൾ പ്രകാരം ചേർക്കും. സറണ്ടർ മൂല്യത്തിന് ഔദ്യോഗിക സറണ്ടർ ഘടകങ്ങൾ വേണം; അത് കണക്കാക്കിയിട്ടില്ല.';

  @override
  String paidUpNotEligible(int years) {
    return 'പോളിസി $years വർഷം പ്രാബല്യത്തിലായ ശേഷമേ പെയ്ഡ്-അപ്പ് ആകൂ.';
  }

  @override
  String get paidUpInvalid => 'അടച്ച തവണകൾ അടയ്ക്കേണ്ടതിനേക്കാൾ കൂടരുത്.';

  @override
  String get instalmentLabel => 'ഒരു തവണയുടെ പ്രീമിയം (₹)';

  @override
  String get firstUnpaidLabel => 'ആദ്യ കുടിശ്ശിക തവണയുടെ തീയതി';

  @override
  String get payDateLabel => 'അടയ്ക്കുന്ന തീയതി';

  @override
  String get missedRow => 'കുടിശ്ശിക തവണകൾ';

  @override
  String get arrearsRow => 'കുടിശ്ശിക';

  @override
  String get defaultFeeRow => 'വൈകൽ ഫീസ്';

  @override
  String get totalPayableRow => 'ആകെ അടയ്ക്കേണ്ടത്';

  @override
  String revivalNote(String percent) {
    return 'വൈകിയ ഓരോ മാസത്തിനും തവണയുടെ $percent% വൈകൽ ഫീസ്. ദീർഘകാലത്തിനു ശേഷം പുനരുജ്ജീവിപ്പിക്കാൻ മെഡിക്കൽ സർട്ടിഫിക്കറ്റ് വേണ്ടിവരാം.';
  }

  @override
  String revivalLine(String date, int months, String fee) {
    return 'കുടിശ്ശിക $date • $months മാസം വൈകി • ഫീസ് $fee';
  }

  @override
  String get nothingDue => 'ആ തീയതിയിൽ ഒന്നും കുടിശ്ശികയില്ല.';

  @override
  String get monthsAdvanceLabel => 'മുൻകൂർ അടയ്ക്കുന്ന മാസങ്ങൾ';

  @override
  String rebateRow(String percent) {
    return 'ഇളവ് ($percent%)';
  }

  @override
  String get amountDueRow => 'അടയ്ക്കേണ്ട തുക';

  @override
  String get payableRow => 'നിങ്ങൾ അടയ്ക്കുന്നത്';

  @override
  String get advanceNote =>
      'കാണിച്ച ഇളവ് നിരക്ക് ഡാറ്റയിലെ മുൻകൂർ അടവ് ഇളവ് പ്രകാരം; പ്രീമിയം മുൻകൂർ അടയ്ക്കുമ്പോൾ ബാധകം.';

  @override
  String get policiesTitle => 'എന്റെ പോളിസികൾ';

  @override
  String get noPolicies =>
      'ഇതുവരെ ഒരു പോളിസിയും സേവ് ചെയ്തിട്ടില്ല. ചേർക്കാൻ + അമർത്തുക.';

  @override
  String get addPolicy => 'പോളിസി ചേർക്കുക';

  @override
  String get editPolicy => 'പോളിസി തിരുത്തുക';

  @override
  String get holderNameLabel => 'പോളിസി ഉടമയുടെ പേര്';

  @override
  String get policyNumberLabel => 'പോളിസി നമ്പർ';

  @override
  String get premiumAmountLabel => 'ഒരു തവണയുടെ പ്രീമിയം (₹, രസീത് പ്രകാരം)';

  @override
  String get save => 'സേവ് ചെയ്യുക';

  @override
  String get delete => 'ഇല്ലാതാക്കുക';

  @override
  String get deleteConfirm => 'ഈ പോളിസി ഇല്ലാതാക്കണോ?';

  @override
  String get cancel => 'റദ്ദാക്കുക';

  @override
  String nextDue(String date) {
    return 'അടുത്ത തവണ: $date';
  }

  @override
  String get noMoreDues => 'എല്ലാ പ്രീമിയവും അടച്ചു';

  @override
  String get remindersLabel => 'ഓരോ തവണയ്ക്കും 3 ദിവസം മുമ്പ് ഓർമ്മിപ്പിക്കുക';

  @override
  String get remindersDenied => 'ഈ ആപ്പിന് അറിയിപ്പുകൾ ഓഫാണ്.';

  @override
  String get accruedBonusRow => 'ഇതുവരെ ലഭിച്ച ബോണസ്';

  @override
  String bonusMissingYears(String years) {
    return 'സാ.വ. $years ബോണസ് നിരക്കുകൾ ആപ്പ് ഡാറ്റയിൽ ഇല്ല; ആകെ തുകയിൽ ആ വർഷങ്ങൾ ഉൾപ്പെടുന്നില്ല.';
  }

  @override
  String maturityOn(String date) {
    return '$date-ന് കാലാവധി';
  }

  @override
  String get upcomingDues => 'വരാനിരിക്കുന്ന തവണ തീയതികൾ';

  @override
  String get yearsInForceRow => 'പ്രാബല്യ വർഷങ്ങൾ';

  @override
  String get reminderTitle => 'പിഎൽഐ പ്രീമിയം കുടിശ്ശിക';

  @override
  String reminderBody(String name, String amount, String date, String number) {
    return '$name: $amount $date-ന് അടയ്ക്കണം (പോളിസി $number)';
  }

  @override
  String get savedLocally => 'ഈ ഫോണിൽ മാത്രം സേവ് ചെയ്തു.';

  @override
  String get requiredField => 'ആവശ്യമാണ്';

  @override
  String get projectedMaturityRow => 'കണക്കാക്കിയ കാലാവധി തുക';

  @override
  String get quotationTitle => 'ക്വട്ടേഷൻ';

  @override
  String get customerNameLabel => 'ഉപഭോക്താവിന്റെ പേര്';

  @override
  String get agentNameLabel => 'തയ്യാറാക്കിയത് (ഐച്ഛികം)';

  @override
  String get sharePdf => 'PDF പങ്കിടുക';

  @override
  String get shareImage => 'ചിത്രം പങ്കിടുക';

  @override
  String get quotationHeading => 'പ്രീമിയം ക്വട്ടേഷൻ';

  @override
  String preparedOn(String date) {
    return '$date-ന് തയ്യാറാക്കിയത്';
  }

  @override
  String quotationFor(String name) {
    return 'ഇവർക്ക്: $name';
  }

  @override
  String preparedBy(String name) {
    return 'തയ്യാറാക്കിയത്: $name';
  }

  @override
  String get quotationInvalid =>
      'ക്വട്ടേഷൻ തയ്യാറാക്കാൻ പദ്ധതി വിവരങ്ങൾ പൂർത്തിയാക്കുക.';

  @override
  String get planDetailsTitle => 'പദ്ധതി വിവരങ്ങൾ';

  @override
  String get planInfoTitle => 'പദ്ധതി വിവരം';

  @override
  String entryAgeInfo(int min, int max) {
    return 'ചേരാനുള്ള പ്രായം: $min–$max';
  }

  @override
  String maturityAgesInfo(String ages) {
    return 'കാലാവധി പ്രായങ്ങൾ: $ages';
  }

  @override
  String ceasingAgesInfo(String ages, int age) {
    return 'പ്രീമിയം അടയ്ക്കുന്ന പ്രായങ്ങൾ: $ages; $age വയസ്സിൽ കാലാവധി';
  }

  @override
  String termsInfo(String terms) {
    return 'കാലാവധി: $terms വർഷം';
  }

  @override
  String survivalInfo(String list) {
    return 'മണി ബാക്ക്: $list';
  }

  @override
  String survivalItem(int percent, int year) {
    return '$year-ാം വർഷം $percent%';
  }

  @override
  String loanInfo(int years) {
    return '$years വർഷത്തിനു ശേഷം വായ്പ';
  }

  @override
  String get noLoanInfo => 'വായ്പയില്ല';

  @override
  String surrenderInfo(int years) {
    return '$years വർഷത്തിനു ശേഷം സറണ്ടർ';
  }

  @override
  String get noSurrenderInfo => 'സറണ്ടർ ഇല്ല';

  @override
  String bonusInfo(String fy, int rate) {
    return 'സാ.വ. $fy ബോണസ്: ഓരോ ₹1,000-നും വർഷം ₹$rate';
  }

  @override
  String saLimitInfo(String min, String max) {
    return 'ഇൻഷുറൻസ് തുക: $min – $max';
  }

  @override
  String jointInfo(int min, int max, int tmin, int tmax) {
    return 'ഓരോ ജീവിതപങ്കാളിയുടെയും പ്രായം $min–$max; കാലാവധി $tmin–$tmax വർഷം';
  }

  @override
  String childInfo(int min, int max, int parent, int children, String cap) {
    return 'കുട്ടിയുടെ പ്രായം $min–$max; രക്ഷിതാവിന്റെ പ്രായം $parent വരെ; പരമാവധി $children കുട്ടികൾ; ഇൻഷുറൻസ് തുക $cap വരെ';
  }

  @override
  String conversionInfo(int years) {
    return '$years വർഷത്തിനു ശേഷം എൻഡോവ്മെന്റ് ഇൻഷുറൻസാക്കി മാറ്റാം';
  }

  @override
  String get faqTitle => 'സാധാരണ ചോദ്യങ്ങൾ';

  @override
  String get faq1q => 'ബോണസ് ഉറപ്പാണോ?';

  @override
  String get faq1a =>
      'അല്ല. ഇന്ത്യ പോസ്റ്റ് ഓരോ വർഷവും ബോണസ് നിരക്കുകൾ പ്രഖ്യാപിക്കുന്നു. ഇവിടത്തെ കണക്കുകൾ ഭാവിയിലെ ഓരോ വർഷത്തിനും ഏറ്റവും പുതിയ പ്രഖ്യാപിത നിരക്ക് അനുമാനിക്കുന്നു.';

  @override
  String get faq2q => 'പ്രീമിയം എവിടെ നിന്നാണ്?';

  @override
  String get faq2a =>
      'ഇന്ത്യ പോസ്റ്റിന്റെ ഔദ്യോഗിക പ്രീമിയം പട്ടികകളിൽ നിന്ന്. ആപ്പ് ഒരിക്കലും പ്രീമിയം ഊഹിക്കുന്നില്ല.';

  @override
  String get faq3q => 'ആദായനികുതി ആനുകൂല്യമുണ്ടോ?';

  @override
  String get faq3a =>
      'പ്രീമിയം സെക്ഷൻ 80C (പഴയ നികുതി രീതി) പ്രകാരം അർഹമാകാം; കാലാവധി തുക സെക്ഷൻ 10(10D) പ്രകാരം വ്യവസ്ഥകൾക്ക് വിധേയമായി ഒഴിവാകാം. ഇത് നികുതി ഉപദേശമല്ല.';

  @override
  String get faq4q => 'പ്രീമിയത്തിന് ജിഎസ്ടി ഉണ്ടോ?';

  @override
  String get faq4a =>
      'ഇല്ല. 22 സെപ്റ്റംബർ 2025 മുതൽ വ്യക്തിഗത ലൈഫ് ഇൻഷുറൻസ് പ്രീമിയത്തിന് ജിഎസ്ടി പൂജ്യമാണ്.';

  @override
  String get faq5q => 'PLI, RPLI ആർക്കെടുക്കാം?';

  @override
  String get faq5a =>
      'PLI: സർക്കാർ, അർദ്ധസർക്കാർ ജീവനക്കാർ, പ്രൊഫഷണലുകൾ, ബിരുദധാരികൾ, ഡിപ്ലോമക്കാർ, ഇന്ത്യ പോസ്റ്റ് പട്ടികപ്പെടുത്തിയ മറ്റുള്ളവർ. RPLI: ഗ്രാമീണ താമസക്കാരും ഷെഡ്യൂൾഡ് ബാങ്ക് സേവിംഗ്സ് അക്കൗണ്ട് ഉടമകളും.';

  @override
  String get aboutTitle => 'വിവരം';

  @override
  String get privacyTitle => 'സ്വകാര്യത';

  @override
  String get privacyBody =>
      'PLI & RPLI കാൽക്കുലേറ്റർ ഒരു ഡാറ്റയും ശേഖരിക്കുന്നില്ല. നിങ്ങൾ നൽകുന്നതും സേവ് ചെയ്യുന്നതുമെല്ലാം ഈ ഫോണിൽ തന്നെ. അക്കൗണ്ടോ ഇന്റർനെറ്റോ ആവശ്യമില്ല.';

  @override
  String get dataSourceTitle => 'നിരക്ക് ഡാറ്റ';

  @override
  String dataSourceBody(String id, String date, String source) {
    return 'നിയമങ്ങൾ $id, $date മുതൽ പ്രാബല്യം. ഉറവിടം: $source';
  }

  @override
  String get provisionalTitle => 'ഇനിയും സ്ഥിരീകരിക്കേണ്ട നിയമങ്ങൾ';

  @override
  String get provisionalIntro =>
      'ഇന്ത്യ പോസ്റ്റിന്റെ ഔദ്യോഗിക സർക്കുലറുകളിൽ നിന്ന് സ്ഥിരീകരിക്കും വരെ ഈ നിയമങ്ങൾ താൽക്കാലിക അനുമാനങ്ങളാണ് (ഇംഗ്ലീഷിൽ):';

  @override
  String get checkUpdates => 'നിരക്ക് അപ്ഡേറ്റ് പരിശോധിക്കുക';

  @override
  String updateInstalled(int version) {
    return 'നിരക്ക് ഡാറ്റ പതിപ്പ് $version-ലേക്ക് അപ്ഡേറ്റ് ചെയ്തു.';
  }

  @override
  String get updateCurrent => 'നിരക്ക് ഡാറ്റ ഏറ്റവും പുതിയതാണ്.';

  @override
  String updateFailed(String error) {
    return 'അപ്ഡേറ്റ് പരാജയപ്പെട്ടു; നിലവിലെ നിരക്കുകൾ തുടരുന്നു. $error';
  }

  @override
  String get sampleDataNote =>
      'പ്രീമിയം പട്ടികകൾ സാമ്പിൾ ഡാറ്റയാണ്, ഇന്ത്യ പോസ്റ്റിന്റെ ഔദ്യോഗിക കണക്കുകളല്ല.';

  @override
  String appVersion(String version) {
    return 'പതിപ്പ് $version';
  }

  @override
  String get homeTagline => 'പ്രീമിയം, ബോണസ്, കാലാവധി — ഓഫ്‌ലൈനിലും';

  @override
  String get quickPremiumTitle => 'പ്രീമിയം കണക്കാക്കുക';

  @override
  String get quickPremiumBody =>
      'ഏത് പദ്ധതിയും പ്രായവും ഇൻഷുറൻസ് തുകയും — എല്ലാ ഇടവേളകളും';

  @override
  String get sectionCalculators => 'കാൽക്കുലേറ്ററുകൾ';

  @override
  String get sectionServicing => 'പോളിസി സേവനങ്ങൾ';

  @override
  String get sectionLearn => 'അറിയുക';

  @override
  String get descPremium => 'ഓരോ ഇടവേളയുടെയും പ്രീമിയം';

  @override
  String get descMaturity => 'ബോണസും കാലാവധി തുകയും';

  @override
  String get descCompare => 'പദ്ധതികൾ അടുത്തടുത്ത്';

  @override
  String get descAfford => 'നിങ്ങളുടെ ബജറ്റിൽ മികച്ച പരിരക്ഷ';

  @override
  String get descPolicies => 'സേവ് ചെയ്ത പോളിസികളും തീയതികളും';

  @override
  String get descTools => 'വായ്പ, പുനരുജ്ജീവനം, പെയ്ഡ്-അപ്പ്';

  @override
  String get descQuotation => 'PDF ക്വട്ടേഷൻ പങ്കിടുക';

  @override
  String get descEligibility => 'PLI അല്ലെങ്കിൽ RPLI ആർക്കെടുക്കാം';

  @override
  String get descPlans => 'പദ്ധതി നിയമങ്ങളും ചോദ്യങ്ങളും';

  @override
  String get descAbout => 'സ്വകാര്യതയും നിരക്ക് ഡാറ്റയും';

  @override
  String get sectionPersonTitle => 'പോളിസി ഉടമ';

  @override
  String get sectionCoverTitle => 'പരിരക്ഷയും അടവും';

  @override
  String get tileForms => 'ഫോമുകൾ';

  @override
  String get descForms => 'ഫോമുകൾ, പട്ടികകൾ, കത്തുകൾ';

  @override
  String get formsTitle => 'ഫോമുകളും കത്തുകളും';

  @override
  String get formsIntro =>
      'ഓരോ PLI / RPLI അപേക്ഷയ്ക്കും എന്ത് വേണം, ഫോം എവിടെ കിട്ടും, തയ്യാറായ അപേക്ഷാ കത്തുകൾ.';

  @override
  String get formsVerifyNote =>
      'രേഖകളുടെ പട്ടിക മാർഗ്ഗനിർദ്ദേശം മാത്രം, മാറാം. സമർപ്പിക്കും മുമ്പ് നിങ്ങളുടെ പോസ്റ്റ് ഓഫീസിൽ ഉറപ്പാക്കുക.';

  @override
  String get whereToGetTitle => 'ഫോം എവിടെ കിട്ടും';

  @override
  String get whereToGetBody =>
      'ഏത് പോസ്റ്റ് ഓഫീസിലോ CPC-യിലോ സൗജന്യം, അല്ലെങ്കിൽ ഇന്ത്യ പോസ്റ്റ് PLI വെബ്സൈറ്റിൽ നിന്ന് ഡൗൺലോഡ് ചെയ്യുക.';

  @override
  String get documentsTitle => 'തയ്യാറാക്കി വയ്ക്കേണ്ട രേഖകൾ';

  @override
  String get openOfficialForm => 'ഔദ്യോഗിക ഫോം തുറക്കുക';

  @override
  String get getFromIndiaPost => 'ഇന്ത്യ പോസ്റ്റിൽ നിന്ന് ഫോം നേടുക';

  @override
  String get detailsSheetTitle => 'പോളിസി വിവര ഷീറ്റ്';

  @override
  String get detailsSheetIntro =>
      'ഔദ്യോഗിക ഫോമിൽ എഴുതാൻ നിങ്ങളുടെ സേവ് ചെയ്ത പോളിസി വിവരങ്ങൾ ഒരിടത്ത്.';

  @override
  String get writeLetterTitle => 'അപേക്ഷാ കത്ത് എഴുതുക';

  @override
  String get writeLetterIntro =>
      'നിങ്ങളുടെ സേവ് ചെയ്ത പോളിസിയിൽ നിന്ന് പൂരിപ്പിച്ച, പോസ്റ്റ്മാസ്റ്റർക്കുള്ള കത്ത്.';

  @override
  String get choosePolicy => 'സേവ് ചെയ്ത പോളിസി';

  @override
  String get noSavedPolicies =>
      'ആദ്യം എന്റെ പോളിസികളിൽ ഒരു പോളിസി സേവ് ചെയ്യുക.';

  @override
  String get toOfficeLabel => 'സ്വീകർത്താവ് (പോസ്റ്റ് ഓഫീസ് / CPC)';

  @override
  String get yourAddressLabel => 'നിങ്ങളുടെ വിലാസം';

  @override
  String get phoneLabel => 'ഫോൺ';

  @override
  String get placeLabel => 'സ്ഥലം';

  @override
  String get nomineeNameLabel => 'പുതിയ നോമിനിയുടെ പേര്';

  @override
  String get nomineeRelationLabel => 'ബന്ധം';

  @override
  String get nomineeAgeLabel => 'നോമിനിയുടെ പ്രായം';

  @override
  String get newAddressLabel => 'പുതിയ വിലാസം';

  @override
  String get bondLost => 'നഷ്ടപ്പെട്ടു';

  @override
  String get bondDamaged => 'കേടായി';

  @override
  String get lapsedFromLabel => 'പ്രീമിയം കുടിശ്ശിക എന്നുമുതൽ';

  @override
  String get shareAsText => 'ടെക്സ്റ്റായി പങ്കിടുക';

  @override
  String get copyText => 'പകർത്തുക';

  @override
  String get copied => 'പകർത്തി';

  @override
  String get letterEnglishNote =>
      'കത്തുകൾ ഇംഗ്ലീഷിലാണ് — ഇന്ത്യ പോസ്റ്റ് കത്തിടപാടുകളുടെ സാധാരണ ഭാഷ. സമർപ്പിക്കും മുമ്പ് ഒപ്പിടുക.';

  @override
  String get formsOfficialNote =>
      'ഈ ആപ്പ് ഇന്ത്യ പോസ്റ്റ് അല്ല. നിശ്ചിത ഫോം ഉള്ളിടത്ത് എപ്പോഴും ഇന്ത്യ പോസ്റ്റിന്റെ ഫോം തന്നെ സമർപ്പിക്കുക.';

  @override
  String get svc_proposal => 'പുതിയ പോളിസി നിർദ്ദേശം';

  @override
  String get svcDesc_proposal => 'പുതിയ PLI അല്ലെങ്കിൽ RPLI പോളിസിക്ക് അപേക്ഷ';

  @override
  String get svc_maturity => 'കാലാവധി ക്ലെയിം';

  @override
  String get svcDesc_maturity =>
      'പോളിസി കാലാവധി എത്തുമ്പോൾ തുക ക്ലെയിം ചെയ്യുക';

  @override
  String get svc_survival => 'അതിജീവന ആനുകൂല്യ ക്ലെയിം';

  @override
  String get svcDesc_survival => 'മണി-ബാക്ക് തവണകൾ (സുമംഗൽ, ഗ്രാം പ്രിയ)';

  @override
  String get svc_death => 'മരണ ക്ലെയിം';

  @override
  String get svcDesc_death => 'നോമിനിയോ നിയമപരമായ അവകാശിയോ നൽകുന്ന ക്ലെയിം';

  @override
  String get svc_loan => 'പോളിസി വായ്പ';

  @override
  String get svcDesc_loan => 'നിങ്ങളുടെ പോളിസിയിന്മേൽ വായ്പ';

  @override
  String get svc_surrender => 'സറണ്ടർ';

  @override
  String get svcDesc_surrender =>
      'സറണ്ടർ മൂല്യത്തിനായി പോളിസി നേരത്തെ അവസാനിപ്പിക്കുക';

  @override
  String get svc_revival => 'പുനരുജ്ജീവനം';

  @override
  String get svcDesc_revival => 'മുടങ്ങിയ പോളിസി വീണ്ടും ആരംഭിക്കുക';

  @override
  String get svc_nomination => 'നോമിനേഷൻ മാറ്റം';

  @override
  String get svcDesc_nomination => 'നോമിനിയെ ചേർക്കുക അല്ലെങ്കിൽ മാറ്റുക';

  @override
  String get svc_address => 'വിലാസ മാറ്റം';

  @override
  String get svcDesc_address => 'പോളിസിയിൽ നിങ്ങളുടെ വിലാസം പുതുക്കുക';

  @override
  String get svc_duplicate => 'ഡ്യൂപ്ലിക്കേറ്റ് പോളിസി ബോണ്ട്';

  @override
  String get svcDesc_duplicate => 'നഷ്ടപ്പെട്ടതോ കേടായതോ ആയ ബോണ്ട് മാറ്റുക';

  @override
  String get svc_assignment => 'അവകാശ കൈമാറ്റം';

  @override
  String get svcDesc_assignment => 'പോളിസി അവകാശങ്ങൾ കൈമാറുക, ഉദാ. ബാങ്കിന്';

  @override
  String get svc_conversion => 'മാറ്റം (സുവിധ)';

  @override
  String get svcDesc_conversion =>
      'ആജീവനാന്ത ഇൻഷുറൻസ് എൻഡോവ്മെന്റാക്കി മാറ്റുക';

  @override
  String get doc_form => 'നിശ്ചിത ഫോം, പൂരിപ്പിച്ച് ഒപ്പിട്ടത്';

  @override
  String get doc_policyBond => 'യഥാർത്ഥ പോളിസി ബോണ്ട് (അല്ലെങ്കിൽ ePLI ബോണ്ട്)';

  @override
  String get doc_receiptBook => 'പ്രീമിയം രസീത് ബുക്ക് അല്ലെങ്കിൽ രസീതുകൾ';

  @override
  String get doc_idProof => 'തിരിച്ചറിയൽ രേഖ (ആധാർ, പാൻ തുടങ്ങിയവ)';

  @override
  String get doc_addressProof => 'വിലാസ രേഖ';

  @override
  String get doc_ageProof => 'പ്രായ രേഖ';

  @override
  String get doc_bankDetails =>
      'ബാങ്ക് പാസ്ബുക്ക് അല്ലെങ്കിൽ റദ്ദാക്കിയ ചെക്ക്';

  @override
  String get doc_photo => 'പാസ്പോർട്ട് സൈസ് ഫോട്ടോ';

  @override
  String get doc_deathCertificate => 'മരണ സർട്ടിഫിക്കറ്റ്';

  @override
  String get doc_claimantId => 'ക്ലെയിമന്റിന്റെ തിരിച്ചറിയൽ, ബന്ധ രേഖ';

  @override
  String get doc_medical =>
      'മെഡിക്കൽ സർട്ടിഫിക്കറ്റ് / ആരോഗ്യ പ്രഖ്യാപനം (ആവശ്യപ്പെട്ടാൽ)';

  @override
  String get doc_eligibility =>
      'യോഗ്യതാ രേഖ (ജോലി, ബിരുദം അല്ലെങ്കിൽ ഗ്രാമീണ താമസം)';

  @override
  String get doc_nomineeDetails => 'നോമിനിയുടെ പേര്, പ്രായം, ബന്ധം';

  @override
  String get doc_indemnity => 'നഷ്ടപരിഹാര ബോണ്ട് (ആവശ്യപ്പെട്ടാൽ)';

  @override
  String get customerPhoneLabel =>
      'ഉപഭോക്താവിന്റെ മൊബൈൽ (വാട്സ്ആപ്പ് ഓർമ്മപ്പെടുത്തലിന്)';

  @override
  String get exportBackup => 'പോളിസികളുടെ ബാക്കപ്പ്';

  @override
  String get importBackup => 'ബാക്കപ്പിൽ നിന്ന് പുനഃസ്ഥാപിക്കുക';

  @override
  String importConfirm(int count) {
    return 'ഈ ബാക്കപ്പിൽ നിന്ന് $count പോളിസികൾ പുനഃസ്ഥാപിക്കണോ? ഒരേ ID ഉള്ള സേവ് ചെയ്ത പോളിസികൾ മാറ്റിസ്ഥാപിക്കും.';
  }

  @override
  String importDone(int count) {
    return '$count പോളിസികൾ പുനഃസ്ഥാപിച്ചു.';
  }

  @override
  String get importFailed => 'ഇത് PLI & RPLI കാൽക്കുലേറ്റർ ബാക്കപ്പ് ഫയലല്ല.';

  @override
  String get backupNote =>
      'ബാക്കപ്പ് ഫയലിൽ നിങ്ങളുടെ പോളിസി വിവരങ്ങളുണ്ട്. സ്വന്തം വാട്സ്ആപ്പ് ചാറ്റ്, ഗൂഗിൾ ഡ്രൈവ് പോലുള്ള സുരക്ഷിത ഇടത്ത് സൂക്ഷിക്കുക.';

  @override
  String get restore => 'പുനഃസ്ഥാപിക്കുക';

  @override
  String get tileDues => 'കുടിശ്ശിക';

  @override
  String get descDues => 'ഈ മാസത്തെ പ്രീമിയം കുടിശ്ശിക';

  @override
  String get duesTitle => 'പ്രീമിയം കുടിശ്ശിക';

  @override
  String get duesTotal => 'ആകെ കുടിശ്ശിക';

  @override
  String duesCount(int count) {
    return '$count പ്രീമിയങ്ങൾ';
  }

  @override
  String get noDuesInMonth => 'ഈ മാസം പ്രീമിയം കുടിശ്ശികയില്ല.';

  @override
  String get remindOnWhatsApp => 'ഓർമ്മിപ്പിക്കുക';

  @override
  String dueReminderMessage(
    String name,
    String amount,
    String number,
    String date,
  ) {
    return 'പ്രിയ $name, പോളിസി $number-ന്റെ $amount പ്രീമിയം $date-ന് അടയ്ക്കണം. ദയവായി നിങ്ങളുടെ പോസ്റ്റ് ഓഫീസിൽ അടയ്ക്കുക.';
  }

  @override
  String get tileProfile => 'ഏജന്റ് പ്രൊഫൈൽ';

  @override
  String get descProfile => 'ക്വട്ടേഷനിൽ നിങ്ങളുടെ പേരും ലോഗോയും';

  @override
  String get profileTitle => 'ഏജന്റ് പ്രൊഫൈൽ';

  @override
  String get agentNameField => 'നിങ്ങളുടെ പേര്';

  @override
  String get agentPhoneField => 'നിങ്ങളുടെ ഫോൺ';

  @override
  String get agentCodeField => 'ഏജന്റ് ID / ഓഫീസ് (ഐച്ഛികം)';

  @override
  String get chooseLogo => 'ഫോട്ടോ അല്ലെങ്കിൽ ലോഗോ തിരഞ്ഞെടുക്കുക';

  @override
  String get removeLogo => 'നീക്കുക';

  @override
  String get profileNote =>
      'ക്വട്ടേഷനുകളിലും ഓർമ്മപ്പെടുത്തൽ സന്ദേശങ്ങളിലും കാണിക്കും. ഈ ഫോണിൽ മാത്രം സൂക്ഷിക്കുന്നു.';

  @override
  String get profileSaved => 'പ്രൊഫൈൽ സേവ് ചെയ്തു.';

  @override
  String get searchPolicies => 'പേര്, പോളിസി നം. അല്ലെങ്കിൽ മൊബൈൽ തിരയുക';

  @override
  String get sortLabel => 'ക്രമം';

  @override
  String get sortName => 'പേര്';

  @override
  String get sortNextDue => 'അടുത്ത തവണ';

  @override
  String get sortSumAssured => 'ഇൻഷുർ തുക';

  @override
  String noSearchResults(String query) {
    return '“$query” മായി യോജിക്കുന്ന പോളിസികളില്ല.';
  }

  @override
  String get filterAll => 'എല്ലാം';

  @override
  String get filterPending => 'ബാക്കി';

  @override
  String get filterCollected => 'പിരിച്ചു';

  @override
  String get markCollected => 'പിരിച്ചതായി അടയാളപ്പെടുത്തുക';

  @override
  String get markNotCollected => 'പിരിച്ചിട്ടില്ലെന്ന് അടയാളപ്പെടുത്തുക';

  @override
  String get duesPendingTotal => 'ഇനിയും പിരിക്കാനുള്ളത്';

  @override
  String duesCollectedOf(int collected, int total) {
    return '$total ൽ $collected പിരിച്ചു';
  }

  @override
  String get duesMonthTotal => 'മാസത്തെ ആകെ';

  @override
  String get collectedNote =>
      'പിരിവ് അടയാളങ്ങൾ നിങ്ങളുടെ സ്വന്തം രേഖയാണ്. ഇവ ഇന്ത്യാ പോസ്റ്റ് സംവിധാനത്തിൽ അടവ് പരിശോധിക്കുന്നില്ല.';

  @override
  String get noDuesInFilter => 'ഈ പട്ടികയിൽ ഒന്നുമില്ല.';
}
