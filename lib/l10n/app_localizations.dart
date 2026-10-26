import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_as.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_en.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_ur.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('as'),
    Locale('bn'),
    Locale('en'),
    Locale('gu'),
    Locale('hi'),
    Locale('kn'),
    Locale('ml'),
    Locale('mr'),
    Locale('or'),
    Locale('pa'),
    Locale('ta'),
    Locale('te'),
    Locale('ur'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'PLI & RPLI Calculator'**
  String get appTitle;

  /// No description provided for @tilePremium.
  ///
  /// In en, this message translates to:
  /// **'Premium'**
  String get tilePremium;

  /// No description provided for @tileMaturity.
  ///
  /// In en, this message translates to:
  /// **'Maturity'**
  String get tileMaturity;

  /// No description provided for @tileCompare.
  ///
  /// In en, this message translates to:
  /// **'Compare'**
  String get tileCompare;

  /// No description provided for @tileEligibility.
  ///
  /// In en, this message translates to:
  /// **'Eligibility'**
  String get tileEligibility;

  /// No description provided for @tileMyPolicies.
  ///
  /// In en, this message translates to:
  /// **'My Policies'**
  String get tileMyPolicies;

  /// No description provided for @tileQuotation.
  ///
  /// In en, this message translates to:
  /// **'Quotation'**
  String get tileQuotation;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get comingSoon;

  /// No description provided for @sampleDataBanner.
  ///
  /// In en, this message translates to:
  /// **'SAMPLE DATA – NOT OFFICIAL'**
  String get sampleDataBanner;

  /// No description provided for @ratesFooter.
  ///
  /// In en, this message translates to:
  /// **'Rates FY {financialYear} • Source: India Post'**
  String ratesFooter(String financialYear);

  /// No description provided for @bonusDisclaimer.
  ///
  /// In en, this message translates to:
  /// **'Bonus rates are declared yearly and are not guaranteed for the future. Final figures as per India Post.'**
  String get bonusDisclaimer;

  /// No description provided for @independentDisclaimerTitle.
  ///
  /// In en, this message translates to:
  /// **'Before you start'**
  String get independentDisclaimerTitle;

  /// No description provided for @independentDisclaimer.
  ///
  /// In en, this message translates to:
  /// **'This is an independent calculator, not an official India Post app. All calculations happen on your phone; no data is collected.'**
  String get independentDisclaimer;

  /// No description provided for @understood.
  ///
  /// In en, this message translates to:
  /// **'I understand'**
  String get understood;

  /// No description provided for @dataLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load rate data: {error}'**
  String dataLoadError(String error);

  /// No description provided for @maturityTitle.
  ///
  /// In en, this message translates to:
  /// **'Maturity & Bonus'**
  String get maturityTitle;

  /// No description provided for @eligibilityTitle.
  ///
  /// In en, this message translates to:
  /// **'Eligibility Checker'**
  String get eligibilityTitle;

  /// No description provided for @premiumTitle.
  ///
  /// In en, this message translates to:
  /// **'Premium Calculator'**
  String get premiumTitle;

  /// No description provided for @schemePli.
  ///
  /// In en, this message translates to:
  /// **'PLI'**
  String get schemePli;

  /// No description provided for @schemeRpli.
  ///
  /// In en, this message translates to:
  /// **'RPLI'**
  String get schemeRpli;

  /// No description provided for @planLabel.
  ///
  /// In en, this message translates to:
  /// **'Plan'**
  String get planLabel;

  /// No description provided for @rulesPendingSuffix.
  ///
  /// In en, this message translates to:
  /// **'{plan} (rules pending)'**
  String rulesPendingSuffix(String plan);

  /// No description provided for @entryAgeLabel.
  ///
  /// In en, this message translates to:
  /// **'Age at entry'**
  String get entryAgeLabel;

  /// No description provided for @childAgeLabel.
  ///
  /// In en, this message translates to:
  /// **'Child\'s age'**
  String get childAgeLabel;

  /// No description provided for @spouseAgeLabel.
  ///
  /// In en, this message translates to:
  /// **'Spouse\'s age'**
  String get spouseAgeLabel;

  /// No description provided for @ageYears.
  ///
  /// In en, this message translates to:
  /// **'{age, plural, =1{1 year} other{{age} years}}'**
  String ageYears(int age);

  /// No description provided for @decrease.
  ///
  /// In en, this message translates to:
  /// **'Decrease'**
  String get decrease;

  /// No description provided for @increase.
  ///
  /// In en, this message translates to:
  /// **'Increase'**
  String get increase;

  /// No description provided for @ageBasisNote.
  ///
  /// In en, this message translates to:
  /// **'Enter age in completed years. Age from date of birth will be added once India Post\'s age rule is confirmed.'**
  String get ageBasisNote;

  /// No description provided for @sumAssuredLabel.
  ///
  /// In en, this message translates to:
  /// **'Sum assured (₹)'**
  String get sumAssuredLabel;

  /// No description provided for @maturityAgeLabel.
  ///
  /// In en, this message translates to:
  /// **'Maturity age'**
  String get maturityAgeLabel;

  /// No description provided for @termLabel.
  ///
  /// In en, this message translates to:
  /// **'Policy term'**
  String get termLabel;

  /// No description provided for @termYears.
  ///
  /// In en, this message translates to:
  /// **'{years, plural, =1{1 year} other{{years} years}}'**
  String termYears(int years);

  /// No description provided for @startDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Policy start date'**
  String get startDateLabel;

  /// No description provided for @resultMaturityValue.
  ///
  /// In en, this message translates to:
  /// **'Maturity value'**
  String get resultMaturityValue;

  /// No description provided for @resultTotalBenefits.
  ///
  /// In en, this message translates to:
  /// **'Total benefits received'**
  String get resultTotalBenefits;

  /// No description provided for @sumAssuredRow.
  ///
  /// In en, this message translates to:
  /// **'Sum assured'**
  String get sumAssuredRow;

  /// No description provided for @termRow.
  ///
  /// In en, this message translates to:
  /// **'Term'**
  String get termRow;

  /// No description provided for @bonusRateRow.
  ///
  /// In en, this message translates to:
  /// **'Bonus rate (FY {fy})'**
  String bonusRateRow(String fy);

  /// No description provided for @bonusRateValue.
  ///
  /// In en, this message translates to:
  /// **'₹{rate} per ₹1,000 / year'**
  String bonusRateValue(int rate);

  /// No description provided for @annualBonusRow.
  ///
  /// In en, this message translates to:
  /// **'Bonus per year'**
  String get annualBonusRow;

  /// No description provided for @totalBonusRow.
  ///
  /// In en, this message translates to:
  /// **'Total bonus ({years} years)'**
  String totalBonusRow(int years);

  /// No description provided for @terminalBonusRow.
  ///
  /// In en, this message translates to:
  /// **'Terminal bonus'**
  String get terminalBonusRow;

  /// No description provided for @projectionNote.
  ///
  /// In en, this message translates to:
  /// **'Assumes the FY {fy} bonus rate continues for every year of the term.'**
  String projectionNote(String fy);

  /// No description provided for @timelineTitle.
  ///
  /// In en, this message translates to:
  /// **'Survival benefit timeline'**
  String get timelineTitle;

  /// No description provided for @timelineYear.
  ///
  /// In en, this message translates to:
  /// **'Year {year}'**
  String timelineYear(int year);

  /// No description provided for @timelineSurvival.
  ///
  /// In en, this message translates to:
  /// **'Survival benefit'**
  String get timelineSurvival;

  /// No description provided for @timelineMaturity.
  ///
  /// In en, this message translates to:
  /// **'Maturity: remaining sum assured + full bonus'**
  String get timelineMaturity;

  /// No description provided for @timelineDeathNote.
  ///
  /// In en, this message translates to:
  /// **'On death during the term: full sum assured + bonus, with no deduction for survival benefits already paid.'**
  String get timelineDeathNote;

  /// No description provided for @notAvailableTitle.
  ///
  /// In en, this message translates to:
  /// **'Not available yet'**
  String get notAvailableTitle;

  /// No description provided for @rulesPendingBody.
  ///
  /// In en, this message translates to:
  /// **'The projection for this plan will be added once its rules are confirmed from the official India Post circular.'**
  String get rulesPendingBody;

  /// No description provided for @premiumPendingBody.
  ///
  /// In en, this message translates to:
  /// **'Premiums must come from the official India Post premium tables. This calculator will be switched on once the official tables are loaded and verified — no estimated premiums are shown.'**
  String get premiumPendingBody;

  /// No description provided for @missingBonusRate.
  ///
  /// In en, this message translates to:
  /// **'No declared bonus rate for FY {fy}.'**
  String missingBonusRate(String fy);

  /// No description provided for @vEntryAge.
  ///
  /// In en, this message translates to:
  /// **'{plan} entry age is {min}–{max}. Your age: {age}'**
  String vEntryAge(String plan, int min, int max, int age);

  /// No description provided for @vChildAge.
  ///
  /// In en, this message translates to:
  /// **'Child\'s age must be {min}–{max}. Entered: {age}'**
  String vChildAge(int min, int max, int age);

  /// No description provided for @vSpouseAge.
  ///
  /// In en, this message translates to:
  /// **'Spouse\'s age must be {min}–{max}. Entered: {age}'**
  String vSpouseAge(int min, int max, int age);

  /// No description provided for @vSaMin.
  ///
  /// In en, this message translates to:
  /// **'Minimum sum assured is {min}. Entered: {sa}'**
  String vSaMin(String min, String sa);

  /// No description provided for @vSaMax.
  ///
  /// In en, this message translates to:
  /// **'Maximum sum assured is {max} (all your policies in this scheme combined). Entered: {sa}'**
  String vSaMax(String max, String sa);

  /// No description provided for @vSaMultiple.
  ///
  /// In en, this message translates to:
  /// **'Sum assured must be a multiple of {multiple}'**
  String vSaMultiple(String multiple);

  /// No description provided for @vMaturityNotOffered.
  ///
  /// In en, this message translates to:
  /// **'Maturity age {value} is not offered. Choose from: {allowed}'**
  String vMaturityNotOffered(int value, String allowed);

  /// No description provided for @vCeasingNotOffered.
  ///
  /// In en, this message translates to:
  /// **'Premium paying age {value} is not offered. Choose from: {allowed}'**
  String vCeasingNotOffered(int value, String allowed);

  /// No description provided for @vTermNotOffered.
  ///
  /// In en, this message translates to:
  /// **'A {value}-year term is not offered. Choose from: {allowed}'**
  String vTermNotOffered(int value, String allowed);

  /// No description provided for @vNotAfterEntry.
  ///
  /// In en, this message translates to:
  /// **'Maturity age {value} must be more than the entry age ({age}).'**
  String vNotAfterEntry(int value, int age);

  /// No description provided for @vTermRange.
  ///
  /// In en, this message translates to:
  /// **'Term must be {min}–{max} years. Entered: {term}'**
  String vTermRange(int min, int max, int term);

  /// No description provided for @vParentAge.
  ///
  /// In en, this message translates to:
  /// **'Parent\'s age must be {max} or less. Entered: {age}'**
  String vParentAge(int max, int age);

  /// No description provided for @vTooManyChildren.
  ///
  /// In en, this message translates to:
  /// **'A maximum of {max} children can be covered.'**
  String vTooManyChildren(int max);

  /// No description provided for @vChildSaCap.
  ///
  /// In en, this message translates to:
  /// **'Maximum sum assured for this child is {cap}. Entered: {sa}'**
  String vChildSaCap(String cap, String sa);

  /// No description provided for @vMissing.
  ///
  /// In en, this message translates to:
  /// **'Please fill in all the details.'**
  String get vMissing;

  /// No description provided for @eligibilityIntro.
  ///
  /// In en, this message translates to:
  /// **'Select everything that applies to the person, then set their age.'**
  String get eligibilityIntro;

  /// No description provided for @groupsPli.
  ///
  /// In en, this message translates to:
  /// **'PLI — any one of these'**
  String get groupsPli;

  /// No description provided for @groupsRpli.
  ///
  /// In en, this message translates to:
  /// **'RPLI — any one of these'**
  String get groupsRpli;

  /// No description provided for @group_central_state_govt.
  ///
  /// In en, this message translates to:
  /// **'Central / State Govt employee'**
  String get group_central_state_govt;

  /// No description provided for @group_defence_paramilitary.
  ///
  /// In en, this message translates to:
  /// **'Defence / Paramilitary'**
  String get group_defence_paramilitary;

  /// No description provided for @group_psu.
  ///
  /// In en, this message translates to:
  /// **'Public Sector Undertaking'**
  String get group_psu;

  /// No description provided for @group_banks.
  ///
  /// In en, this message translates to:
  /// **'Bank employee'**
  String get group_banks;

  /// No description provided for @group_local_bodies.
  ///
  /// In en, this message translates to:
  /// **'Local body employee'**
  String get group_local_bodies;

  /// No description provided for @group_educational_institutions.
  ///
  /// In en, this message translates to:
  /// **'Educational institution (incl. private recognised)'**
  String get group_educational_institutions;

  /// No description provided for @group_listed_companies.
  ///
  /// In en, this message translates to:
  /// **'Listed company employee'**
  String get group_listed_companies;

  /// No description provided for @group_professionals.
  ///
  /// In en, this message translates to:
  /// **'Professional (doctor, engineer, CA, lawyer…)'**
  String get group_professionals;

  /// No description provided for @group_graduates_diploma_holders.
  ///
  /// In en, this message translates to:
  /// **'Graduate or diploma holder'**
  String get group_graduates_diploma_holders;

  /// No description provided for @group_rural_resident.
  ///
  /// In en, this message translates to:
  /// **'Resident of a rural area'**
  String get group_rural_resident;

  /// No description provided for @group_scheduled_bank_savings_account_holder.
  ///
  /// In en, this message translates to:
  /// **'Savings account holder in a scheduled bank'**
  String get group_scheduled_bank_savings_account_holder;

  /// No description provided for @ageLabel.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get ageLabel;

  /// No description provided for @eligibleFor.
  ///
  /// In en, this message translates to:
  /// **'Eligible for'**
  String get eligibleFor;

  /// No description provided for @plansAtAge.
  ///
  /// In en, this message translates to:
  /// **'Plans open at age {age}'**
  String plansAtAge(int age);

  /// No description provided for @childPlansTitle.
  ///
  /// In en, this message translates to:
  /// **'Children\'s policies (for your children)'**
  String get childPlansTitle;

  /// No description provided for @selectGroupPrompt.
  ///
  /// In en, this message translates to:
  /// **'Select at least one option above to see eligible plans.'**
  String get selectGroupPrompt;

  /// No description provided for @noPlansAtAge.
  ///
  /// In en, this message translates to:
  /// **'No plan accepts entry at age {age}.'**
  String noPlansAtAge(int age);

  /// No description provided for @eligibilityNote.
  ///
  /// In en, this message translates to:
  /// **'Final acceptance is subject to India Post\'s medical underwriting and documents.'**
  String get eligibilityNote;

  /// No description provided for @languageLabel.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageLabel;

  /// No description provided for @systemLanguage.
  ///
  /// In en, this message translates to:
  /// **'Device language'**
  String get systemLanguage;

  /// No description provided for @tileAfford.
  ///
  /// In en, this message translates to:
  /// **'Afford'**
  String get tileAfford;

  /// No description provided for @tileTools.
  ///
  /// In en, this message translates to:
  /// **'Policy tools'**
  String get tileTools;

  /// No description provided for @tilePlans.
  ///
  /// In en, this message translates to:
  /// **'Plans'**
  String get tilePlans;

  /// No description provided for @tileAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get tileAbout;

  /// No description provided for @dobLabel.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get dobLabel;

  /// No description provided for @useAgeInstead.
  ///
  /// In en, this message translates to:
  /// **'Enter age instead'**
  String get useAgeInstead;

  /// No description provided for @useDobInstead.
  ///
  /// In en, this message translates to:
  /// **'Enter date of birth'**
  String get useDobInstead;

  /// No description provided for @ageFromDobNearest.
  ///
  /// In en, this message translates to:
  /// **'Entry age on start date: {age} (age nearest birthday)'**
  String ageFromDobNearest(int age);

  /// No description provided for @ageFromDobLast.
  ///
  /// In en, this message translates to:
  /// **'Entry age on start date: {age} (age last birthday)'**
  String ageFromDobLast(int age);

  /// No description provided for @premiumCeasingAgeLabel.
  ///
  /// In en, this message translates to:
  /// **'Premium paying age'**
  String get premiumCeasingAgeLabel;

  /// No description provided for @frequencyLabel.
  ///
  /// In en, this message translates to:
  /// **'Payment frequency'**
  String get frequencyLabel;

  /// No description provided for @freqMonthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get freqMonthly;

  /// No description provided for @freqQuarterly.
  ///
  /// In en, this message translates to:
  /// **'Quarterly'**
  String get freqQuarterly;

  /// No description provided for @freqHalfYearly.
  ///
  /// In en, this message translates to:
  /// **'Half-yearly'**
  String get freqHalfYearly;

  /// No description provided for @freqYearly.
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get freqYearly;

  /// No description provided for @premiumPerInstalment.
  ///
  /// In en, this message translates to:
  /// **'Premium per instalment'**
  String get premiumPerInstalment;

  /// No description provided for @tablePremiumRow.
  ///
  /// In en, this message translates to:
  /// **'Table premium'**
  String get tablePremiumRow;

  /// No description provided for @saRebateRow.
  ///
  /// In en, this message translates to:
  /// **'SA rebate'**
  String get saRebateRow;

  /// No description provided for @totalPremiumRow.
  ///
  /// In en, this message translates to:
  /// **'Total premium ({count} instalments)'**
  String totalPremiumRow(int count);

  /// No description provided for @payingTermRow.
  ///
  /// In en, this message translates to:
  /// **'Premium paying term'**
  String get payingTermRow;

  /// No description provided for @lifeCoverRow.
  ///
  /// In en, this message translates to:
  /// **'Life cover'**
  String get lifeCoverRow;

  /// No description provided for @allFrequenciesTitle.
  ///
  /// In en, this message translates to:
  /// **'All payment frequencies'**
  String get allFrequenciesTitle;

  /// No description provided for @notInTable.
  ///
  /// In en, this message translates to:
  /// **'Not available in official table'**
  String get notInTable;

  /// No description provided for @noTableForPlan.
  ///
  /// In en, this message translates to:
  /// **'The premium table for this plan is not loaded yet.'**
  String get noTableForPlan;

  /// No description provided for @illustrationTitle.
  ///
  /// In en, this message translates to:
  /// **'Year-wise benefit illustration'**
  String get illustrationTitle;

  /// No description provided for @colYear.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get colYear;

  /// No description provided for @colPremiumsPaid.
  ///
  /// In en, this message translates to:
  /// **'Premiums paid'**
  String get colPremiumsPaid;

  /// No description provided for @colBonus.
  ///
  /// In en, this message translates to:
  /// **'Bonus'**
  String get colBonus;

  /// No description provided for @colLifeCover.
  ///
  /// In en, this message translates to:
  /// **'Life cover'**
  String get colLifeCover;

  /// No description provided for @makeQuotation.
  ///
  /// In en, this message translates to:
  /// **'Create quotation'**
  String get makeQuotation;

  /// No description provided for @gstNote.
  ///
  /// In en, this message translates to:
  /// **'GST: nil on individual life insurance premiums paid on or after 22 Sep 2025.'**
  String get gstNote;

  /// No description provided for @chartTitle.
  ///
  /// In en, this message translates to:
  /// **'Premium paid vs benefits'**
  String get chartTitle;

  /// No description provided for @chartPaid.
  ///
  /// In en, this message translates to:
  /// **'Total premium'**
  String get chartPaid;

  /// No description provided for @chartReceived.
  ///
  /// In en, this message translates to:
  /// **'Total benefits'**
  String get chartReceived;

  /// No description provided for @showTable.
  ///
  /// In en, this message translates to:
  /// **'Show year-wise table'**
  String get showTable;

  /// No description provided for @hideTable.
  ///
  /// In en, this message translates to:
  /// **'Hide year-wise table'**
  String get hideTable;

  /// No description provided for @reverseTitle.
  ///
  /// In en, this message translates to:
  /// **'What can I afford?'**
  String get reverseTitle;

  /// No description provided for @budgetLabel.
  ///
  /// In en, this message translates to:
  /// **'Budget per instalment (₹)'**
  String get budgetLabel;

  /// No description provided for @reverseIntro.
  ///
  /// In en, this message translates to:
  /// **'Enter how much you can pay. Each plan option shows the highest sum assured within that amount.'**
  String get reverseIntro;

  /// No description provided for @optMaturityAge.
  ///
  /// In en, this message translates to:
  /// **'Matures at {age}'**
  String optMaturityAge(int age);

  /// No description provided for @optCeasingAge.
  ///
  /// In en, this message translates to:
  /// **'Premiums till age {age}'**
  String optCeasingAge(int age);

  /// No description provided for @optTerm.
  ///
  /// In en, this message translates to:
  /// **'{years}-year term'**
  String optTerm(int years);

  /// No description provided for @reverseNone.
  ///
  /// In en, this message translates to:
  /// **'No plan fits this budget at this age.'**
  String get reverseNone;

  /// No description provided for @saShort.
  ///
  /// In en, this message translates to:
  /// **'Sum assured'**
  String get saShort;

  /// No description provided for @premiumShort.
  ///
  /// In en, this message translates to:
  /// **'Premium'**
  String get premiumShort;

  /// No description provided for @compareTitle.
  ///
  /// In en, this message translates to:
  /// **'Compare plans'**
  String get compareTitle;

  /// No description provided for @optionN.
  ///
  /// In en, this message translates to:
  /// **'Option {n}'**
  String optionN(int n);

  /// No description provided for @addOption.
  ///
  /// In en, this message translates to:
  /// **'Add option'**
  String get addOption;

  /// No description provided for @removeOption.
  ///
  /// In en, this message translates to:
  /// **'Remove option'**
  String get removeOption;

  /// No description provided for @maturityShort.
  ///
  /// In en, this message translates to:
  /// **'Maturity / benefits'**
  String get maturityShort;

  /// No description provided for @totalPaidShort.
  ///
  /// In en, this message translates to:
  /// **'Total paid'**
  String get totalPaidShort;

  /// No description provided for @lifeCoverShort.
  ///
  /// In en, this message translates to:
  /// **'Life cover'**
  String get lifeCoverShort;

  /// No description provided for @comparisonTitle.
  ///
  /// In en, this message translates to:
  /// **'Comparison'**
  String get comparisonTitle;

  /// No description provided for @toolsTitle.
  ///
  /// In en, this message translates to:
  /// **'Policy tools'**
  String get toolsTitle;

  /// No description provided for @tabLoan.
  ///
  /// In en, this message translates to:
  /// **'Loan'**
  String get tabLoan;

  /// No description provided for @tabPaidUp.
  ///
  /// In en, this message translates to:
  /// **'Paid-up'**
  String get tabPaidUp;

  /// No description provided for @tabRevival.
  ///
  /// In en, this message translates to:
  /// **'Revival'**
  String get tabRevival;

  /// No description provided for @tabAdvance.
  ///
  /// In en, this message translates to:
  /// **'Advance'**
  String get tabAdvance;

  /// No description provided for @yearsInForceLabel.
  ///
  /// In en, this message translates to:
  /// **'Years the policy has been in force'**
  String get yearsInForceLabel;

  /// No description provided for @loanAmountLabel.
  ///
  /// In en, this message translates to:
  /// **'Loan amount (₹)'**
  String get loanAmountLabel;

  /// No description provided for @loanMonthsLabel.
  ///
  /// In en, this message translates to:
  /// **'Months until repayment'**
  String get loanMonthsLabel;

  /// No description provided for @monthsValue.
  ///
  /// In en, this message translates to:
  /// **'{months, plural, =1{1 month} other{{months} months}}'**
  String monthsValue(int months);

  /// No description provided for @loanInterestRow.
  ///
  /// In en, this message translates to:
  /// **'Interest'**
  String get loanInterestRow;

  /// No description provided for @loanTotalRow.
  ///
  /// In en, this message translates to:
  /// **'Total to repay'**
  String get loanTotalRow;

  /// No description provided for @loanRateNote.
  ///
  /// In en, this message translates to:
  /// **'Interest {rate}% a year, compounded half-yearly.'**
  String loanRateNote(String rate);

  /// No description provided for @loanAvailableAfter.
  ///
  /// In en, this message translates to:
  /// **'Loan available after {years} years.'**
  String loanAvailableAfter(int years);

  /// No description provided for @loanNotOffered.
  ///
  /// In en, this message translates to:
  /// **'This plan has no loan facility.'**
  String get loanNotOffered;

  /// No description provided for @loanEligibleYes.
  ///
  /// In en, this message translates to:
  /// **'Eligible for a loan'**
  String get loanEligibleYes;

  /// No description provided for @loanEligibleNo.
  ///
  /// In en, this message translates to:
  /// **'Not yet eligible for a loan'**
  String get loanEligibleNo;

  /// No description provided for @loanAmountNote.
  ///
  /// In en, this message translates to:
  /// **'The maximum loan depends on the surrender value, which India Post calculates.'**
  String get loanAmountNote;

  /// No description provided for @premiumsPaidLabel.
  ///
  /// In en, this message translates to:
  /// **'Instalments paid'**
  String get premiumsPaidLabel;

  /// No description provided for @premiumsPayableLabel.
  ///
  /// In en, this message translates to:
  /// **'Total instalments payable'**
  String get premiumsPayableLabel;

  /// No description provided for @paidUpSaRow.
  ///
  /// In en, this message translates to:
  /// **'Paid-up sum assured'**
  String get paidUpSaRow;

  /// No description provided for @paidUpNote.
  ///
  /// In en, this message translates to:
  /// **'Approximate. Bonus already earned is added as per India Post records. Surrender value needs official surrender factors and is not calculated.'**
  String get paidUpNote;

  /// No description provided for @paidUpNotEligible.
  ///
  /// In en, this message translates to:
  /// **'A policy can become paid-up only after {years} years in force.'**
  String paidUpNotEligible(int years);

  /// No description provided for @paidUpInvalid.
  ///
  /// In en, this message translates to:
  /// **'Instalments paid cannot exceed instalments payable.'**
  String get paidUpInvalid;

  /// No description provided for @instalmentLabel.
  ///
  /// In en, this message translates to:
  /// **'Premium per instalment (₹)'**
  String get instalmentLabel;

  /// No description provided for @firstUnpaidLabel.
  ///
  /// In en, this message translates to:
  /// **'First unpaid due date'**
  String get firstUnpaidLabel;

  /// No description provided for @payDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Date of payment'**
  String get payDateLabel;

  /// No description provided for @missedRow.
  ///
  /// In en, this message translates to:
  /// **'Instalments due'**
  String get missedRow;

  /// No description provided for @arrearsRow.
  ///
  /// In en, this message translates to:
  /// **'Arrears'**
  String get arrearsRow;

  /// No description provided for @defaultFeeRow.
  ///
  /// In en, this message translates to:
  /// **'Default fee'**
  String get defaultFeeRow;

  /// No description provided for @totalPayableRow.
  ///
  /// In en, this message translates to:
  /// **'Total payable'**
  String get totalPayableRow;

  /// No description provided for @revivalNote.
  ///
  /// In en, this message translates to:
  /// **'Default fee {percent}% of the instalment per month of delay. Revival after a long lapse may need a medical certificate.'**
  String revivalNote(String percent);

  /// No description provided for @revivalLine.
  ///
  /// In en, this message translates to:
  /// **'Due {date} • {months, plural, =0{on time} =1{1 month late} other{{months} months late}} • fee {fee}'**
  String revivalLine(String date, int months, String fee);

  /// No description provided for @nothingDue.
  ///
  /// In en, this message translates to:
  /// **'Nothing is due on that date.'**
  String get nothingDue;

  /// No description provided for @monthsAdvanceLabel.
  ///
  /// In en, this message translates to:
  /// **'Months paid in advance'**
  String get monthsAdvanceLabel;

  /// No description provided for @rebateRow.
  ///
  /// In en, this message translates to:
  /// **'Rebate ({percent}%)'**
  String rebateRow(String percent);

  /// No description provided for @amountDueRow.
  ///
  /// In en, this message translates to:
  /// **'Amount due'**
  String get amountDueRow;

  /// No description provided for @payableRow.
  ///
  /// In en, this message translates to:
  /// **'You pay'**
  String get payableRow;

  /// No description provided for @advanceNote.
  ///
  /// In en, this message translates to:
  /// **'The rebate shown follows the advance-payment rebate in the rate data; it applies when premiums are paid in advance.'**
  String get advanceNote;

  /// No description provided for @policiesTitle.
  ///
  /// In en, this message translates to:
  /// **'My Policies'**
  String get policiesTitle;

  /// No description provided for @noPolicies.
  ///
  /// In en, this message translates to:
  /// **'No saved policies yet. Tap + to add one.'**
  String get noPolicies;

  /// No description provided for @addPolicy.
  ///
  /// In en, this message translates to:
  /// **'Add policy'**
  String get addPolicy;

  /// No description provided for @editPolicy.
  ///
  /// In en, this message translates to:
  /// **'Edit policy'**
  String get editPolicy;

  /// No description provided for @holderNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Policy holder name'**
  String get holderNameLabel;

  /// No description provided for @policyNumberLabel.
  ///
  /// In en, this message translates to:
  /// **'Policy number'**
  String get policyNumberLabel;

  /// No description provided for @premiumAmountLabel.
  ///
  /// In en, this message translates to:
  /// **'Premium per instalment (₹, as on receipt)'**
  String get premiumAmountLabel;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @deleteConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete this policy?'**
  String get deleteConfirm;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @nextDue.
  ///
  /// In en, this message translates to:
  /// **'Next due: {date}'**
  String nextDue(String date);

  /// No description provided for @noMoreDues.
  ///
  /// In en, this message translates to:
  /// **'All premiums paid'**
  String get noMoreDues;

  /// No description provided for @remindersLabel.
  ///
  /// In en, this message translates to:
  /// **'Remind me 3 days before each due date'**
  String get remindersLabel;

  /// No description provided for @remindersDenied.
  ///
  /// In en, this message translates to:
  /// **'Notifications are turned off for this app.'**
  String get remindersDenied;

  /// No description provided for @accruedBonusRow.
  ///
  /// In en, this message translates to:
  /// **'Bonus accrued so far'**
  String get accruedBonusRow;

  /// No description provided for @bonusMissingYears.
  ///
  /// In en, this message translates to:
  /// **'Bonus rates for FY {years} are not in the app data; the total leaves out those years.'**
  String bonusMissingYears(String years);

  /// No description provided for @maturityOn.
  ///
  /// In en, this message translates to:
  /// **'Matures on {date}'**
  String maturityOn(String date);

  /// No description provided for @upcomingDues.
  ///
  /// In en, this message translates to:
  /// **'Upcoming due dates'**
  String get upcomingDues;

  /// No description provided for @yearsInForceRow.
  ///
  /// In en, this message translates to:
  /// **'Years in force'**
  String get yearsInForceRow;

  /// No description provided for @reminderTitle.
  ///
  /// In en, this message translates to:
  /// **'PLI premium due'**
  String get reminderTitle;

  /// No description provided for @reminderBody.
  ///
  /// In en, this message translates to:
  /// **'{name}: {amount} due on {date} (policy {number})'**
  String reminderBody(String name, String amount, String date, String number);

  /// No description provided for @savedLocally.
  ///
  /// In en, this message translates to:
  /// **'Saved only on this phone.'**
  String get savedLocally;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get requiredField;

  /// No description provided for @projectedMaturityRow.
  ///
  /// In en, this message translates to:
  /// **'Projected maturity value'**
  String get projectedMaturityRow;

  /// No description provided for @quotationTitle.
  ///
  /// In en, this message translates to:
  /// **'Quotation'**
  String get quotationTitle;

  /// No description provided for @customerNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Customer name'**
  String get customerNameLabel;

  /// No description provided for @agentNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Prepared by (optional)'**
  String get agentNameLabel;

  /// No description provided for @sharePdf.
  ///
  /// In en, this message translates to:
  /// **'Share PDF'**
  String get sharePdf;

  /// No description provided for @shareImage.
  ///
  /// In en, this message translates to:
  /// **'Share image'**
  String get shareImage;

  /// No description provided for @quotationHeading.
  ///
  /// In en, this message translates to:
  /// **'Premium Quotation'**
  String get quotationHeading;

  /// No description provided for @preparedOn.
  ///
  /// In en, this message translates to:
  /// **'Prepared on {date}'**
  String preparedOn(String date);

  /// No description provided for @quotationFor.
  ///
  /// In en, this message translates to:
  /// **'For: {name}'**
  String quotationFor(String name);

  /// No description provided for @preparedBy.
  ///
  /// In en, this message translates to:
  /// **'Prepared by: {name}'**
  String preparedBy(String name);

  /// No description provided for @quotationInvalid.
  ///
  /// In en, this message translates to:
  /// **'Complete the plan details to create a quotation.'**
  String get quotationInvalid;

  /// No description provided for @planDetailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Plan details'**
  String get planDetailsTitle;

  /// No description provided for @planInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'Plan information'**
  String get planInfoTitle;

  /// No description provided for @entryAgeInfo.
  ///
  /// In en, this message translates to:
  /// **'Entry age: {min}–{max}'**
  String entryAgeInfo(int min, int max);

  /// No description provided for @maturityAgesInfo.
  ///
  /// In en, this message translates to:
  /// **'Maturity ages: {ages}'**
  String maturityAgesInfo(String ages);

  /// No description provided for @ceasingAgesInfo.
  ///
  /// In en, this message translates to:
  /// **'Premium paying ages: {ages}; matures at {age}'**
  String ceasingAgesInfo(String ages, int age);

  /// No description provided for @termsInfo.
  ///
  /// In en, this message translates to:
  /// **'Terms: {terms} years'**
  String termsInfo(String terms);

  /// No description provided for @survivalInfo.
  ///
  /// In en, this message translates to:
  /// **'Money back: {list}'**
  String survivalInfo(String list);

  /// No description provided for @survivalItem.
  ///
  /// In en, this message translates to:
  /// **'{percent}% at year {year}'**
  String survivalItem(int percent, int year);

  /// No description provided for @loanInfo.
  ///
  /// In en, this message translates to:
  /// **'Loan after {years} years'**
  String loanInfo(int years);

  /// No description provided for @noLoanInfo.
  ///
  /// In en, this message translates to:
  /// **'No loan'**
  String get noLoanInfo;

  /// No description provided for @surrenderInfo.
  ///
  /// In en, this message translates to:
  /// **'Surrender after {years} years'**
  String surrenderInfo(int years);

  /// No description provided for @noSurrenderInfo.
  ///
  /// In en, this message translates to:
  /// **'No surrender'**
  String get noSurrenderInfo;

  /// No description provided for @bonusInfo.
  ///
  /// In en, this message translates to:
  /// **'Bonus FY {fy}: ₹{rate} per ₹1,000 a year'**
  String bonusInfo(String fy, int rate);

  /// No description provided for @saLimitInfo.
  ///
  /// In en, this message translates to:
  /// **'Sum assured: {min} – {max}'**
  String saLimitInfo(String min, String max);

  /// No description provided for @jointInfo.
  ///
  /// In en, this message translates to:
  /// **'Each spouse aged {min}–{max}; term {tmin}–{tmax} years'**
  String jointInfo(int min, int max, int tmin, int tmax);

  /// No description provided for @childInfo.
  ///
  /// In en, this message translates to:
  /// **'Child aged {min}–{max}; parent aged up to {parent}; up to {children} children; SA up to {cap}'**
  String childInfo(int min, int max, int parent, int children, String cap);

  /// No description provided for @conversionInfo.
  ///
  /// In en, this message translates to:
  /// **'Can be converted to endowment after {years} years'**
  String conversionInfo(int years);

  /// No description provided for @faqTitle.
  ///
  /// In en, this message translates to:
  /// **'Common questions'**
  String get faqTitle;

  /// No description provided for @faq1q.
  ///
  /// In en, this message translates to:
  /// **'Is the bonus guaranteed?'**
  String get faq1q;

  /// No description provided for @faq1a.
  ///
  /// In en, this message translates to:
  /// **'No. India Post declares bonus rates every year. Projections here assume the latest declared rate for every future year.'**
  String get faq1a;

  /// No description provided for @faq2q.
  ///
  /// In en, this message translates to:
  /// **'Where do the premiums come from?'**
  String get faq2q;

  /// No description provided for @faq2a.
  ///
  /// In en, this message translates to:
  /// **'From India Post\'s official premium tables. The app never estimates a premium.'**
  String get faq2a;

  /// No description provided for @faq3q.
  ///
  /// In en, this message translates to:
  /// **'Is there an income tax benefit?'**
  String get faq3q;

  /// No description provided for @faq3a.
  ///
  /// In en, this message translates to:
  /// **'Premiums may qualify under Section 80C (old tax regime) and maturity may be exempt under Section 10(10D), subject to conditions. This is not tax advice.'**
  String get faq3a;

  /// No description provided for @faq4q.
  ///
  /// In en, this message translates to:
  /// **'Is GST charged on premiums?'**
  String get faq4q;

  /// No description provided for @faq4a.
  ///
  /// In en, this message translates to:
  /// **'No. GST on individual life insurance premiums is nil from 22 September 2025.'**
  String get faq4a;

  /// No description provided for @faq5q.
  ///
  /// In en, this message translates to:
  /// **'Who can buy PLI and RPLI?'**
  String get faq5q;

  /// No description provided for @faq5a.
  ///
  /// In en, this message translates to:
  /// **'PLI: government and semi-government employees, professionals, graduates, diploma holders and others listed by India Post. RPLI: rural residents and scheduled bank savings account holders.'**
  String get faq5a;

  /// No description provided for @aboutTitle.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutTitle;

  /// No description provided for @privacyTitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get privacyTitle;

  /// No description provided for @privacyBody.
  ///
  /// In en, this message translates to:
  /// **'PLI & RPLI Calculator collects no data. Everything you enter or save stays on this phone. No account or internet connection is needed.'**
  String get privacyBody;

  /// No description provided for @dataSourceTitle.
  ///
  /// In en, this message translates to:
  /// **'Rate data'**
  String get dataSourceTitle;

  /// No description provided for @dataSourceBody.
  ///
  /// In en, this message translates to:
  /// **'Rules {id}, effective {date}. Source: {source}'**
  String dataSourceBody(String id, String date, String source);

  /// No description provided for @provisionalTitle.
  ///
  /// In en, this message translates to:
  /// **'Rules still being confirmed'**
  String get provisionalTitle;

  /// No description provided for @provisionalIntro.
  ///
  /// In en, this message translates to:
  /// **'These rules are working assumptions until they are confirmed from official India Post circulars (shown in English):'**
  String get provisionalIntro;

  /// No description provided for @checkUpdates.
  ///
  /// In en, this message translates to:
  /// **'Check for rate updates'**
  String get checkUpdates;

  /// No description provided for @updateInstalled.
  ///
  /// In en, this message translates to:
  /// **'Rate data updated to version {version}.'**
  String updateInstalled(int version);

  /// No description provided for @updateCurrent.
  ///
  /// In en, this message translates to:
  /// **'Rate data is up to date.'**
  String get updateCurrent;

  /// No description provided for @updateFailed.
  ///
  /// In en, this message translates to:
  /// **'Update failed; current rates kept. {error}'**
  String updateFailed(String error);

  /// No description provided for @sampleDataNote.
  ///
  /// In en, this message translates to:
  /// **'Premium tables are SAMPLE data, not official India Post figures.'**
  String get sampleDataNote;

  /// No description provided for @appVersion.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String appVersion(String version);

  /// No description provided for @homeTagline.
  ///
  /// In en, this message translates to:
  /// **'Premium, bonus and maturity — works offline'**
  String get homeTagline;

  /// No description provided for @quickPremiumTitle.
  ///
  /// In en, this message translates to:
  /// **'Calculate premium'**
  String get quickPremiumTitle;

  /// No description provided for @quickPremiumBody.
  ///
  /// In en, this message translates to:
  /// **'Any plan, age and sum assured — all frequencies'**
  String get quickPremiumBody;

  /// No description provided for @sectionCalculators.
  ///
  /// In en, this message translates to:
  /// **'Calculators'**
  String get sectionCalculators;

  /// No description provided for @sectionServicing.
  ///
  /// In en, this message translates to:
  /// **'Policy servicing'**
  String get sectionServicing;

  /// No description provided for @sectionLearn.
  ///
  /// In en, this message translates to:
  /// **'Learn'**
  String get sectionLearn;

  /// No description provided for @descPremium.
  ///
  /// In en, this message translates to:
  /// **'Premium for every frequency'**
  String get descPremium;

  /// No description provided for @descMaturity.
  ///
  /// In en, this message translates to:
  /// **'Bonus and maturity value'**
  String get descMaturity;

  /// No description provided for @descCompare.
  ///
  /// In en, this message translates to:
  /// **'Plans side by side'**
  String get descCompare;

  /// No description provided for @descAfford.
  ///
  /// In en, this message translates to:
  /// **'Best cover for your budget'**
  String get descAfford;

  /// No description provided for @descPolicies.
  ///
  /// In en, this message translates to:
  /// **'Saved policies and due dates'**
  String get descPolicies;

  /// No description provided for @descTools.
  ///
  /// In en, this message translates to:
  /// **'Loan, revival, paid-up'**
  String get descTools;

  /// No description provided for @descQuotation.
  ///
  /// In en, this message translates to:
  /// **'Share a PDF quote'**
  String get descQuotation;

  /// No description provided for @descEligibility.
  ///
  /// In en, this message translates to:
  /// **'Who can buy PLI or RPLI'**
  String get descEligibility;

  /// No description provided for @descPlans.
  ///
  /// In en, this message translates to:
  /// **'Plan rules and FAQs'**
  String get descPlans;

  /// No description provided for @descAbout.
  ///
  /// In en, this message translates to:
  /// **'Privacy and rate data'**
  String get descAbout;

  /// No description provided for @sectionPersonTitle.
  ///
  /// In en, this message translates to:
  /// **'Policy holder'**
  String get sectionPersonTitle;

  /// No description provided for @sectionCoverTitle.
  ///
  /// In en, this message translates to:
  /// **'Cover and payment'**
  String get sectionCoverTitle;

  /// No description provided for @tileForms.
  ///
  /// In en, this message translates to:
  /// **'Forms'**
  String get tileForms;

  /// No description provided for @descForms.
  ///
  /// In en, this message translates to:
  /// **'Forms, checklists, letters'**
  String get descForms;

  /// No description provided for @formsTitle.
  ///
  /// In en, this message translates to:
  /// **'Forms and letters'**
  String get formsTitle;

  /// No description provided for @formsIntro.
  ///
  /// In en, this message translates to:
  /// **'What each PLI / RPLI request needs, where to get the form, and ready-made request letters.'**
  String get formsIntro;

  /// No description provided for @formsVerifyNote.
  ///
  /// In en, this message translates to:
  /// **'Document lists are a guide and can change. Confirm with your Post Office before submitting.'**
  String get formsVerifyNote;

  /// No description provided for @whereToGetTitle.
  ///
  /// In en, this message translates to:
  /// **'Where to get the form'**
  String get whereToGetTitle;

  /// No description provided for @whereToGetBody.
  ///
  /// In en, this message translates to:
  /// **'Free at any Post Office or CPC, or download it from the India Post PLI website.'**
  String get whereToGetBody;

  /// No description provided for @documentsTitle.
  ///
  /// In en, this message translates to:
  /// **'Documents to keep ready'**
  String get documentsTitle;

  /// No description provided for @openOfficialForm.
  ///
  /// In en, this message translates to:
  /// **'Open official form'**
  String get openOfficialForm;

  /// No description provided for @getFromIndiaPost.
  ///
  /// In en, this message translates to:
  /// **'Get the form from India Post'**
  String get getFromIndiaPost;

  /// No description provided for @detailsSheetTitle.
  ///
  /// In en, this message translates to:
  /// **'Policy details sheet'**
  String get detailsSheetTitle;

  /// No description provided for @detailsSheetIntro.
  ///
  /// In en, this message translates to:
  /// **'Your saved policy details in one place, to copy onto the official form.'**
  String get detailsSheetIntro;

  /// No description provided for @writeLetterTitle.
  ///
  /// In en, this message translates to:
  /// **'Write a request letter'**
  String get writeLetterTitle;

  /// No description provided for @writeLetterIntro.
  ///
  /// In en, this message translates to:
  /// **'A ready letter to the Postmaster, filled from your saved policy.'**
  String get writeLetterIntro;

  /// No description provided for @choosePolicy.
  ///
  /// In en, this message translates to:
  /// **'Saved policy'**
  String get choosePolicy;

  /// No description provided for @noSavedPolicies.
  ///
  /// In en, this message translates to:
  /// **'Save a policy under My Policies first.'**
  String get noSavedPolicies;

  /// No description provided for @toOfficeLabel.
  ///
  /// In en, this message translates to:
  /// **'To (Post Office / CPC)'**
  String get toOfficeLabel;

  /// No description provided for @yourAddressLabel.
  ///
  /// In en, this message translates to:
  /// **'Your address'**
  String get yourAddressLabel;

  /// No description provided for @phoneLabel.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phoneLabel;

  /// No description provided for @placeLabel.
  ///
  /// In en, this message translates to:
  /// **'Place'**
  String get placeLabel;

  /// No description provided for @nomineeNameLabel.
  ///
  /// In en, this message translates to:
  /// **'New nominee name'**
  String get nomineeNameLabel;

  /// No description provided for @nomineeRelationLabel.
  ///
  /// In en, this message translates to:
  /// **'Relationship'**
  String get nomineeRelationLabel;

  /// No description provided for @nomineeAgeLabel.
  ///
  /// In en, this message translates to:
  /// **'Nominee age'**
  String get nomineeAgeLabel;

  /// No description provided for @newAddressLabel.
  ///
  /// In en, this message translates to:
  /// **'New address'**
  String get newAddressLabel;

  /// No description provided for @bondLost.
  ///
  /// In en, this message translates to:
  /// **'Lost'**
  String get bondLost;

  /// No description provided for @bondDamaged.
  ///
  /// In en, this message translates to:
  /// **'Damaged'**
  String get bondDamaged;

  /// No description provided for @lapsedFromLabel.
  ///
  /// In en, this message translates to:
  /// **'Premiums unpaid since'**
  String get lapsedFromLabel;

  /// No description provided for @shareAsText.
  ///
  /// In en, this message translates to:
  /// **'Share as text'**
  String get shareAsText;

  /// No description provided for @copyText.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copyText;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'Copied'**
  String get copied;

  /// No description provided for @letterEnglishNote.
  ///
  /// In en, this message translates to:
  /// **'Letters are written in English, the usual language for India Post correspondence. Sign before submitting.'**
  String get letterEnglishNote;

  /// No description provided for @formsOfficialNote.
  ///
  /// In en, this message translates to:
  /// **'This app is not India Post. Always submit India Post\'s own prescribed form where one exists.'**
  String get formsOfficialNote;

  /// No description provided for @svc_proposal.
  ///
  /// In en, this message translates to:
  /// **'New policy proposal'**
  String get svc_proposal;

  /// No description provided for @svcDesc_proposal.
  ///
  /// In en, this message translates to:
  /// **'Apply for a new PLI or RPLI policy'**
  String get svcDesc_proposal;

  /// No description provided for @svc_maturity.
  ///
  /// In en, this message translates to:
  /// **'Maturity claim'**
  String get svc_maturity;

  /// No description provided for @svcDesc_maturity.
  ///
  /// In en, this message translates to:
  /// **'Claim the amount when the policy matures'**
  String get svcDesc_maturity;

  /// No description provided for @svc_survival.
  ///
  /// In en, this message translates to:
  /// **'Survival benefit claim'**
  String get svc_survival;

  /// No description provided for @svcDesc_survival.
  ///
  /// In en, this message translates to:
  /// **'Money-back instalments (Sumangal, Gram Priya)'**
  String get svcDesc_survival;

  /// No description provided for @svc_death.
  ///
  /// In en, this message translates to:
  /// **'Death claim'**
  String get svc_death;

  /// No description provided for @svcDesc_death.
  ///
  /// In en, this message translates to:
  /// **'Claim by the nominee or legal heir'**
  String get svcDesc_death;

  /// No description provided for @svc_loan.
  ///
  /// In en, this message translates to:
  /// **'Policy loan'**
  String get svc_loan;

  /// No description provided for @svcDesc_loan.
  ///
  /// In en, this message translates to:
  /// **'Borrow against your policy'**
  String get svcDesc_loan;

  /// No description provided for @svc_surrender.
  ///
  /// In en, this message translates to:
  /// **'Surrender'**
  String get svc_surrender;

  /// No description provided for @svcDesc_surrender.
  ///
  /// In en, this message translates to:
  /// **'Close the policy early for its surrender value'**
  String get svcDesc_surrender;

  /// No description provided for @svc_revival.
  ///
  /// In en, this message translates to:
  /// **'Revival'**
  String get svc_revival;

  /// No description provided for @svcDesc_revival.
  ///
  /// In en, this message translates to:
  /// **'Restart a lapsed policy'**
  String get svcDesc_revival;

  /// No description provided for @svc_nomination.
  ///
  /// In en, this message translates to:
  /// **'Change of nomination'**
  String get svc_nomination;

  /// No description provided for @svcDesc_nomination.
  ///
  /// In en, this message translates to:
  /// **'Add or change the nominee'**
  String get svcDesc_nomination;

  /// No description provided for @svc_address.
  ///
  /// In en, this message translates to:
  /// **'Change of address'**
  String get svc_address;

  /// No description provided for @svcDesc_address.
  ///
  /// In en, this message translates to:
  /// **'Update your address on the policy'**
  String get svcDesc_address;

  /// No description provided for @svc_duplicate.
  ///
  /// In en, this message translates to:
  /// **'Duplicate policy bond'**
  String get svc_duplicate;

  /// No description provided for @svcDesc_duplicate.
  ///
  /// In en, this message translates to:
  /// **'Replace a lost or damaged bond'**
  String get svcDesc_duplicate;

  /// No description provided for @svc_assignment.
  ///
  /// In en, this message translates to:
  /// **'Assignment'**
  String get svc_assignment;

  /// No description provided for @svcDesc_assignment.
  ///
  /// In en, this message translates to:
  /// **'Transfer policy rights, e.g. to a bank'**
  String get svcDesc_assignment;

  /// No description provided for @svc_conversion.
  ///
  /// In en, this message translates to:
  /// **'Conversion (Suvidha)'**
  String get svc_conversion;

  /// No description provided for @svcDesc_conversion.
  ///
  /// In en, this message translates to:
  /// **'Convert whole life to endowment'**
  String get svcDesc_conversion;

  /// No description provided for @doc_form.
  ///
  /// In en, this message translates to:
  /// **'Prescribed form, filled and signed'**
  String get doc_form;

  /// No description provided for @doc_policyBond.
  ///
  /// In en, this message translates to:
  /// **'Original policy bond (or ePLI bond)'**
  String get doc_policyBond;

  /// No description provided for @doc_receiptBook.
  ///
  /// In en, this message translates to:
  /// **'Premium receipt book or receipts'**
  String get doc_receiptBook;

  /// No description provided for @doc_idProof.
  ///
  /// In en, this message translates to:
  /// **'ID proof (Aadhaar, PAN, etc.)'**
  String get doc_idProof;

  /// No description provided for @doc_addressProof.
  ///
  /// In en, this message translates to:
  /// **'Address proof'**
  String get doc_addressProof;

  /// No description provided for @doc_ageProof.
  ///
  /// In en, this message translates to:
  /// **'Age proof'**
  String get doc_ageProof;

  /// No description provided for @doc_bankDetails.
  ///
  /// In en, this message translates to:
  /// **'Bank passbook or cancelled cheque'**
  String get doc_bankDetails;

  /// No description provided for @doc_photo.
  ///
  /// In en, this message translates to:
  /// **'Passport-size photograph'**
  String get doc_photo;

  /// No description provided for @doc_deathCertificate.
  ///
  /// In en, this message translates to:
  /// **'Death certificate'**
  String get doc_deathCertificate;

  /// No description provided for @doc_claimantId.
  ///
  /// In en, this message translates to:
  /// **'Claimant\'s ID and proof of relationship'**
  String get doc_claimantId;

  /// No description provided for @doc_medical.
  ///
  /// In en, this message translates to:
  /// **'Medical certificate / health declaration (if asked)'**
  String get doc_medical;

  /// No description provided for @doc_eligibility.
  ///
  /// In en, this message translates to:
  /// **'Proof of eligibility (job, degree or rural residence)'**
  String get doc_eligibility;

  /// No description provided for @doc_nomineeDetails.
  ///
  /// In en, this message translates to:
  /// **'Nominee\'s name, age and relationship'**
  String get doc_nomineeDetails;

  /// No description provided for @doc_indemnity.
  ///
  /// In en, this message translates to:
  /// **'Indemnity bond (if asked)'**
  String get doc_indemnity;

  /// No description provided for @customerPhoneLabel.
  ///
  /// In en, this message translates to:
  /// **'Customer mobile (for WhatsApp reminders)'**
  String get customerPhoneLabel;

  /// No description provided for @exportBackup.
  ///
  /// In en, this message translates to:
  /// **'Back up policies'**
  String get exportBackup;

  /// No description provided for @importBackup.
  ///
  /// In en, this message translates to:
  /// **'Restore from backup'**
  String get importBackup;

  /// No description provided for @importConfirm.
  ///
  /// In en, this message translates to:
  /// **'Restore {count} policies from this backup? Policies already saved with the same ID are replaced.'**
  String importConfirm(int count);

  /// No description provided for @importDone.
  ///
  /// In en, this message translates to:
  /// **'{count} policies restored.'**
  String importDone(int count);

  /// No description provided for @importFailed.
  ///
  /// In en, this message translates to:
  /// **'This file is not a PLI & RPLI Calculator backup.'**
  String get importFailed;

  /// No description provided for @backupNote.
  ///
  /// In en, this message translates to:
  /// **'The backup file contains your policy details. Keep it somewhere safe, such as your own WhatsApp chat or Google Drive.'**
  String get backupNote;

  /// No description provided for @restore.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get restore;

  /// No description provided for @tileDues.
  ///
  /// In en, this message translates to:
  /// **'Dues'**
  String get tileDues;

  /// No description provided for @descDues.
  ///
  /// In en, this message translates to:
  /// **'Premiums due this month'**
  String get descDues;

  /// No description provided for @duesTitle.
  ///
  /// In en, this message translates to:
  /// **'Premium dues'**
  String get duesTitle;

  /// No description provided for @duesTotal.
  ///
  /// In en, this message translates to:
  /// **'Total due'**
  String get duesTotal;

  /// No description provided for @duesCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 premium} other{{count} premiums}}'**
  String duesCount(int count);

  /// No description provided for @noDuesInMonth.
  ///
  /// In en, this message translates to:
  /// **'No premiums fall due in this month.'**
  String get noDuesInMonth;

  /// No description provided for @remindOnWhatsApp.
  ///
  /// In en, this message translates to:
  /// **'Remind'**
  String get remindOnWhatsApp;

  /// No description provided for @dueReminderMessage.
  ///
  /// In en, this message translates to:
  /// **'Dear {name}, your premium of {amount} for policy {number} is due on {date}. Please pay at your Post Office.'**
  String dueReminderMessage(
    String name,
    String amount,
    String number,
    String date,
  );

  /// No description provided for @tileProfile.
  ///
  /// In en, this message translates to:
  /// **'Agent profile'**
  String get tileProfile;

  /// No description provided for @descProfile.
  ///
  /// In en, this message translates to:
  /// **'Your name and logo on quotations'**
  String get descProfile;

  /// No description provided for @profileTitle.
  ///
  /// In en, this message translates to:
  /// **'Agent profile'**
  String get profileTitle;

  /// No description provided for @agentNameField.
  ///
  /// In en, this message translates to:
  /// **'Your name'**
  String get agentNameField;

  /// No description provided for @agentPhoneField.
  ///
  /// In en, this message translates to:
  /// **'Your phone'**
  String get agentPhoneField;

  /// No description provided for @agentCodeField.
  ///
  /// In en, this message translates to:
  /// **'Agent ID / office (optional)'**
  String get agentCodeField;

  /// No description provided for @chooseLogo.
  ///
  /// In en, this message translates to:
  /// **'Choose photo or logo'**
  String get chooseLogo;

  /// No description provided for @removeLogo.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get removeLogo;

  /// No description provided for @profileNote.
  ///
  /// In en, this message translates to:
  /// **'Shown on quotations and reminder messages. Stored only on this phone.'**
  String get profileNote;

  /// No description provided for @profileSaved.
  ///
  /// In en, this message translates to:
  /// **'Profile saved.'**
  String get profileSaved;

  /// No description provided for @searchPolicies.
  ///
  /// In en, this message translates to:
  /// **'Search name, policy no. or mobile'**
  String get searchPolicies;

  /// No description provided for @sortLabel.
  ///
  /// In en, this message translates to:
  /// **'Sort by'**
  String get sortLabel;

  /// No description provided for @sortName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get sortName;

  /// No description provided for @sortNextDue.
  ///
  /// In en, this message translates to:
  /// **'Next due'**
  String get sortNextDue;

  /// No description provided for @sortSumAssured.
  ///
  /// In en, this message translates to:
  /// **'Sum assured'**
  String get sortSumAssured;

  /// No description provided for @noSearchResults.
  ///
  /// In en, this message translates to:
  /// **'No policies match “{query}”.'**
  String noSearchResults(String query);

  /// No description provided for @filterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get filterAll;

  /// No description provided for @filterPending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get filterPending;

  /// No description provided for @filterCollected.
  ///
  /// In en, this message translates to:
  /// **'Collected'**
  String get filterCollected;

  /// No description provided for @markCollected.
  ///
  /// In en, this message translates to:
  /// **'Mark as collected'**
  String get markCollected;

  /// No description provided for @markNotCollected.
  ///
  /// In en, this message translates to:
  /// **'Mark as not collected'**
  String get markNotCollected;

  /// No description provided for @duesPendingTotal.
  ///
  /// In en, this message translates to:
  /// **'Still to collect'**
  String get duesPendingTotal;

  /// No description provided for @duesCollectedOf.
  ///
  /// In en, this message translates to:
  /// **'{collected} of {total} collected'**
  String duesCollectedOf(int collected, int total);

  /// No description provided for @duesMonthTotal.
  ///
  /// In en, this message translates to:
  /// **'Total for the month'**
  String get duesMonthTotal;

  /// No description provided for @collectedNote.
  ///
  /// In en, this message translates to:
  /// **'Collected marks are your own record. They do not check payment in India Post\'s system.'**
  String get collectedNote;

  /// No description provided for @noDuesInFilter.
  ///
  /// In en, this message translates to:
  /// **'Nothing in this list.'**
  String get noDuesInFilter;

  /// No description provided for @openFormLink.
  ///
  /// In en, this message translates to:
  /// **'Download form'**
  String get openFormLink;

  /// No description provided for @shareFormLink.
  ///
  /// In en, this message translates to:
  /// **'Share form link'**
  String get shareFormLink;

  /// No description provided for @formLinkMessage.
  ///
  /// In en, this message translates to:
  /// **'{service} form (India Post): {url}'**
  String formLinkMessage(String service, String url);

  /// No description provided for @tileLinks.
  ///
  /// In en, this message translates to:
  /// **'Official links'**
  String get tileLinks;

  /// No description provided for @descLinks.
  ///
  /// In en, this message translates to:
  /// **'Portal, forms, helpline'**
  String get descLinks;

  /// No description provided for @linksTitle.
  ///
  /// In en, this message translates to:
  /// **'Official links & help'**
  String get linksTitle;

  /// No description provided for @linkPortalTitle.
  ///
  /// In en, this message translates to:
  /// **'PLI Customer Portal'**
  String get linkPortalTitle;

  /// No description provided for @linkPortalDesc.
  ///
  /// In en, this message translates to:
  /// **'Pay premium online, policy status, receipts'**
  String get linkPortalDesc;

  /// No description provided for @linkFormsTitle.
  ///
  /// In en, this message translates to:
  /// **'Official PLI/RPLI forms'**
  String get linkFormsTitle;

  /// No description provided for @linkFormsDesc.
  ///
  /// In en, this message translates to:
  /// **'Download forms from India Post'**
  String get linkFormsDesc;

  /// No description provided for @linkIndiaPostTitle.
  ///
  /// In en, this message translates to:
  /// **'India Post'**
  String get linkIndiaPostTitle;

  /// No description provided for @linkIndiaPostDesc.
  ///
  /// In en, this message translates to:
  /// **'Department of Posts website'**
  String get linkIndiaPostDesc;

  /// No description provided for @linkHelplineTitle.
  ///
  /// In en, this message translates to:
  /// **'India Post customer care'**
  String get linkHelplineTitle;

  /// No description provided for @linkHelplineDesc.
  ///
  /// In en, this message translates to:
  /// **'Toll-free {number}'**
  String linkHelplineDesc(String number);

  /// No description provided for @linkDigiLockerTitle.
  ///
  /// In en, this message translates to:
  /// **'DigiLocker'**
  String get linkDigiLockerTitle;

  /// No description provided for @linkDigiLockerDesc.
  ///
  /// In en, this message translates to:
  /// **'Keep your e-policy bond safe'**
  String get linkDigiLockerDesc;

  /// No description provided for @linkGrievanceTitle.
  ///
  /// In en, this message translates to:
  /// **'Public grievance (CPGRAMS)'**
  String get linkGrievanceTitle;

  /// No description provided for @linkGrievanceDesc.
  ///
  /// In en, this message translates to:
  /// **'Raise a complaint with the Government of India'**
  String get linkGrievanceDesc;

  /// No description provided for @linksNote.
  ///
  /// In en, this message translates to:
  /// **'These open official Government of India websites. This app is independent and is not affiliated with India Post or the Department of Posts.'**
  String get linksNote;

  /// No description provided for @formSourceLabel.
  ///
  /// In en, this message translates to:
  /// **'Official source of this form'**
  String get formSourceLabel;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'as',
    'bn',
    'en',
    'gu',
    'hi',
    'kn',
    'ml',
    'mr',
    'or',
    'pa',
    'ta',
    'te',
    'ur',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'as':
      return AppLocalizationsAs();
    case 'bn':
      return AppLocalizationsBn();
    case 'en':
      return AppLocalizationsEn();
    case 'gu':
      return AppLocalizationsGu();
    case 'hi':
      return AppLocalizationsHi();
    case 'kn':
      return AppLocalizationsKn();
    case 'ml':
      return AppLocalizationsMl();
    case 'mr':
      return AppLocalizationsMr();
    case 'or':
      return AppLocalizationsOr();
    case 'pa':
      return AppLocalizationsPa();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'ur':
      return AppLocalizationsUr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
