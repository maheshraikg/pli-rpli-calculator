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
}
