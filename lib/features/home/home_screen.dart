import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/theme.dart';
import '../../core/widgets/language_button.dart';
import '../../core/widgets/rates_footer.dart';
import '../../core/widgets/sample_data_banner.dart';
import '../../core/widgets/ui.dart';
import '../../data/data_repository.dart';
import '../../data/storage.dart';
import '../../l10n/app_localizations.dart';
import '../../core/app_icons.dart';

const _teal = Color(0xFF00897B);
const _indigo = Color(0xFF3949AB);
const _amber = Color(0xFFB26A00);
const _green = Color(0xFF2E7D32);
const _purple = Color(0xFF6A1B9A);

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _showDisclaimerOnce());
  }

  Future<void> _showDisclaimerOnce() async {
    final settings = ref.read(settingsStoreProvider);
    if (settings.disclaimerAccepted || !mounted) return;
    final l = AppLocalizations.of(context);
    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        icon: const Icon(AppIcons.infoLine),
        title: Text(l.independentDisclaimerTitle),
        content: Text('${l.independentDisclaimer}\n\n${l.bonusDisclaimer}'),
        actions: [FilledButton(onPressed: () => Navigator.pop(context), child: Text(l.understood))],
      ),
    );
    await settings.acceptDisclaimer();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final data = ref.watch(appDataProvider).value;

    final sections = [
      (
        l.sectionCalculators,
        [
          (AppIcons.currencyInr, l.tilePremium, l.descPremium, '/premium', kAccentRed),
          (AppIcons.handCoins, l.tileMaturity, l.descMaturity, '/maturity', _green),
          (AppIcons.scales, l.tileCompare, l.descCompare, '/compare', _indigo),
          (AppIcons.wallet, l.tileAfford, l.descAfford, '/afford', _teal),
        ],
      ),
      (
        l.sectionServicing,
        [
          (AppIcons.umbrella, l.tileMyPolicies, l.descPolicies, '/policies', _purple),
        (AppIcons.calendarDots, l.tileDues, l.descDues, '/dues', _teal),
          (AppIcons.bank, l.tileTools, l.descTools, '/tools', _amber),
          (AppIcons.invoice, l.tileQuotation, l.descQuotation, '/quotation', kAccentRed),
          (AppIcons.clipboardText, l.tileForms, l.descForms, '/forms', _indigo),
        (AppIcons.identificationBadge, l.tileProfile, l.descProfile, '/profile', _green),
        ],
      ),
      (
        l.sectionLearn,
        [
          (AppIcons.userCheck, l.tileEligibility, l.descEligibility, '/eligibility', _green),
          (AppIcons.bookOpenText, l.tilePlans, l.descPlans, '/plans', _indigo),
          (AppIcons.globeHemisphereEast, l.tileLinks, l.descLinks, '/links', kAccentRed),
          (AppIcons.info, l.tileAbout, l.descAbout, '/about', _teal),
        ],
      ),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: _Header(financialYear: data?.rules.financialYear)),
          if (data?.usesSampleData ?? false)
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(14)), child: SampleDataBanner()),
              ),
            ),
          for (final (title, tiles) in sections) ...[
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              sliver: SliverToBoxAdapter(child: SectionHeading(title)),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              // Rows of two equal-height tiles that grow with long translations.
              sliver: SliverList.list(
                children: [
                  for (var i = 0; i < tiles.length; i += 2)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            for (final (k, t)
                                in tiles.sublist(i, i + 2 > tiles.length ? tiles.length : i + 2).indexed) ...[
                              if (k == 1) const SizedBox(width: 12),
                              Expanded(
                                child: _HomeTile(
                                  icon: t.$1,
                                  label: t.$2,
                                  description: t.$3,
                                  color: t.$5,
                                  onTap: () => context.push(t.$4),
                                ),
                              ),
                            ],
                            if (i + 1 >= tiles.length) ...[
                              const SizedBox(width: 12),
                              const Expanded(child: SizedBox()),
                            ],
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 24),
              child: data == null ? const SizedBox.shrink() : RatesFooter(financialYear: data.rules.financialYear),
            ),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.financialYear});

  final String? financialYear;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final text = Theme.of(context).textTheme;
    const white = Colors.white;
    return Container(
      decoration: const BoxDecoration(
        gradient: kHeroGradient,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(28)),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 12, 8, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(color: white, shape: BoxShape.circle),
                    child: Padding(padding: const EdgeInsets.all(9), child: Image.asset('assets/images/umbrella.png')),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(l.appTitle, style: text.headlineSmall?.copyWith(color: white)),
                        Text(l.homeTagline, style: text.bodySmall?.copyWith(color: white.withValues(alpha: 0.85))),
                      ],
                    ),
                  ),
                  const IconTheme(
                    data: IconThemeData(color: white),
                    child: LanguageButton(),
                  ),
                ],
              ),
              if (financialYear != null)
                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: white.withValues(alpha: 0.16),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const AppIcon(AppIcons.calendarDots, color: white, size: 16),
                          const SizedBox(width: 6),
                          Text('FY $financialYear', style: text.labelMedium?.copyWith(color: white)),
                        ],
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 12),
                child: Material(
                  color: Theme.of(context).cardTheme.color ?? Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(18),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(18),
                    onTap: () => context.push('/premium'),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        children: [
                          const IconBadge(AppIcons.calculator, size: 44),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(l.quickPremiumTitle, style: text.titleMedium),
                                Text(l.quickPremiumBody, style: text.bodySmall),
                              ],
                            ),
                          ),
                          const Icon(AppIcons.arrowRightBold, color: kAccentRed),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeTile extends StatelessWidget {
  const _HomeTile({
    required this.icon,
    required this.label,
    required this.description,
    required this.color,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final String description;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    return Card(
      margin: EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconBadge(icon, color: color),
              const SizedBox(height: 12),
              Text(label, style: text.titleMedium, maxLines: 2, overflow: TextOverflow.ellipsis),
              const SizedBox(height: 2),
              Text(
                description,
                style: text.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
