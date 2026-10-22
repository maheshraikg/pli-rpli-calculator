import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'core/locale.dart';
import 'core/theme.dart';
import 'features/about/about_screen.dart';
import 'features/compare/compare_screen.dart';
import 'features/dues/dues_screen.dart';
import 'features/eligibility/eligibility_screen.dart';
import 'features/forms/forms_screen.dart';
import 'features/forms/letter_screen.dart';
import 'features/home/home_screen.dart';
import 'features/maturity/maturity_screen.dart';
import 'features/plans/plan_info_screen.dart';
import 'features/policies/policies_screen.dart';
import 'features/policies/policy_detail_screen.dart';
import 'features/policies/policy_form_screen.dart';
import 'features/premium/premium_screen.dart';
import 'features/profile/profile_screen.dart';
import 'features/quotation/quotation_screen.dart';
import 'features/reverse/reverse_screen.dart';
import 'features/tools/tools_screen.dart';
import 'l10n/app_localizations.dart';

GoRouter buildRouter({String initialLocation = '/'}) => GoRouter(
  initialLocation: initialLocation,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(path: 'premium', builder: (context, state) => const PremiumScreen()),
        GoRoute(path: 'maturity', builder: (context, state) => const MaturityScreen()),
        GoRoute(path: 'eligibility', builder: (context, state) => const EligibilityScreen()),
        GoRoute(path: 'afford', builder: (context, state) => const ReverseScreen()),
        GoRoute(path: 'compare', builder: (context, state) => const CompareScreen()),
        GoRoute(path: 'tools', builder: (context, state) => const ToolsScreen()),
        GoRoute(path: 'quotation', builder: (context, state) => const QuotationScreen()),
        GoRoute(path: 'plans', builder: (context, state) => const PlanInfoScreen()),
        GoRoute(path: 'about', builder: (context, state) => const AboutScreen()),
        GoRoute(path: 'dues', builder: (context, state) => const DuesScreen()),
        GoRoute(path: 'profile', builder: (context, state) => const ProfileScreen()),
        GoRoute(
          path: 'forms',
          builder: (context, state) => const FormsScreen(),
          routes: [
            GoRoute(path: 'sheet', builder: (context, state) => const DetailsSheetScreen()),
            GoRoute(
              path: ':id',
              builder: (context, state) => FormDetailScreen(id: state.pathParameters['id']!),
              routes: [
                GoRoute(
                  path: 'letter',
                  builder: (context, state) => LetterScreen(serviceId: state.pathParameters['id']!),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: 'policies',
          builder: (context, state) => const PoliciesScreen(),
          routes: [
            GoRoute(path: 'new', builder: (context, state) => const PolicyFormScreen()),
            GoRoute(
              path: ':id',
              builder: (context, state) => PolicyDetailScreen(id: state.pathParameters['id']!),
              routes: [
                GoRoute(
                  path: 'edit',
                  builder: (context, state) => PolicyFormScreen(id: state.pathParameters['id']),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);

class PliRpliApp extends ConsumerStatefulWidget {
  const PliRpliApp({super.key, this.locale, this.initialLocation = '/'});

  /// Starting language; null follows the device. The in-app language
  /// choice overrides it.
  final Locale? locale;
  final String initialLocation;

  @override
  ConsumerState<PliRpliApp> createState() => _PliRpliAppState();
}

class _PliRpliAppState extends ConsumerState<PliRpliApp> {
  late final _router = buildRouter(initialLocation: widget.initialLocation);

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    debugShowCheckedModeBanner: false,
    onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
    theme: buildTheme(Brightness.light),
    darkTheme: buildTheme(Brightness.dark),
    locale: ref.watch(localeProvider) ?? widget.locale,
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
