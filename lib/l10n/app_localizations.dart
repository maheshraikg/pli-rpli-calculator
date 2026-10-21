import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_kn.dart';

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
    Locale('en'),
    Locale('kn'),
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
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'kn'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'kn':
      return AppLocalizationsKn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
