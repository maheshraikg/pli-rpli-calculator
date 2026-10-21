import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/data_scaffold.dart';
import '../../data/storage.dart';
import '../../l10n/app_localizations.dart';

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
        icon: const Icon(Icons.info_outline),
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
    final tiles = [
      (Icons.calculate, l.tilePremium, '/premium'),
      (Icons.savings, l.tileMaturity, '/maturity'),
      (Icons.compare_arrows, l.tileCompare, '/compare'),
      (Icons.verified_user, l.tileEligibility, '/eligibility'),
      (Icons.folder_shared, l.tileMyPolicies, '/policies'),
      (Icons.picture_as_pdf, l.tileQuotation, '/quotation'),
      (Icons.account_balance_wallet_outlined, l.tileAfford, '/afford'),
      (Icons.build_outlined, l.tileTools, '/tools'),
      (Icons.menu_book_outlined, l.tilePlans, '/plans'),
      (Icons.info_outline, l.tileAbout, '/about'),
    ];
    return DataScaffold(
      title: l.appTitle,
      builder: (context, data) => GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 1.25,
        children: [
          for (final (icon, label, route) in tiles)
            Card.outlined(
              child: InkWell(
                onTap: () => context.push(route),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(icon, size: 36, color: Theme.of(context).colorScheme.primary),
                    const SizedBox(height: 8),
                    Text(label,
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis),
                  ]),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
