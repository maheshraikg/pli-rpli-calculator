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
}
