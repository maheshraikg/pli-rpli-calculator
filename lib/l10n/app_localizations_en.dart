// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'PLI Sahayak';

  @override
  String get tilePremium => 'Premium';

  @override
  String get tileMaturity => 'Maturity';

  @override
  String get tileCompare => 'Compare';

  @override
  String get tileEligibility => 'Eligibility';

  @override
  String get tileMyPolicies => 'My Policies';

  @override
  String get tileQuotation => 'Quotation';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get sampleDataBanner => 'SAMPLE DATA – NOT OFFICIAL';

  @override
  String ratesFooter(String financialYear) {
    return 'Rates FY $financialYear • Source: India Post';
  }

  @override
  String get bonusDisclaimer =>
      'Bonus rates are declared yearly and are not guaranteed for the future. Final figures as per India Post.';

  @override
  String get independentDisclaimerTitle => 'Before you start';

  @override
  String get independentDisclaimer =>
      'This is an independent calculator, not an official India Post app. All calculations happen on your phone; no data is collected.';

  @override
  String get understood => 'I understand';

  @override
  String dataLoadError(String error) {
    return 'Could not load rate data: $error';
  }
}
