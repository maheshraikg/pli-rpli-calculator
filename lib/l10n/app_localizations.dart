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
  /// **'PLI Sahayak'**
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
  /// **'{age} years'**
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
  /// **'{years} years'**
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

  /// No description provided for @returnRow.
  ///
  /// In en, this message translates to:
  /// **'Effective return (XIRR)'**
  String get returnRow;

  /// No description provided for @returnValue.
  ///
  /// In en, this message translates to:
  /// **'{percent}% a year'**
  String returnValue(String percent);

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

  /// No description provided for @returnShort.
  ///
  /// In en, this message translates to:
  /// **'Return'**
  String get returnShort;

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
  /// **'{months} months'**
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
  /// **'Due {date} • {months} months late • fee {fee}'**
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
  /// **'PLI Sahayak collects no data. Everything you enter or save stays on this phone. No account or internet connection is needed.'**
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
