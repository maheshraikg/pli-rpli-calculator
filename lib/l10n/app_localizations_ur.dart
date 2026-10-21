// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'پی ایل آئی سہایک';

  @override
  String get tilePremium => 'پریمیم';

  @override
  String get tileMaturity => 'میچورٹی';

  @override
  String get tileCompare => 'موازنہ';

  @override
  String get tileEligibility => 'اہلیت';

  @override
  String get tileMyPolicies => 'میری پالیسیاں';

  @override
  String get tileQuotation => 'کوٹیشن';

  @override
  String get comingSoon => 'جلد آ رہا ہے';

  @override
  String get sampleDataBanner => 'نمونہ ڈیٹا – سرکاری نہیں';

  @override
  String ratesFooter(String financialYear) {
    return 'شرحیں مالی سال $financialYear • ماخذ: انڈیا پوسٹ';
  }

  @override
  String get bonusDisclaimer =>
      'بونس کی شرحیں ہر سال اعلان کی جاتی ہیں اور مستقبل کے لیے ضمانت شدہ نہیں ہیں۔ حتمی رقم انڈیا پوسٹ کے مطابق۔';

  @override
  String get independentDisclaimerTitle => 'شروع کرنے سے پہلے';

  @override
  String get independentDisclaimer =>
      'یہ ایک آزاد کیلکولیٹر ہے، انڈیا پوسٹ کی سرکاری ایپ نہیں۔ تمام حساب آپ کے فون پر ہی ہوتا ہے؛ کوئی ڈیٹا جمع نہیں کیا جاتا۔';

  @override
  String get understood => 'میں سمجھ گیا/گئی';

  @override
  String dataLoadError(String error) {
    return 'شرح کا ڈیٹا لوڈ نہیں ہو سکا: $error';
  }

  @override
  String get maturityTitle => 'میچورٹی اور بونس';

  @override
  String get eligibilityTitle => 'اہلیت کی جانچ';

  @override
  String get premiumTitle => 'پریمیم کیلکولیٹر';

  @override
  String get schemePli => 'ڈاک زندگی بیمہ (PLI)';

  @override
  String get schemeRpli => 'دیہی ڈاک زندگی بیمہ (RPLI)';

  @override
  String get planLabel => 'منصوبہ';

  @override
  String rulesPendingSuffix(String plan) {
    return '$plan (قواعد زیر التوا)';
  }

  @override
  String get entryAgeLabel => 'داخلے کی عمر';

  @override
  String get childAgeLabel => 'بچے کی عمر';

  @override
  String get spouseAgeLabel => 'شریک حیات کی عمر';

  @override
  String ageYears(int age) {
    return '$age سال';
  }

  @override
  String get decrease => 'کم کریں';

  @override
  String get increase => 'بڑھائیں';

  @override
  String get ageBasisNote =>
      'عمر مکمل سالوں میں درج کریں۔ انڈیا پوسٹ کا عمر کا قاعدہ تصدیق ہونے کے بعد تاریخ پیدائش سے عمر کی سہولت شامل کی جائے گی۔';

  @override
  String get sumAssuredLabel => 'بیمہ رقم (₹)';

  @override
  String get maturityAgeLabel => 'میچورٹی کی عمر';

  @override
  String get termLabel => 'پالیسی کی مدت';

  @override
  String termYears(int years) {
    return '$years سال';
  }

  @override
  String get startDateLabel => 'پالیسی شروع ہونے کی تاریخ';

  @override
  String get resultMaturityValue => 'میچورٹی رقم';

  @override
  String get resultTotalBenefits => 'کل حاصل ہونے والے فوائد';

  @override
  String get sumAssuredRow => 'بیمہ رقم';

  @override
  String get termRow => 'مدت';

  @override
  String bonusRateRow(String fy) {
    return 'بونس کی شرح (م.س. $fy)';
  }

  @override
  String bonusRateValue(int rate) {
    return 'ہر ₹1,000 پر سالانہ ₹$rate';
  }

  @override
  String get annualBonusRow => 'سالانہ بونس';

  @override
  String totalBonusRow(int years) {
    return 'کل بونس ($years سال)';
  }

  @override
  String get terminalBonusRow => 'ٹرمینل بونس';

  @override
  String projectionNote(String fy) {
    return 'فرض کیا گیا ہے کہ م.س. $fy کی بونس شرح مدت کے ہر سال جاری رہے گی۔';
  }

  @override
  String get timelineTitle => 'بقا کے فوائد کا نظام الاوقات';

  @override
  String timelineYear(int year) {
    return 'سال $year';
  }

  @override
  String get timelineSurvival => 'بقا کا فائدہ';

  @override
  String get timelineMaturity => 'میچورٹی: باقی بیمہ رقم + مکمل بونس';

  @override
  String get timelineDeathNote =>
      'مدت کے دوران وفات پر: پہلے ادا شدہ فوائد منہا کیے بغیر مکمل بیمہ رقم + بونس۔';

  @override
  String get notAvailableTitle => 'ابھی دستیاب نہیں';

  @override
  String get rulesPendingBody =>
      'اس منصوبے کے قواعد انڈیا پوسٹ کے سرکاری سرکلر سے تصدیق ہونے کے بعد حساب شامل کیا جائے گا۔';

  @override
  String get premiumPendingBody =>
      'پریمیم صرف انڈیا پوسٹ کی سرکاری پریمیم جدولوں سے آنا چاہیے۔ سرکاری جدولیں شامل کر کے جانچنے کے بعد یہ کیلکولیٹر شروع ہوگا — تخمینی پریمیم نہیں دکھائے جاتے۔';

  @override
  String missingBonusRate(String fy) {
    return 'م.س. $fy کے لیے کوئی اعلان شدہ بونس شرح نہیں۔';
  }

  @override
  String vEntryAge(String plan, int min, int max, int age) {
    return '$plan کے لیے داخلے کی عمر $min–$max ہے۔ آپ کی عمر: $age';
  }

  @override
  String vChildAge(int min, int max, int age) {
    return 'بچے کی عمر $min–$max ہونی چاہیے۔ درج: $age';
  }

  @override
  String vSpouseAge(int min, int max, int age) {
    return 'شریک حیات کی عمر $min–$max ہونی چاہیے۔ درج: $age';
  }

  @override
  String vSaMin(String min, String sa) {
    return 'کم از کم بیمہ رقم $min ہے۔ درج: $sa';
  }

  @override
  String vSaMax(String max, String sa) {
    return 'زیادہ سے زیادہ بیمہ رقم $max ہے (اس منصوبے میں آپ کی تمام پالیسیاں ملا کر)۔ درج: $sa';
  }

  @override
  String vSaMultiple(String multiple) {
    return 'بیمہ رقم $multiple کے گنا میں ہونی چاہیے';
  }

  @override
  String vMaturityNotOffered(int value, String allowed) {
    return 'میچورٹی کی عمر $value دستیاب نہیں۔ ان میں سے منتخب کریں: $allowed';
  }

  @override
  String vCeasingNotOffered(int value, String allowed) {
    return 'پریمیم ادائیگی کی عمر $value دستیاب نہیں۔ ان میں سے منتخب کریں: $allowed';
  }

  @override
  String vTermNotOffered(int value, String allowed) {
    return '$value سال کی مدت دستیاب نہیں۔ ان میں سے منتخب کریں: $allowed';
  }

  @override
  String vNotAfterEntry(int value, int age) {
    return 'میچورٹی کی عمر $value داخلے کی عمر ($age) سے زیادہ ہونی چاہیے۔';
  }

  @override
  String vTermRange(int min, int max, int term) {
    return 'مدت $min–$max سال ہونی چاہیے۔ درج: $term';
  }

  @override
  String vParentAge(int max, int age) {
    return 'والدین کی عمر $max یا کم ہونی چاہیے۔ درج: $age';
  }

  @override
  String vTooManyChildren(int max) {
    return 'زیادہ سے زیادہ $max بچوں کا بیمہ ہو سکتا ہے۔';
  }

  @override
  String vChildSaCap(String cap, String sa) {
    return 'اس بچے کے لیے زیادہ سے زیادہ بیمہ رقم $cap ہے۔ درج: $sa';
  }

  @override
  String get vMissing => 'براہ کرم تمام تفصیلات بھریں۔';

  @override
  String get eligibilityIntro =>
      'فرد پر لاگو ہونے والے تمام اختیارات منتخب کریں، پھر عمر درج کریں۔';

  @override
  String get groupsPli => 'PLI — ان میں سے کوئی ایک';

  @override
  String get groupsRpli => 'RPLI — ان میں سے کوئی ایک';

  @override
  String get group_central_state_govt => 'مرکزی / ریاستی سرکاری ملازم';

  @override
  String get group_defence_paramilitary => 'دفاعی / نیم فوجی دستے';

  @override
  String get group_psu => 'پبلک سیکٹر ادارہ';

  @override
  String get group_banks => 'بینک ملازم';

  @override
  String get group_local_bodies => 'بلدیاتی ادارے کا ملازم';

  @override
  String get group_educational_institutions =>
      'تعلیمی ادارہ (تسلیم شدہ نجی سمیت)';

  @override
  String get group_listed_companies => 'لسٹڈ کمپنی کا ملازم';

  @override
  String get group_professionals => 'پیشہ ور (ڈاکٹر، انجینئر، سی اے، وکیل…)';

  @override
  String get group_graduates_diploma_holders => 'گریجویٹ یا ڈپلوما ہولڈر';

  @override
  String get group_rural_resident => 'دیہی علاقے کے رہائشی';

  @override
  String get group_scheduled_bank_savings_account_holder =>
      'شیڈولڈ بینک میں بچت کھاتہ دار';

  @override
  String get ageLabel => 'عمر';

  @override
  String get eligibleFor => 'اہل ہیں';

  @override
  String plansAtAge(int age) {
    return '$age سال کی عمر میں دستیاب منصوبے';
  }

  @override
  String get childPlansTitle => 'بچوں کی پالیسیاں (آپ کے بچوں کے لیے)';

  @override
  String get selectGroupPrompt =>
      'اہل منصوبے دیکھنے کے لیے اوپر کم از کم ایک اختیار منتخب کریں۔';

  @override
  String noPlansAtAge(int age) {
    return '$age سال کی عمر میں کسی منصوبے میں داخلہ نہیں۔';
  }

  @override
  String get eligibilityNote =>
      'حتمی منظوری انڈیا پوسٹ کے طبی معائنے اور دستاویزات سے مشروط ہے۔';

  @override
  String get languageLabel => 'زبان';

  @override
  String get systemLanguage => 'ڈیوائس کی زبان';

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
