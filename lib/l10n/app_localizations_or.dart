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
  String get tileAfford => 'କେତେ ସମ୍ଭବ';

  @override
  String get tileTools => 'ପଲିସି ଉପକରଣ';

  @override
  String get tilePlans => 'ଯୋଜନା';

  @override
  String get tileAbout => 'ବିଷୟରେ';

  @override
  String get dobLabel => 'ଜନ୍ମ ତାରିଖ';

  @override
  String get useAgeInstead => 'ଏହା ବଦଳରେ ବୟସ ଲେଖନ୍ତୁ';

  @override
  String get useDobInstead => 'ଜନ୍ମ ତାରିଖ ଲେଖନ୍ତୁ';

  @override
  String ageFromDobNearest(int age) {
    return 'ଆରମ୍ଭ ତାରିଖରେ ପ୍ରବେଶ ବୟସ: $age (ନିକଟତମ ଜନ୍ମଦିନ ବୟସ)';
  }

  @override
  String ageFromDobLast(int age) {
    return 'ଆରମ୍ଭ ତାରିଖରେ ପ୍ରବେଶ ବୟସ: $age (ଶେଷ ଜନ୍ମଦିନ ବୟସ)';
  }

  @override
  String get premiumCeasingAgeLabel => 'ପ୍ରିମିୟମ ଦେବା ବୟସ';

  @override
  String get frequencyLabel => 'ଦେୟ ଆବୃତ୍ତି';

  @override
  String get freqMonthly => 'ମାସିକ';

  @override
  String get freqQuarterly => 'ତ୍ରୈମାସିକ';

  @override
  String get freqHalfYearly => 'ଷାଣ୍ମାସିକ';

  @override
  String get freqYearly => 'ବାର୍ଷିକ';

  @override
  String get premiumPerInstalment => 'ପ୍ରତି କିସ୍ତି ପ୍ରିମିୟମ';

  @override
  String get tablePremiumRow => 'ସାରଣୀ ପ୍ରିମିୟମ';

  @override
  String get saRebateRow => 'ବୀମା ରାଶି ରିହାତି';

  @override
  String totalPremiumRow(int count) {
    return 'ମୋଟ ପ୍ରିମିୟମ ($count କିସ୍ତି)';
  }

  @override
  String get payingTermRow => 'ପ୍ରିମିୟମ ଦେବା ଅବଧି';

  @override
  String get returnRow => 'ପ୍ରଭାବୀ ରିଟର୍ଣ୍ଣ (XIRR)';

  @override
  String returnValue(String percent) {
    return 'ବାର୍ଷିକ $percent%';
  }

  @override
  String get lifeCoverRow => 'ଜୀବନ ସୁରକ୍ଷା';

  @override
  String get allFrequenciesTitle => 'ସମସ୍ତ ଦେୟ ଆବୃତ୍ତି';

  @override
  String get notInTable => 'ସରକାରୀ ସାରଣୀରେ ଉପଲବ୍ଧ ନାହିଁ';

  @override
  String get noTableForPlan =>
      'ଏହି ଯୋଜନାର ପ୍ରିମିୟମ ସାରଣୀ ଏପର୍ଯ୍ୟନ୍ତ ଯୋଡ଼ାଯାଇନାହିଁ।';

  @override
  String get illustrationTitle => 'ବର୍ଷାନୁସାରେ ଲାଭ ବିବରଣୀ';

  @override
  String get colYear => 'ବର୍ଷ';

  @override
  String get colPremiumsPaid => 'ଦିଆଯାଇଥିବା ପ୍ରିମିୟମ';

  @override
  String get colBonus => 'ବୋନସ';

  @override
  String get colLifeCover => 'ଜୀବନ ସୁରକ୍ଷା';

  @override
  String get makeQuotation => 'କୋଟେସନ ତିଆରି କରନ୍ତୁ';

  @override
  String get gstNote =>
      'ଜିଏସଟି: 22 ସେପ୍ଟେମ୍ବର 2025 କିମ୍ବା ପରେ ଦିଆଯାଇଥିବା ବ୍ୟକ୍ତିଗତ ଜୀବନ ବୀମା ପ୍ରିମିୟମରେ ଶୂନ୍ୟ।';

  @override
  String get chartTitle => 'ଦିଆଯାଇଥିବା ପ୍ରିମିୟମ ବନାମ ଲାଭ';

  @override
  String get chartPaid => 'ମୋଟ ପ୍ରିମିୟମ';

  @override
  String get chartReceived => 'ମୋଟ ଲାଭ';

  @override
  String get showTable => 'ବର୍ଷାନୁସାରେ ସାରଣୀ ଦେଖାନ୍ତୁ';

  @override
  String get hideTable => 'ବର୍ଷାନୁସାରେ ସାରଣୀ ଲୁଚାନ୍ତୁ';

  @override
  String get reverseTitle => 'ମୁଁ କେତେ ନେଇପାରିବି?';

  @override
  String get budgetLabel => 'ପ୍ରତି କିସ୍ତି ବଜେଟ (₹)';

  @override
  String get reverseIntro =>
      'ଆପଣ କେତେ ଦେଇପାରିବେ ଲେଖନ୍ତୁ। ପ୍ରତ୍ୟେକ ଯୋଜନା ବିକଳ୍ପ ସେହି ରାଶି ମଧ୍ୟରେ ସର୍ବାଧିକ ବୀମା ରାଶି ଦେଖାଏ।';

  @override
  String optMaturityAge(int age) {
    return '$ageରେ ପରିପକ୍ୱତା';
  }

  @override
  String optCeasingAge(int age) {
    return '$age ବର୍ଷ ପର୍ଯ୍ୟନ୍ତ ପ୍ରିମିୟମ';
  }

  @override
  String optTerm(int years) {
    return '$years ବର୍ଷର ଅବଧି';
  }

  @override
  String get reverseNone => 'ଏହି ବୟସରେ ଏହି ବଜେଟରେ କୌଣସି ଯୋଜନା ମେଳ ହେଉନାହିଁ।';

  @override
  String get saShort => 'ବୀମା ରାଶି';

  @override
  String get premiumShort => 'ପ୍ରିମିୟମ';

  @override
  String get compareTitle => 'ଯୋଜନା ତୁଳନା';

  @override
  String optionN(int n) {
    return 'ବିକଳ୍ପ $n';
  }

  @override
  String get addOption => 'ବିକଳ୍ପ ଯୋଡ଼ନ୍ତୁ';

  @override
  String get removeOption => 'ବିକଳ୍ପ ହଟାନ୍ତୁ';

  @override
  String get maturityShort => 'ପରିପକ୍ୱତା / ଲାଭ';

  @override
  String get totalPaidShort => 'ମୋଟ ଦେୟ';

  @override
  String get returnShort => 'ରିଟର୍ଣ୍ଣ';

  @override
  String get lifeCoverShort => 'ଜୀବନ ସୁରକ୍ଷା';

  @override
  String get comparisonTitle => 'ତୁଳନା';

  @override
  String get toolsTitle => 'ପଲିସି ଉପକରଣ';

  @override
  String get tabLoan => 'ଋଣ';

  @override
  String get tabPaidUp => 'ପେଡ୍-ଅପ୍';

  @override
  String get tabRevival => 'ପୁନରୁଜ୍ଜୀବନ';

  @override
  String get tabAdvance => 'ଅଗ୍ରିମ';

  @override
  String get yearsInForceLabel => 'ପଲିସି କେତେ ବର୍ଷ ଧରି ଚାଲୁ ଅଛି';

  @override
  String get loanAmountLabel => 'ଋଣ ରାଶି (₹)';

  @override
  String get loanMonthsLabel => 'ପରିଶୋଧ ପର୍ଯ୍ୟନ୍ତ ମାସ';

  @override
  String monthsValue(int months) {
    return '$months ମାସ';
  }

  @override
  String get loanInterestRow => 'ସୁଧ';

  @override
  String get loanTotalRow => 'ମୋଟ ପରିଶୋଧ';

  @override
  String loanRateNote(String rate) {
    return 'ବାର୍ଷିକ $rate% ସୁଧ, ଷାଣ୍ମାସିକ ଚକ୍ରବୃଦ୍ଧି।';
  }

  @override
  String loanAvailableAfter(int years) {
    return '$years ବର୍ଷ ପରେ ଋଣ ଉପଲବ୍ଧ।';
  }

  @override
  String get loanNotOffered => 'ଏହି ଯୋଜନାରେ ଋଣ ସୁବିଧା ନାହିଁ।';

  @override
  String get loanEligibleYes => 'ଋଣ ପାଇଁ ଯୋଗ୍ୟ';

  @override
  String get loanEligibleNo => 'ଏପର୍ଯ୍ୟନ୍ତ ଋଣ ପାଇଁ ଯୋଗ୍ୟ ନୁହେଁ';

  @override
  String get loanAmountNote =>
      'ସର୍ବାଧିକ ଋଣ ସମର୍ପଣ ମୂଲ୍ୟ ଉପରେ ନିର୍ଭର କରେ, ଯାହା ଭାରତୀୟ ଡାକ ଗଣନା କରେ।';

  @override
  String get premiumsPaidLabel => 'ଦିଆଯାଇଥିବା କିସ୍ତି';

  @override
  String get premiumsPayableLabel => 'ମୋଟ ଦେୟ କିସ୍ତି';

  @override
  String get paidUpSaRow => 'ପେଡ୍-ଅପ୍ ବୀମା ରାଶି';

  @override
  String get paidUpNote =>
      'ଆନୁମାନିକ। ଅର୍ଜିତ ବୋନସ ଭାରତୀୟ ଡାକର ରେକର୍ଡ ଅନୁଯାୟୀ ଯୋଡ଼ାଯାଏ। ସମର୍ପଣ ମୂଲ୍ୟ ପାଇଁ ସରକାରୀ ସମର୍ପଣ ଗୁଣକ ଦରକାର, ଯାହା ଗଣନା କରାଯାଇନାହିଁ।';

  @override
  String paidUpNotEligible(int years) {
    return 'ପଲିସି $years ବର୍ଷ ଚାଲୁ ରହିବା ପରେ ହିଁ ପେଡ୍-ଅପ୍ ହୋଇପାରିବ।';
  }

  @override
  String get paidUpInvalid =>
      'ଦିଆଯାଇଥିବା କିସ୍ତି ଦେୟ କିସ୍ତିଠାରୁ ଅଧିକ ହୋଇପାରିବ ନାହିଁ।';

  @override
  String get instalmentLabel => 'ପ୍ରତି କିସ୍ତି ପ୍ରିମିୟମ (₹)';

  @override
  String get firstUnpaidLabel => 'ପ୍ରଥମ ବକେୟା କିସ୍ତିର ତାରିଖ';

  @override
  String get payDateLabel => 'ଦେୟ ତାରିଖ';

  @override
  String get missedRow => 'ବକେୟା କିସ୍ତି';

  @override
  String get arrearsRow => 'ବକେୟା';

  @override
  String get defaultFeeRow => 'ବିଳମ୍ବ ଶୁଳ୍କ';

  @override
  String get totalPayableRow => 'ମୋଟ ଦେୟ';

  @override
  String revivalNote(String percent) {
    return 'ବିଳମ୍ବର ପ୍ରତି ମାସ ପାଇଁ କିସ୍ତିର $percent% ବିଳମ୍ବ ଶୁଳ୍କ। ଦୀର୍ଘ ସମୟ ପରେ ପୁନରୁଜ୍ଜୀବନ ପାଇଁ ଡାକ୍ତରୀ ପ୍ରମାଣପତ୍ର ଲାଗିପାରେ।';
  }

  @override
  String revivalLine(String date, int months, String fee) {
    return 'ବକେୟା $date • $months ମାସ ବିଳମ୍ବ • ଶୁଳ୍କ $fee';
  }

  @override
  String get nothingDue => 'ସେହି ତାରିଖରେ କିଛି ବକେୟା ନାହିଁ।';

  @override
  String get monthsAdvanceLabel => 'ଅଗ୍ରିମ ଦିଆଯାଇଥିବା ମାସ';

  @override
  String rebateRow(String percent) {
    return 'ରିହାତି ($percent%)';
  }

  @override
  String get amountDueRow => 'ଦେୟ ରାଶି';

  @override
  String get payableRow => 'ଆପଣ ଦେବେ';

  @override
  String get advanceNote =>
      'ଦେଖାଯାଇଥିବା ରିହାତି ହାର ତଥ୍ୟର ଅଗ୍ରିମ ଦେୟ ରିହାତି ଅନୁଯାୟୀ; ପ୍ରିମିୟମ ଅଗ୍ରିମ ଦେଲେ ପ୍ରଯୁଜ୍ୟ।';

  @override
  String get policiesTitle => 'ମୋ ପଲିସି';

  @override
  String get noPolicies =>
      'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ପଲିସି ସଞ୍ଚୟ ହୋଇନାହିଁ। ଯୋଡ଼ିବାକୁ + ଦବାନ୍ତୁ।';

  @override
  String get addPolicy => 'ପଲିସି ଯୋଡ଼ନ୍ତୁ';

  @override
  String get editPolicy => 'ପଲିସି ସମ୍ପାଦନା';

  @override
  String get holderNameLabel => 'ପଲିସିଧାରୀଙ୍କ ନାମ';

  @override
  String get policyNumberLabel => 'ପଲିସି ନମ୍ବର';

  @override
  String get premiumAmountLabel => 'ପ୍ରତି କିସ୍ତି ପ୍ରିମିୟମ (₹, ରସିଦ ଅନୁଯାୟୀ)';

  @override
  String get save => 'ସଞ୍ଚୟ';

  @override
  String get delete => 'ବିଲୋପ';

  @override
  String get deleteConfirm => 'ଏହି ପଲିସି ବିଲୋପ କରିବେ?';

  @override
  String get cancel => 'ବାତିଲ';

  @override
  String nextDue(String date) {
    return 'ପରବର୍ତ୍ତୀ କିସ୍ତି: $date';
  }

  @override
  String get noMoreDues => 'ସମସ୍ତ ପ୍ରିମିୟମ ଦିଆଯାଇଛି';

  @override
  String get remindersLabel => 'ପ୍ରତି କିସ୍ତିର 3 ଦିନ ପୂର୍ବରୁ ମନେ ପକାନ୍ତୁ';

  @override
  String get remindersDenied => 'ଏହି ଆପ୍ ପାଇଁ ବିଜ୍ଞପ୍ତି ବନ୍ଦ ଅଛି।';

  @override
  String get accruedBonusRow => 'ଏପର୍ଯ୍ୟନ୍ତ ଜମା ବୋନସ';

  @override
  String bonusMissingYears(String years) {
    return 'ଆ.ବ. $yearsର ବୋନସ ହାର ଆପ୍ ତଥ୍ୟରେ ନାହିଁ; ମୋଟରେ ସେହି ବର୍ଷଗୁଡ଼ିକ ଧରାଯାଇନାହିଁ।';
  }

  @override
  String maturityOn(String date) {
    return '$dateରେ ପରିପକ୍ୱତା';
  }

  @override
  String get upcomingDues => 'ଆଗାମୀ କିସ୍ତି ତାରିଖ';

  @override
  String get yearsInForceRow => 'ଚାଲୁ ବର୍ଷ';

  @override
  String get reminderTitle => 'ପିଏଲଆଇ ପ୍ରିମିୟମ ବକେୟା';

  @override
  String reminderBody(String name, String amount, String date, String number) {
    return '$name: $amount $dateରେ ଦେୟ (ପଲିସି $number)';
  }

  @override
  String get savedLocally => 'କେବଳ ଏହି ଫୋନରେ ସଞ୍ଚୟ।';

  @override
  String get requiredField => 'ଆବଶ୍ୟକ';

  @override
  String get projectedMaturityRow => 'ଆନୁମାନିକ ପରିପକ୍ୱତା ରାଶି';

  @override
  String get quotationTitle => 'କୋଟେସନ';

  @override
  String get customerNameLabel => 'ଗ୍ରାହକଙ୍କ ନାମ';

  @override
  String get agentNameLabel => 'ପ୍ରସ୍ତୁତକର୍ତ୍ତା (ଇଚ୍ଛାଧୀନ)';

  @override
  String get sharePdf => 'PDF ସେୟାର କରନ୍ତୁ';

  @override
  String get shareImage => 'ଛବି ସେୟାର କରନ୍ତୁ';

  @override
  String get quotationHeading => 'ପ୍ରିମିୟମ କୋଟେସନ';

  @override
  String preparedOn(String date) {
    return '$dateରେ ପ୍ରସ୍ତୁତ';
  }

  @override
  String quotationFor(String name) {
    return 'ପାଇଁ: $name';
  }

  @override
  String preparedBy(String name) {
    return 'ପ୍ରସ୍ତୁତକର୍ତ୍ତା: $name';
  }

  @override
  String get quotationInvalid =>
      'କୋଟେସନ ତିଆରି କରିବାକୁ ଯୋଜନା ବିବରଣୀ ସମ୍ପୂର୍ଣ୍ଣ କରନ୍ତୁ।';

  @override
  String get planDetailsTitle => 'ଯୋଜନା ବିବରଣୀ';

  @override
  String get planInfoTitle => 'ଯୋଜନା ସୂଚନା';

  @override
  String entryAgeInfo(int min, int max) {
    return 'ପ୍ରବେଶ ବୟସ: $min–$max';
  }

  @override
  String maturityAgesInfo(String ages) {
    return 'ପରିପକ୍ୱତା ବୟସ: $ages';
  }

  @override
  String ceasingAgesInfo(String ages, int age) {
    return 'ପ୍ରିମିୟମ ଦେବା ବୟସ: $ages; $ageରେ ପରିପକ୍ୱତା';
  }

  @override
  String termsInfo(String terms) {
    return 'ଅବଧି: $terms ବର୍ଷ';
  }

  @override
  String survivalInfo(String list) {
    return 'ମନି ବ୍ୟାକ: $list';
  }

  @override
  String survivalItem(int percent, int year) {
    return '$year ବର୍ଷରେ $percent%';
  }

  @override
  String loanInfo(int years) {
    return '$years ବର୍ଷ ପରେ ଋଣ';
  }

  @override
  String get noLoanInfo => 'ଋଣ ନାହିଁ';

  @override
  String surrenderInfo(int years) {
    return '$years ବର୍ଷ ପରେ ସମର୍ପଣ';
  }

  @override
  String get noSurrenderInfo => 'ସମର୍ପଣ ନାହିଁ';

  @override
  String bonusInfo(String fy, int rate) {
    return 'ଆ.ବ. $fy ବୋନସ: ପ୍ରତି ₹1,000ରେ ବାର୍ଷିକ ₹$rate';
  }

  @override
  String saLimitInfo(String min, String max) {
    return 'ବୀମା ରାଶି: $min – $max';
  }

  @override
  String jointInfo(int min, int max, int tmin, int tmax) {
    return 'ପ୍ରତ୍ୟେକ ଜୀବନସାଥୀଙ୍କ ବୟସ $min–$max; ଅବଧି $tmin–$tmax ବର୍ଷ';
  }

  @override
  String childInfo(int min, int max, int parent, int children, String cap) {
    return 'ପିଲାର ବୟସ $min–$max; ଅଭିଭାବକଙ୍କ ବୟସ $parent ପର୍ଯ୍ୟନ୍ତ; ସର୍ବାଧିକ $children ପିଲା; ବୀମା ରାଶି $cap ପର୍ଯ୍ୟନ୍ତ';
  }

  @override
  String conversionInfo(int years) {
    return '$years ବର୍ଷ ପରେ ଏଣ୍ଡୋମେଣ୍ଟ ବୀମାକୁ ପରିବର୍ତ୍ତନ କରାଯାଇପାରିବ';
  }

  @override
  String get faqTitle => 'ସାଧାରଣ ପ୍ରଶ୍ନ';

  @override
  String get faq1q => 'ବୋନସ କ\'ଣ ନିଶ୍ଚିତ?';

  @override
  String get faq1a =>
      'ନା। ଭାରତୀୟ ଡାକ ପ୍ରତିବର୍ଷ ବୋନସ ହାର ଘୋଷଣା କରେ। ଏଠାକାର ଆକଳନ ଭବିଷ୍ୟତର ପ୍ରତି ବର୍ଷ ପାଇଁ ସଦ୍ୟତମ ଘୋଷିତ ହାର ଧରିନିଏ।';

  @override
  String get faq2q => 'ପ୍ରିମିୟମ କେଉଁଠାରୁ ଆସେ?';

  @override
  String get faq2a =>
      'ଭାରତୀୟ ଡାକର ସରକାରୀ ପ୍ରିମିୟମ ସାରଣୀରୁ। ଆପ୍ କେବେ ବି ପ୍ରିମିୟମ ଆକଳନ କରେ ନାହିଁ।';

  @override
  String get faq3q => 'ଆୟକର ସୁବିଧା ଅଛି କି?';

  @override
  String get faq3a =>
      'ପ୍ରିମିୟମ ଧାରା 80C (ପୁରୁଣା କର ବ୍ୟବସ୍ଥା) ଅଧୀନରେ ଯୋଗ୍ୟ ହୋଇପାରେ ଏବଂ ପରିପକ୍ୱତା ରାଶି ଧାରା 10(10D) ଅଧୀନରେ ସର୍ତ୍ତସାପେକ୍ଷରେ କରମୁକ୍ତ ହୋଇପାରେ। ଏହା କର ପରାମର୍ଶ ନୁହେଁ।';

  @override
  String get faq4q => 'ପ୍ରିମିୟମରେ ଜିଏସଟି ଲାଗେ କି?';

  @override
  String get faq4a =>
      'ନା। 22 ସେପ୍ଟେମ୍ବର 2025ରୁ ବ୍ୟକ୍ତିଗତ ଜୀବନ ବୀମା ପ୍ରିମିୟମରେ ଜିଏସଟି ଶୂନ୍ୟ।';

  @override
  String get faq5q => 'PLI ଓ RPLI କିଏ ନେଇପାରିବେ?';

  @override
  String get faq5a =>
      'PLI: ସରକାରୀ ଓ ଅର୍ଦ୍ଧ-ସରକାରୀ କର୍ମଚାରୀ, ବୃତ୍ତିଗତ, ସ୍ନାତକ, ଡିପ୍ଲୋମାଧାରୀ ଓ ଭାରତୀୟ ଡାକ ତାଲିକାଭୁକ୍ତ କରିଥିବା ଅନ୍ୟମାନେ। RPLI: ଗ୍ରାମାଞ୍ଚଳ ବାସିନ୍ଦା ଓ ଅନୁସୂଚିତ ବ୍ୟାଙ୍କ ସଞ୍ଚୟ ଖାତାଧାରୀ।';

  @override
  String get aboutTitle => 'ବିଷୟରେ';

  @override
  String get privacyTitle => 'ଗୋପନୀୟତା';

  @override
  String get privacyBody =>
      'ପିଏଲଆଇ ସହାୟକ କୌଣସି ତଥ୍ୟ ସଂଗ୍ରହ କରେ ନାହିଁ। ଆପଣ ଲେଖୁଥିବା କିମ୍ବା ସଞ୍ଚୟ କରୁଥିବା ସବୁକିଛି ଏହି ଫୋନରେ ହିଁ ରହେ। ଖାତା କିମ୍ବା ଇଣ୍ଟରନେଟ ଆବଶ୍ୟକ ନାହିଁ।';

  @override
  String get dataSourceTitle => 'ହାର ତଥ୍ୟ';

  @override
  String dataSourceBody(String id, String date, String source) {
    return 'ନିୟମ $id, $dateରୁ ପ୍ରଭାବୀ। ଉତ୍ସ: $source';
  }

  @override
  String get provisionalTitle => 'ଏପର୍ଯ୍ୟନ୍ତ ନିଶ୍ଚିତ ହେବାକୁ ଥିବା ନିୟମ';

  @override
  String get provisionalIntro =>
      'ଭାରତୀୟ ଡାକର ସରକାରୀ ସର୍କୁଲାରରୁ ନିଶ୍ଚିତ ନହେବା ପର୍ଯ୍ୟନ୍ତ ଏହି ନିୟମଗୁଡ଼ିକ କାର୍ଯ୍ୟକାରୀ ଅନୁମାନ (ଇଂରାଜୀରେ):';

  @override
  String get checkUpdates => 'ହାର ଅପଡେଟ ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String updateInstalled(int version) {
    return 'ହାର ତଥ୍ୟ ସଂସ୍କରଣ $versionକୁ ଅପଡେଟ ହେଲା।';
  }

  @override
  String get updateCurrent => 'ହାର ତଥ୍ୟ ସଦ୍ୟତମ ଅଛି।';

  @override
  String updateFailed(String error) {
    return 'ଅପଡେଟ ବିଫଳ; ବର୍ତ୍ତମାନର ହାର ବଜାୟ ରହିଲା। $error';
  }

  @override
  String get sampleDataNote =>
      'ପ୍ରିମିୟମ ସାରଣୀଗୁଡ଼ିକ ନମୁନା ତଥ୍ୟ, ଭାରତୀୟ ଡାକର ସରକାରୀ ସଂଖ୍ୟା ନୁହେଁ।';

  @override
  String appVersion(String version) {
    return 'ସଂସ୍କରଣ $version';
  }
}
