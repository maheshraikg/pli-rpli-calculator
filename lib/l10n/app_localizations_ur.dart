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
  String get tileAfford => 'کتنا ممکن';

  @override
  String get tileTools => 'پالیسی ٹولز';

  @override
  String get tilePlans => 'منصوبے';

  @override
  String get tileAbout => 'تعارف';

  @override
  String get dobLabel => 'تاریخ پیدائش';

  @override
  String get useAgeInstead => 'اس کے بجائے عمر درج کریں';

  @override
  String get useDobInstead => 'تاریخ پیدائش درج کریں';

  @override
  String ageFromDobNearest(int age) {
    return 'آغاز کی تاریخ پر داخلے کی عمر: $age (قریب ترین سالگرہ کی عمر)';
  }

  @override
  String ageFromDobLast(int age) {
    return 'آغاز کی تاریخ پر داخلے کی عمر: $age (پچھلی سالگرہ کی عمر)';
  }

  @override
  String get premiumCeasingAgeLabel => 'پریمیم ادائیگی کی عمر';

  @override
  String get frequencyLabel => 'ادائیگی کا وقفہ';

  @override
  String get freqMonthly => 'ماہانہ';

  @override
  String get freqQuarterly => 'سہ ماہی';

  @override
  String get freqHalfYearly => 'ششماہی';

  @override
  String get freqYearly => 'سالانہ';

  @override
  String get premiumPerInstalment => 'فی قسط پریمیم';

  @override
  String get tablePremiumRow => 'جدول کا پریمیم';

  @override
  String get saRebateRow => 'بیمہ رقم پر رعایت';

  @override
  String totalPremiumRow(int count) {
    return 'کل پریمیم ($count اقساط)';
  }

  @override
  String get payingTermRow => 'پریمیم ادائیگی کی مدت';

  @override
  String get returnRow => 'مؤثر منافع (XIRR)';

  @override
  String returnValue(String percent) {
    return 'سالانہ $percent%';
  }

  @override
  String get lifeCoverRow => 'زندگی کا تحفظ';

  @override
  String get allFrequenciesTitle => 'ادائیگی کے تمام وقفے';

  @override
  String get notInTable => 'سرکاری جدول میں دستیاب نہیں';

  @override
  String get noTableForPlan =>
      'اس منصوبے کی پریمیم جدول ابھی شامل نہیں کی گئی۔';

  @override
  String get illustrationTitle => 'سال وار فوائد کی تفصیل';

  @override
  String get colYear => 'سال';

  @override
  String get colPremiumsPaid => 'ادا شدہ پریمیم';

  @override
  String get colBonus => 'بونس';

  @override
  String get colLifeCover => 'زندگی کا تحفظ';

  @override
  String get makeQuotation => 'کوٹیشن بنائیں';

  @override
  String get gstNote =>
      'جی ایس ٹی: 22 ستمبر 2025 یا اس کے بعد ادا شدہ انفرادی زندگی بیمہ پریمیم پر صفر۔';

  @override
  String get chartTitle => 'ادا شدہ پریمیم بمقابلہ فوائد';

  @override
  String get chartPaid => 'کل پریمیم';

  @override
  String get chartReceived => 'کل فوائد';

  @override
  String get showTable => 'سال وار جدول دکھائیں';

  @override
  String get hideTable => 'سال وار جدول چھپائیں';

  @override
  String get reverseTitle => 'میں کتنا لے سکتا ہوں؟';

  @override
  String get budgetLabel => 'فی قسط بجٹ (₹)';

  @override
  String get reverseIntro =>
      'آپ کتنا ادا کر سکتے ہیں درج کریں۔ ہر منصوبہ اختیار اس رقم میں زیادہ سے زیادہ بیمہ رقم دکھاتا ہے۔';

  @override
  String optMaturityAge(int age) {
    return '$age پر میچورٹی';
  }

  @override
  String optCeasingAge(int age) {
    return '$age سال تک پریمیم';
  }

  @override
  String optTerm(int years) {
    return '$years سالہ مدت';
  }

  @override
  String get reverseNone => 'اس عمر میں اس بجٹ میں کوئی منصوبہ نہیں آتا۔';

  @override
  String get saShort => 'بیمہ رقم';

  @override
  String get premiumShort => 'پریمیم';

  @override
  String get compareTitle => 'منصوبوں کا موازنہ';

  @override
  String optionN(int n) {
    return 'اختیار $n';
  }

  @override
  String get addOption => 'اختیار شامل کریں';

  @override
  String get removeOption => 'اختیار ہٹائیں';

  @override
  String get maturityShort => 'میچورٹی / فوائد';

  @override
  String get totalPaidShort => 'کل ادائیگی';

  @override
  String get returnShort => 'منافع';

  @override
  String get lifeCoverShort => 'زندگی کا تحفظ';

  @override
  String get comparisonTitle => 'موازنہ';

  @override
  String get toolsTitle => 'پالیسی ٹولز';

  @override
  String get tabLoan => 'قرض';

  @override
  String get tabPaidUp => 'پیڈ اپ';

  @override
  String get tabRevival => 'بحالی';

  @override
  String get tabAdvance => 'پیشگی';

  @override
  String get yearsInForceLabel => 'پالیسی کتنے سال سے نافذ ہے';

  @override
  String get loanAmountLabel => 'قرض کی رقم (₹)';

  @override
  String get loanMonthsLabel => 'واپسی تک مہینے';

  @override
  String monthsValue(int months) {
    return '$months مہینے';
  }

  @override
  String get loanInterestRow => 'سود';

  @override
  String get loanTotalRow => 'کل واپسی';

  @override
  String loanRateNote(String rate) {
    return 'سالانہ $rate% سود، ششماہی مرکب۔';
  }

  @override
  String loanAvailableAfter(int years) {
    return '$years سال بعد قرض دستیاب۔';
  }

  @override
  String get loanNotOffered => 'اس منصوبے میں قرض کی سہولت نہیں۔';

  @override
  String get loanEligibleYes => 'قرض کے اہل';

  @override
  String get loanEligibleNo => 'ابھی قرض کے اہل نہیں';

  @override
  String get loanAmountNote =>
      'زیادہ سے زیادہ قرض سرینڈر ویلیو پر منحصر ہے، جس کا حساب انڈیا پوسٹ کرتا ہے۔';

  @override
  String get premiumsPaidLabel => 'ادا شدہ اقساط';

  @override
  String get premiumsPayableLabel => 'کل قابل ادا اقساط';

  @override
  String get paidUpSaRow => 'پیڈ اپ بیمہ رقم';

  @override
  String get paidUpNote =>
      'تخمینی۔ حاصل شدہ بونس انڈیا پوسٹ کے ریکارڈ کے مطابق شامل ہوتا ہے۔ سرینڈر ویلیو کے لیے سرکاری سرینڈر عوامل درکار ہیں، اس کا حساب نہیں کیا گیا۔';

  @override
  String paidUpNotEligible(int years) {
    return 'پالیسی $years سال نافذ رہنے کے بعد ہی پیڈ اپ ہو سکتی ہے۔';
  }

  @override
  String get paidUpInvalid =>
      'ادا شدہ اقساط قابل ادا اقساط سے زیادہ نہیں ہو سکتیں۔';

  @override
  String get instalmentLabel => 'فی قسط پریمیم (₹)';

  @override
  String get firstUnpaidLabel => 'پہلی واجب الادا قسط کی تاریخ';

  @override
  String get payDateLabel => 'ادائیگی کی تاریخ';

  @override
  String get missedRow => 'واجب الادا اقساط';

  @override
  String get arrearsRow => 'بقایا';

  @override
  String get defaultFeeRow => 'تاخیری فیس';

  @override
  String get totalPayableRow => 'کل قابل ادا';

  @override
  String revivalNote(String percent) {
    return 'تاخیر کے ہر مہینے پر قسط کا $percent% تاخیری فیس۔ طویل وقفے کے بعد بحالی کے لیے طبی سرٹیفکیٹ درکار ہو سکتا ہے۔';
  }

  @override
  String revivalLine(String date, int months, String fee) {
    return 'واجب $date • $months مہینے تاخیر • فیس $fee';
  }

  @override
  String get nothingDue => 'اس تاریخ کو کچھ واجب الادا نہیں۔';

  @override
  String get monthsAdvanceLabel => 'پیشگی ادا شدہ مہینے';

  @override
  String rebateRow(String percent) {
    return 'رعایت ($percent%)';
  }

  @override
  String get amountDueRow => 'واجب الادا رقم';

  @override
  String get payableRow => 'آپ ادا کریں گے';

  @override
  String get advanceNote =>
      'دکھائی گئی رعایت شرح ڈیٹا کی پیشگی ادائیگی رعایت کے مطابق ہے؛ پریمیم پیشگی ادا کرنے پر لاگو۔';

  @override
  String get policiesTitle => 'میری پالیسیاں';

  @override
  String get noPolicies =>
      'ابھی کوئی پالیسی محفوظ نہیں۔ شامل کرنے کے لیے + دبائیں۔';

  @override
  String get addPolicy => 'پالیسی شامل کریں';

  @override
  String get editPolicy => 'پالیسی میں ترمیم';

  @override
  String get holderNameLabel => 'پالیسی ہولڈر کا نام';

  @override
  String get policyNumberLabel => 'پالیسی نمبر';

  @override
  String get premiumAmountLabel => 'فی قسط پریمیم (₹، رسید کے مطابق)';

  @override
  String get save => 'محفوظ کریں';

  @override
  String get delete => 'حذف کریں';

  @override
  String get deleteConfirm => 'یہ پالیسی حذف کریں؟';

  @override
  String get cancel => 'منسوخ';

  @override
  String nextDue(String date) {
    return 'اگلی قسط: $date';
  }

  @override
  String get noMoreDues => 'تمام پریمیم ادا ہو گئے';

  @override
  String get remindersLabel => 'ہر قسط سے 3 دن پہلے یاد دلائیں';

  @override
  String get remindersDenied => 'اس ایپ کے لیے اطلاعات بند ہیں۔';

  @override
  String get accruedBonusRow => 'اب تک جمع بونس';

  @override
  String bonusMissingYears(String years) {
    return 'م.س. $years کی بونس شرحیں ایپ ڈیٹا میں نہیں؛ کل میں وہ سال شامل نہیں۔';
  }

  @override
  String maturityOn(String date) {
    return '$date کو میچورٹی';
  }

  @override
  String get upcomingDues => 'آنے والی اقساط کی تاریخیں';

  @override
  String get yearsInForceRow => 'نافذ سال';

  @override
  String get reminderTitle => 'پی ایل آئی پریمیم واجب';

  @override
  String reminderBody(String name, String amount, String date, String number) {
    return '$name: $amount $date کو واجب (پالیسی $number)';
  }

  @override
  String get savedLocally => 'صرف اسی فون پر محفوظ۔';

  @override
  String get requiredField => 'لازمی';

  @override
  String get projectedMaturityRow => 'تخمینی میچورٹی رقم';

  @override
  String get quotationTitle => 'کوٹیشن';

  @override
  String get customerNameLabel => 'گاہک کا نام';

  @override
  String get agentNameLabel => 'تیار کنندہ (اختیاری)';

  @override
  String get sharePdf => 'PDF شیئر کریں';

  @override
  String get shareImage => 'تصویر شیئر کریں';

  @override
  String get quotationHeading => 'پریمیم کوٹیشن';

  @override
  String preparedOn(String date) {
    return '$date کو تیار';
  }

  @override
  String quotationFor(String name) {
    return 'برائے: $name';
  }

  @override
  String preparedBy(String name) {
    return 'تیار کنندہ: $name';
  }

  @override
  String get quotationInvalid =>
      'کوٹیشن بنانے کے لیے منصوبے کی تفصیل مکمل کریں۔';

  @override
  String get planDetailsTitle => 'منصوبے کی تفصیل';

  @override
  String get planInfoTitle => 'منصوبوں کی معلومات';

  @override
  String entryAgeInfo(int min, int max) {
    return 'داخلے کی عمر: $min–$max';
  }

  @override
  String maturityAgesInfo(String ages) {
    return 'میچورٹی کی عمریں: $ages';
  }

  @override
  String ceasingAgesInfo(String ages, int age) {
    return 'پریمیم ادائیگی کی عمریں: $ages؛ $age پر میچورٹی';
  }

  @override
  String termsInfo(String terms) {
    return 'مدت: $terms سال';
  }

  @override
  String survivalInfo(String list) {
    return 'منی بیک: $list';
  }

  @override
  String survivalItem(int percent, int year) {
    return 'سال $year میں $percent%';
  }

  @override
  String loanInfo(int years) {
    return '$years سال بعد قرض';
  }

  @override
  String get noLoanInfo => 'قرض نہیں';

  @override
  String surrenderInfo(int years) {
    return '$years سال بعد سرینڈر';
  }

  @override
  String get noSurrenderInfo => 'سرینڈر نہیں';

  @override
  String bonusInfo(String fy, int rate) {
    return 'م.س. $fy بونس: ہر ₹1,000 پر سالانہ ₹$rate';
  }

  @override
  String saLimitInfo(String min, String max) {
    return 'بیمہ رقم: $min – $max';
  }

  @override
  String jointInfo(int min, int max, int tmin, int tmax) {
    return 'ہر شریک حیات کی عمر $min–$max؛ مدت $tmin–$tmax سال';
  }

  @override
  String childInfo(int min, int max, int parent, int children, String cap) {
    return 'بچے کی عمر $min–$max؛ والدین کی عمر $parent تک؛ زیادہ سے زیادہ $children بچے؛ بیمہ رقم $cap تک';
  }

  @override
  String conversionInfo(int years) {
    return '$years سال بعد اینڈوومنٹ بیمہ میں تبدیل کیا جا سکتا ہے';
  }

  @override
  String get faqTitle => 'عام سوالات';

  @override
  String get faq1q => 'کیا بونس کی ضمانت ہے؟';

  @override
  String get faq1a =>
      'نہیں۔ انڈیا پوسٹ ہر سال بونس کی شرحیں اعلان کرتا ہے۔ یہاں کے تخمینے مستقبل کے ہر سال کے لیے تازہ ترین اعلان شدہ شرح فرض کرتے ہیں۔';

  @override
  String get faq2q => 'پریمیم کہاں سے آتا ہے؟';

  @override
  String get faq2a =>
      'انڈیا پوسٹ کی سرکاری پریمیم جدولوں سے۔ ایپ کبھی پریمیم کا اندازہ نہیں لگاتی۔';

  @override
  String get faq3q => 'کیا انکم ٹیکس فائدہ ہے؟';

  @override
  String get faq3a =>
      'پریمیم سیکشن 80C (پرانا ٹیکس نظام) کے تحت اہل ہو سکتا ہے اور میچورٹی رقم سیکشن 10(10D) کے تحت شرائط کے ساتھ مستثنیٰ ہو سکتی ہے۔ یہ ٹیکس مشورہ نہیں ہے۔';

  @override
  String get faq4q => 'کیا پریمیم پر جی ایس ٹی لگتا ہے؟';

  @override
  String get faq4a =>
      'نہیں۔ 22 ستمبر 2025 سے انفرادی زندگی بیمہ پریمیم پر جی ایس ٹی صفر ہے۔';

  @override
  String get faq5q => 'PLI اور RPLI کون لے سکتا ہے؟';

  @override
  String get faq5a =>
      'PLI: سرکاری اور نیم سرکاری ملازمین، پیشہ ور، گریجویٹ، ڈپلوما ہولڈر اور انڈیا پوسٹ کی فہرست کے دیگر افراد۔ RPLI: دیہی رہائشی اور شیڈولڈ بینک بچت کھاتہ دار۔';

  @override
  String get aboutTitle => 'تعارف';

  @override
  String get privacyTitle => 'رازداری';

  @override
  String get privacyBody =>
      'پی ایل آئی سہایک کوئی ڈیٹا جمع نہیں کرتا۔ آپ جو بھی درج یا محفوظ کرتے ہیں وہ اسی فون پر رہتا ہے۔ کسی اکاؤنٹ یا انٹرنیٹ کی ضرورت نہیں۔';

  @override
  String get dataSourceTitle => 'شرح کا ڈیٹا';

  @override
  String dataSourceBody(String id, String date, String source) {
    return 'قواعد $id، $date سے نافذ۔ ماخذ: $source';
  }

  @override
  String get provisionalTitle => 'ابھی تصدیق طلب قواعد';

  @override
  String get provisionalIntro =>
      'انڈیا پوسٹ کے سرکاری سرکلر سے تصدیق ہونے تک یہ قواعد عارضی مفروضے ہیں (انگریزی میں):';

  @override
  String get checkUpdates => 'شرح اپ ڈیٹ چیک کریں';

  @override
  String updateInstalled(int version) {
    return 'شرح کا ڈیٹا ورژن $version میں اپ ڈیٹ ہو گیا۔';
  }

  @override
  String get updateCurrent => 'شرح کا ڈیٹا تازہ ترین ہے۔';

  @override
  String updateFailed(String error) {
    return 'اپ ڈیٹ ناکام؛ موجودہ شرحیں برقرار۔ $error';
  }

  @override
  String get sampleDataNote =>
      'پریمیم جدولیں نمونہ ڈیٹا ہیں، انڈیا پوسٹ کے سرکاری اعداد نہیں۔';

  @override
  String appVersion(String version) {
    return 'ورژن $version';
  }
}
