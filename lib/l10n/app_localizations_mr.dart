// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'पीएलआय सहायक';

  @override
  String get tilePremium => 'प्रीमियम';

  @override
  String get tileMaturity => 'परिपक्वता';

  @override
  String get tileCompare => 'तुलना';

  @override
  String get tileEligibility => 'पात्रता';

  @override
  String get tileMyPolicies => 'माझ्या पॉलिसी';

  @override
  String get tileQuotation => 'कोटेशन';

  @override
  String get comingSoon => 'लवकरच';

  @override
  String get sampleDataBanner => 'नमुना डेटा – अधिकृत नाही';

  @override
  String ratesFooter(String financialYear) {
    return 'दर आर्थिक वर्ष $financialYear • स्रोत: भारतीय टपाल';
  }

  @override
  String get bonusDisclaimer =>
      'बोनस दर दरवर्षी जाहीर होतात आणि भविष्यासाठी हमी नाही. अंतिम रक्कम भारतीय टपालानुसार.';

  @override
  String get independentDisclaimerTitle => 'सुरू करण्यापूर्वी';

  @override
  String get independentDisclaimer =>
      'हा एक स्वतंत्र कॅल्क्युलेटर आहे, भारतीय टपालाचे अधिकृत ॲप नाही. सर्व गणना तुमच्या फोनवरच होते; कोणताही डेटा गोळा केला जात नाही.';

  @override
  String get understood => 'मला समजले';

  @override
  String dataLoadError(String error) {
    return 'दर डेटा लोड झाला नाही: $error';
  }

  @override
  String get maturityTitle => 'परिपक्वता आणि बोनस';

  @override
  String get eligibilityTitle => 'पात्रता तपासणी';

  @override
  String get premiumTitle => 'प्रीमियम कॅल्क्युलेटर';

  @override
  String get schemePli => 'टपाल जीवन विमा (PLI)';

  @override
  String get schemeRpli => 'ग्रामीण टपाल जीवन विमा (RPLI)';

  @override
  String get planLabel => 'योजना';

  @override
  String rulesPendingSuffix(String plan) {
    return '$plan (नियम प्रलंबित)';
  }

  @override
  String get entryAgeLabel => 'प्रवेश वय';

  @override
  String get childAgeLabel => 'मुलाचे वय';

  @override
  String get spouseAgeLabel => 'जोडीदाराचे वय';

  @override
  String ageYears(int age) {
    return '$age वर्षे';
  }

  @override
  String get decrease => 'कमी करा';

  @override
  String get increase => 'वाढवा';

  @override
  String get ageBasisNote =>
      'वय पूर्ण वर्षांत भरा. भारतीय टपालाचा वयाचा नियम निश्चित झाल्यावर जन्मतारखेवरून वय मोजण्याची सोय जोडली जाईल.';

  @override
  String get sumAssuredLabel => 'विमा रक्कम (₹)';

  @override
  String get maturityAgeLabel => 'परिपक्वता वय';

  @override
  String get termLabel => 'पॉलिसी मुदत';

  @override
  String termYears(int years) {
    return '$years वर्षे';
  }

  @override
  String get startDateLabel => 'पॉलिसी सुरू होण्याची तारीख';

  @override
  String get resultMaturityValue => 'परिपक्वता रक्कम';

  @override
  String get resultTotalBenefits => 'एकूण मिळणारे लाभ';

  @override
  String get sumAssuredRow => 'विमा रक्कम';

  @override
  String get termRow => 'मुदत';

  @override
  String bonusRateRow(String fy) {
    return 'बोनस दर (आ.व. $fy)';
  }

  @override
  String bonusRateValue(int rate) {
    return '₹1,000 मागे दरवर्षी ₹$rate';
  }

  @override
  String get annualBonusRow => 'वार्षिक बोनस';

  @override
  String totalBonusRow(int years) {
    return 'एकूण बोनस ($years वर्षे)';
  }

  @override
  String get terminalBonusRow => 'टर्मिनल बोनस';

  @override
  String projectionNote(String fy) {
    return 'मुदतीच्या प्रत्येक वर्षी आ.व. $fy चा बोनस दर कायम राहील असे गृहीत धरले आहे.';
  }

  @override
  String get timelineTitle => 'हयात लाभ वेळापत्रक';

  @override
  String timelineYear(int year) {
    return 'वर्ष $year';
  }

  @override
  String get timelineSurvival => 'हयात लाभ';

  @override
  String get timelineMaturity => 'परिपक्वता: उर्वरित विमा रक्कम + संपूर्ण बोनस';

  @override
  String get timelineDeathNote =>
      'मुदतीत मृत्यू झाल्यास: आधी दिलेले हयात लाभ न वजा करता संपूर्ण विमा रक्कम + बोनस.';

  @override
  String get notAvailableTitle => 'अद्याप उपलब्ध नाही';

  @override
  String get rulesPendingBody =>
      'या योजनेचे नियम भारतीय टपालाच्या अधिकृत परिपत्रकातून निश्चित झाल्यावर गणना जोडली जाईल.';

  @override
  String get premiumPendingBody =>
      'प्रीमियम भारतीय टपालाच्या अधिकृत प्रीमियम तक्त्यांमधूनच आला पाहिजे. अधिकृत तक्ते जोडून तपासल्यानंतर हा कॅल्क्युलेटर सुरू होईल — अंदाजे प्रीमियम दाखवले जात नाहीत.';

  @override
  String missingBonusRate(String fy) {
    return 'आ.व. $fy साठी जाहीर बोनस दर नाही.';
  }

  @override
  String vEntryAge(String plan, int min, int max, int age) {
    return '$plan साठी प्रवेश वय $min–$max आहे. तुमचे वय: $age';
  }

  @override
  String vChildAge(int min, int max, int age) {
    return 'मुलाचे वय $min–$max असावे. भरलेले: $age';
  }

  @override
  String vSpouseAge(int min, int max, int age) {
    return 'जोडीदाराचे वय $min–$max असावे. भरलेले: $age';
  }

  @override
  String vSaMin(String min, String sa) {
    return 'किमान विमा रक्कम $min आहे. भरलेली: $sa';
  }

  @override
  String vSaMax(String max, String sa) {
    return 'कमाल विमा रक्कम $max आहे (या योजनेतील तुमच्या सर्व पॉलिसी मिळून). भरलेली: $sa';
  }

  @override
  String vSaMultiple(String multiple) {
    return 'विमा रक्कम $multiple च्या पटीत असावी';
  }

  @override
  String vMaturityNotOffered(int value, String allowed) {
    return 'परिपक्वता वय $value उपलब्ध नाही. यातून निवडा: $allowed';
  }

  @override
  String vCeasingNotOffered(int value, String allowed) {
    return 'प्रीमियम भरण्याचे वय $value उपलब्ध नाही. यातून निवडा: $allowed';
  }

  @override
  String vTermNotOffered(int value, String allowed) {
    return '$value वर्षांची मुदत उपलब्ध नाही. यातून निवडा: $allowed';
  }

  @override
  String vNotAfterEntry(int value, int age) {
    return 'परिपक्वता वय $value हे प्रवेश वयापेक्षा ($age) जास्त असावे.';
  }

  @override
  String vTermRange(int min, int max, int term) {
    return 'मुदत $min–$max वर्षे असावी. भरलेली: $term';
  }

  @override
  String vParentAge(int max, int age) {
    return 'पालकांचे वय $max किंवा कमी असावे. भरलेले: $age';
  }

  @override
  String vTooManyChildren(int max) {
    return 'जास्तीत जास्त $max मुलांचा विमा होऊ शकतो.';
  }

  @override
  String vChildSaCap(String cap, String sa) {
    return 'या मुलासाठी कमाल विमा रक्कम $cap आहे. भरलेली: $sa';
  }

  @override
  String get vMissing => 'कृपया सर्व तपशील भरा.';

  @override
  String get eligibilityIntro =>
      'व्यक्तीला लागू होणारे सर्व पर्याय निवडा, नंतर वय भरा.';

  @override
  String get groupsPli => 'PLI — यापैकी कोणतेही एक';

  @override
  String get groupsRpli => 'RPLI — यापैकी कोणतेही एक';

  @override
  String get group_central_state_govt => 'केंद्र / राज्य सरकारी कर्मचारी';

  @override
  String get group_defence_paramilitary => 'संरक्षण / निमलष्करी दल';

  @override
  String get group_psu => 'सार्वजनिक क्षेत्र उपक्रम';

  @override
  String get group_banks => 'बँक कर्मचारी';

  @override
  String get group_local_bodies => 'स्थानिक स्वराज्य संस्था कर्मचारी';

  @override
  String get group_educational_institutions =>
      'शैक्षणिक संस्था (मान्यताप्राप्त खासगी सह)';

  @override
  String get group_listed_companies => 'सूचीबद्ध कंपनी कर्मचारी';

  @override
  String get group_professionals => 'व्यावसायिक (डॉक्टर, अभियंता, सीए, वकील…)';

  @override
  String get group_graduates_diploma_holders => 'पदवीधर किंवा पदविकाधारक';

  @override
  String get group_rural_resident => 'ग्रामीण भागातील रहिवासी';

  @override
  String get group_scheduled_bank_savings_account_holder =>
      'अनुसूचित बँकेत बचत खातेदार';

  @override
  String get ageLabel => 'वय';

  @override
  String get eligibleFor => 'पात्र आहात';

  @override
  String plansAtAge(int age) {
    return '$age व्या वर्षी उपलब्ध योजना';
  }

  @override
  String get childPlansTitle => 'मुलांच्या पॉलिसी (तुमच्या मुलांसाठी)';

  @override
  String get selectGroupPrompt =>
      'पात्र योजना पाहण्यासाठी वर किमान एक पर्याय निवडा.';

  @override
  String noPlansAtAge(int age) {
    return '$age व्या वर्षी कोणत्याही योजनेत प्रवेश नाही.';
  }

  @override
  String get eligibilityNote =>
      'अंतिम स्वीकृती भारतीय टपालाची वैद्यकीय तपासणी आणि कागदपत्रांच्या अधीन आहे.';

  @override
  String get languageLabel => 'भाषा';

  @override
  String get systemLanguage => 'डिव्हाइसची भाषा';

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
