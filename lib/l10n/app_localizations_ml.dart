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
