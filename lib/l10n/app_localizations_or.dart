// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String get appTitle => 'ପିଏଲଆଇ ସହାୟକ';

  @override
  String get tilePremium => 'ପ୍ରିମିୟମ';

  @override
  String get tileMaturity => 'ପରିପକ୍ୱତା';

  @override
  String get tileCompare => 'ତୁଳନା';

  @override
  String get tileEligibility => 'ଯୋଗ୍ୟତା';

  @override
  String get tileMyPolicies => 'ମୋ ପଲିସି';

  @override
  String get tileQuotation => 'କୋଟେସନ';

  @override
  String get comingSoon => 'ଶୀଘ୍ର ଆସୁଛି';

  @override
  String get sampleDataBanner => 'ନମୁନା ତଥ୍ୟ – ସରକାରୀ ନୁହେଁ';

  @override
  String ratesFooter(String financialYear) {
    return 'ହାର ଆର୍ଥିକ ବର୍ଷ $financialYear • ଉତ୍ସ: ଭାରତୀୟ ଡାକ';
  }

  @override
  String get bonusDisclaimer =>
      'ବୋନସ ହାର ପ୍ରତିବର୍ଷ ଘୋଷଣା କରାଯାଏ ଏବଂ ଭବିଷ୍ୟତ ପାଇଁ ନିଶ୍ଚିତ ନୁହେଁ। ଅନ୍ତିମ ରାଶି ଭାରତୀୟ ଡାକ ଅନୁଯାୟୀ।';

  @override
  String get independentDisclaimerTitle => 'ଆରମ୍ଭ କରିବା ପୂର୍ବରୁ';

  @override
  String get independentDisclaimer =>
      'ଏହା ଏକ ସ୍ୱାଧୀନ କାଲକୁଲେଟର, ଭାରତୀୟ ଡାକର ସରକାରୀ ଆପ୍ ନୁହେଁ। ସମସ୍ତ ଗଣନା ଆପଣଙ୍କ ଫୋନରେ ହିଁ ହୁଏ; କୌଣସି ତଥ୍ୟ ସଂଗ୍ରହ କରାଯାଏ ନାହିଁ।';

  @override
  String get understood => 'ମୁଁ ବୁଝିଲି';

  @override
  String dataLoadError(String error) {
    return 'ହାର ତଥ୍ୟ ଲୋଡ୍ ହୋଇପାରିଲା ନାହିଁ: $error';
  }

  @override
  String get maturityTitle => 'ପରିପକ୍ୱତା ଓ ବୋନସ';

  @override
  String get eligibilityTitle => 'ଯୋଗ୍ୟତା ଯାଞ୍ଚ';

  @override
  String get premiumTitle => 'ପ୍ରିମିୟମ କାଲକୁଲେଟର';

  @override
  String get schemePli => 'ଡାକ ଜୀବନ ବୀମା (PLI)';

  @override
  String get schemeRpli => 'ଗ୍ରାମୀଣ ଡାକ ଜୀବନ ବୀମା (RPLI)';

  @override
  String get planLabel => 'ଯୋଜନା';

  @override
  String rulesPendingSuffix(String plan) {
    return '$plan (ନିୟମ ବାକି)';
  }

  @override
  String get entryAgeLabel => 'ପ୍ରବେଶ ବୟସ';

  @override
  String get childAgeLabel => 'ପିଲାର ବୟସ';

  @override
  String get spouseAgeLabel => 'ଜୀବନସାଥୀଙ୍କ ବୟସ';

  @override
  String ageYears(int age) {
    return '$age ବର୍ଷ';
  }

  @override
  String get decrease => 'କମାନ୍ତୁ';

  @override
  String get increase => 'ବଢ଼ାନ୍ତୁ';

  @override
  String get ageBasisNote =>
      'ପୂର୍ଣ୍ଣ ବର୍ଷରେ ବୟସ ଲେଖନ୍ତୁ। ଭାରତୀୟ ଡାକର ବୟସ ନିୟମ ନିଶ୍ଚିତ ହେବା ପରେ ଜନ୍ମ ତାରିଖରୁ ବୟସ ଗଣନା ସୁବିଧା ଯୋଡ଼ାଯିବ।';

  @override
  String get sumAssuredLabel => 'ବୀମା ରାଶି (₹)';

  @override
  String get maturityAgeLabel => 'ପରିପକ୍ୱତା ବୟସ';

  @override
  String get termLabel => 'ପଲିସି ଅବଧି';

  @override
  String termYears(int years) {
    return '$years ବର୍ଷ';
  }

  @override
  String get startDateLabel => 'ପଲିସି ଆରମ୍ଭ ତାରିଖ';

  @override
  String get resultMaturityValue => 'ପରିପକ୍ୱତା ରାଶି';

  @override
  String get resultTotalBenefits => 'ମୋଟ ପ୍ରାପ୍ୟ ଲାଭ';

  @override
  String get sumAssuredRow => 'ବୀମା ରାଶି';

  @override
  String get termRow => 'ଅବଧି';

  @override
  String bonusRateRow(String fy) {
    return 'ବୋନସ ହାର (ଆ.ବ. $fy)';
  }

  @override
  String bonusRateValue(int rate) {
    return 'ପ୍ରତି ₹1,000ରେ ବାର୍ଷିକ ₹$rate';
  }

  @override
  String get annualBonusRow => 'ବାର୍ଷିକ ବୋନସ';

  @override
  String totalBonusRow(int years) {
    return 'ମୋଟ ବୋନସ ($years ବର୍ଷ)';
  }

  @override
  String get terminalBonusRow => 'ଟର୍ମିନାଲ ବୋନସ';

  @override
  String projectionNote(String fy) {
    return 'ଧରିନିଆଯାଇଛି ଯେ ଆ.ବ. $fyର ବୋନସ ହାର ଅବଧିର ପ୍ରତି ବର୍ଷ ଜାରି ରହିବ।';
  }

  @override
  String get timelineTitle => 'ଜୀବିତ ଲାଭ ସମୟସୂଚୀ';

  @override
  String timelineYear(int year) {
    return '$year ବର୍ଷ';
  }

  @override
  String get timelineSurvival => 'ଜୀବିତ ଲାଭ';

  @override
  String get timelineMaturity => 'ପରିପକ୍ୱତା: ବାକି ବୀମା ରାଶି + ସମ୍ପୂର୍ଣ୍ଣ ବୋନସ';

  @override
  String get timelineDeathNote =>
      'ଅବଧି ମଧ୍ୟରେ ମୃତ୍ୟୁ ହେଲେ: ପୂର୍ବରୁ ଦିଆଯାଇଥିବା ଲାଭ କାଟି ନ ନେଇ ସମ୍ପୂର୍ଣ୍ଣ ବୀମା ରାଶି + ବୋନସ।';

  @override
  String get notAvailableTitle => 'ଏପର୍ଯ୍ୟନ୍ତ ଉପଲବ୍ଧ ନାହିଁ';

  @override
  String get rulesPendingBody =>
      'ଏହି ଯୋଜନାର ନିୟମ ଭାରତୀୟ ଡାକର ସରକାରୀ ସର୍କୁଲାରରୁ ନିଶ୍ଚିତ ହେବା ପରେ ଗଣନା ଯୋଡ଼ାଯିବ।';

  @override
  String get premiumPendingBody =>
      'ପ୍ରିମିୟମ ଭାରତୀୟ ଡାକର ସରକାରୀ ପ୍ରିମିୟମ ସାରଣୀରୁ ହିଁ ଆସିବା ଆବଶ୍ୟକ। ସରକାରୀ ସାରଣୀ ଯୋଡ଼ି ଯାଞ୍ଚ କରିବା ପରେ ଏହି କାଲକୁଲେଟର ଚାଲୁ ହେବ — ଆନୁମାନିକ ପ୍ରିମିୟମ ଦେଖାଯାଏ ନାହିଁ।';

  @override
  String missingBonusRate(String fy) {
    return 'ଆ.ବ. $fy ପାଇଁ କୌଣସି ଘୋଷିତ ବୋନସ ହାର ନାହିଁ।';
  }

  @override
  String vEntryAge(String plan, int min, int max, int age) {
    return '$planର ପ୍ରବେଶ ବୟସ $min–$max। ଆପଣଙ୍କ ବୟସ: $age';
  }

  @override
  String vChildAge(int min, int max, int age) {
    return 'ପିଲାର ବୟସ $min–$max ହେବା ଆବଶ୍ୟକ। ଲେଖାଯାଇଛି: $age';
  }

  @override
  String vSpouseAge(int min, int max, int age) {
    return 'ଜୀବନସାଥୀଙ୍କ ବୟସ $min–$max ହେବା ଆବଶ୍ୟକ। ଲେଖାଯାଇଛି: $age';
  }

  @override
  String vSaMin(String min, String sa) {
    return 'ସର୍ବନିମ୍ନ ବୀମା ରାଶି $min। ଲେଖାଯାଇଛି: $sa';
  }

  @override
  String vSaMax(String max, String sa) {
    return 'ସର୍ବାଧିକ ବୀମା ରାଶି $max (ଏହି ଯୋଜନାରେ ଆପଣଙ୍କ ସମସ୍ତ ପଲିସି ମିଶାଇ)। ଲେଖାଯାଇଛି: $sa';
  }

  @override
  String vSaMultiple(String multiple) {
    return 'ବୀମା ରାଶି $multipleର ଗୁଣିତକ ହେବା ଆବଶ୍ୟକ';
  }

  @override
  String vMaturityNotOffered(int value, String allowed) {
    return 'ପରିପକ୍ୱତା ବୟସ $value ଉପଲବ୍ଧ ନାହିଁ। ଏଥିରୁ ବାଛନ୍ତୁ: $allowed';
  }

  @override
  String vCeasingNotOffered(int value, String allowed) {
    return 'ପ୍ରିମିୟମ ଦେବା ବୟସ $value ଉପଲବ୍ଧ ନାହିଁ। ଏଥିରୁ ବାଛନ୍ତୁ: $allowed';
  }

  @override
  String vTermNotOffered(int value, String allowed) {
    return '$value ବର୍ଷର ଅବଧି ଉପଲବ୍ଧ ନାହିଁ। ଏଥିରୁ ବାଛନ୍ତୁ: $allowed';
  }

  @override
  String vNotAfterEntry(int value, int age) {
    return 'ପରିପକ୍ୱତା ବୟସ $value ପ୍ରବେଶ ବୟସ ($age)ଠାରୁ ଅଧିକ ହେବା ଆବଶ୍ୟକ।';
  }

  @override
  String vTermRange(int min, int max, int term) {
    return 'ଅବଧି $min–$max ବର୍ଷ ହେବା ଆବଶ୍ୟକ। ଲେଖାଯାଇଛି: $term';
  }

  @override
  String vParentAge(int max, int age) {
    return 'ଅଭିଭାବକଙ୍କ ବୟସ $max କିମ୍ବା କମ୍ ହେବା ଆବଶ୍ୟକ। ଲେଖାଯାଇଛି: $age';
  }

  @override
  String vTooManyChildren(int max) {
    return 'ସର୍ବାଧିକ $max ପିଲାଙ୍କୁ ବୀମା କରାଯାଇପାରିବ।';
  }

  @override
  String vChildSaCap(String cap, String sa) {
    return 'ଏହି ପିଲା ପାଇଁ ସର୍ବାଧିକ ବୀମା ରାଶି $cap। ଲେଖାଯାଇଛି: $sa';
  }

  @override
  String get vMissing => 'ଦୟାକରି ସମସ୍ତ ବିବରଣୀ ପୂରଣ କରନ୍ତୁ।';

  @override
  String get eligibilityIntro =>
      'ବ୍ୟକ୍ତିଙ୍କ ପାଇଁ ପ୍ରଯୁଜ୍ୟ ସମସ୍ତ ବିକଳ୍ପ ବାଛନ୍ତୁ, ତାପରେ ବୟସ ଲେଖନ୍ତୁ।';

  @override
  String get groupsPli => 'PLI — ଏଥିରୁ ଯେକୌଣସି ଗୋଟିଏ';

  @override
  String get groupsRpli => 'RPLI — ଏଥିରୁ ଯେକୌଣସି ଗୋଟିଏ';

  @override
  String get group_central_state_govt => 'କେନ୍ଦ୍ର / ରାଜ୍ୟ ସରକାରୀ କର୍ମଚାରୀ';

  @override
  String get group_defence_paramilitary => 'ପ୍ରତିରକ୍ଷା / ଅର୍ଦ୍ଧସାମରିକ ବଳ';

  @override
  String get group_psu => 'ସାର୍ବଜନୀନ କ୍ଷେତ୍ର ଉଦ୍ୟୋଗ';

  @override
  String get group_banks => 'ବ୍ୟାଙ୍କ କର୍ମଚାରୀ';

  @override
  String get group_local_bodies => 'ସ୍ଥାନୀୟ ସଂସ୍ଥା କର୍ମଚାରୀ';

  @override
  String get group_educational_institutions =>
      'ଶିକ୍ଷାନୁଷ୍ଠାନ (ସ୍ୱୀକୃତ ଘରୋଇ ସହିତ)';

  @override
  String get group_listed_companies => 'ତାଲିକାଭୁକ୍ତ କମ୍ପାନୀ କର୍ମଚାରୀ';

  @override
  String get group_professionals => 'ବୃତ୍ତିଗତ (ଡାକ୍ତର, ଇଞ୍ଜିନିୟର, ସିଏ, ଓକିଲ…)';

  @override
  String get group_graduates_diploma_holders => 'ସ୍ନାତକ କିମ୍ବା ଡିପ୍ଲୋମାଧାରୀ';

  @override
  String get group_rural_resident => 'ଗ୍ରାମାଞ୍ଚଳର ବାସିନ୍ଦା';

  @override
  String get group_scheduled_bank_savings_account_holder =>
      'ଅନୁସୂଚିତ ବ୍ୟାଙ୍କରେ ସଞ୍ଚୟ ଖାତାଧାରୀ';

  @override
  String get ageLabel => 'ବୟସ';

  @override
  String get eligibleFor => 'ଯୋଗ୍ୟ';

  @override
  String plansAtAge(int age) {
    return '$age ବର୍ଷ ବୟସରେ ଉପଲବ୍ଧ ଯୋଜନା';
  }

  @override
  String get childPlansTitle => 'ପିଲାଙ୍କ ପଲିସି (ଆପଣଙ୍କ ପିଲାଙ୍କ ପାଇଁ)';

  @override
  String get selectGroupPrompt =>
      'ଯୋଗ୍ୟ ଯୋଜନା ଦେଖିବାକୁ ଉପରେ ଅତି କମରେ ଗୋଟିଏ ବିକଳ୍ପ ବାଛନ୍ତୁ।';

  @override
  String noPlansAtAge(int age) {
    return '$age ବର୍ଷ ବୟସରେ କୌଣସି ଯୋଜନାରେ ପ୍ରବେଶ ନାହିଁ।';
  }

  @override
  String get eligibilityNote =>
      'ଅନ୍ତିମ ଗ୍ରହଣ ଭାରତୀୟ ଡାକର ସ୍ୱାସ୍ଥ୍ୟ ପରୀକ୍ଷା ଓ ଦଲିଲ ଉପରେ ନିର୍ଭରଶୀଳ।';

  @override
  String get languageLabel => 'ଭାଷା';

  @override
  String get systemLanguage => 'ଡିଭାଇସର ଭାଷା';

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
