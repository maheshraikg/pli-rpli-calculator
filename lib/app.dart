import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';

import 'core/theme.dart';
import 'features/eligibility/eligibility_screen.dart';
import 'features/home/home_screen.dart';
import 'features/maturity/maturity_screen.dart';
import 'features/premium/premium_screen.dart';
import 'l10n/app_localizations.dart';

GoRouter buildRouter({String initialLocation = '/'}) => GoRouter(initialLocation: initialLocation, routes: [
      GoRoute(path: '/', builder: (context, state) => const HomeScreen(), routes: [
        GoRoute(path: 'premium', builder: (context, state) => const PremiumScreen()),
        GoRoute(path: 'maturity', builder: (context, state) => const MaturityScreen()),
        GoRoute(path: 'eligibility', builder: (context, state) => const EligibilityScreen()),
      ]),
    ]);

class PliSahayakApp extends StatefulWidget {
  const PliSahayakApp({super.key, this.locale, this.initialLocation = '/'});

  /// Null follows the device language.
  final Locale? locale;
  final String initialLocation;

  @override
  State<PliSahayakApp> createState() => _PliSahayakAppState();
}

class _PliSahayakAppState extends State<PliSahayakApp> {
  late final _router = buildRouter(initialLocation: widget.initialLocation);

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
        theme: buildTheme(Brightness.light),
        darkTheme: buildTheme(Brightness.dark),
        locale: widget.locale,
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        routerConfig: _router,
      );
}
