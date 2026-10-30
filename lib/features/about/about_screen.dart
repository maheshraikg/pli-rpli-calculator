import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/widgets/data_scaffold.dart';
import '../../data/data_repository.dart';
import '../../data/rate_update.dart';
import '../../l10n/app_localizations.dart';
import '../common/plan_config_form.dart';
import '../../core/app_icons.dart';

const kAppVersion = '1.0.0';

/// Where users report problems and send suggestions (also the Play listing contact).
const kSupportEmail = 'maheshraikg@gmail.com';
const kPlayStoreUrl = 'https://play.google.com/store/apps/details?id=com.plirpli.calculator';

/// mailto: link with a subject and a short template, so reports arrive with
/// the app version.
Uri supportMail(String subject, String body) => Uri(
  scheme: 'mailto',
  path: kSupportEmail,
  query: 'subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(body)}',
);

/// Public privacy policy (also entered in Play Console).
const kPrivacyPolicyUrl = 'https://docs.google.com/document/d/1N3HNVgdvcS_4UukHz9qFevhoiqivKmMtoO5gdGfA20w/view';

class AboutScreen extends ConsumerStatefulWidget {
  const AboutScreen({super.key});

  @override
  ConsumerState<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends ConsumerState<AboutScreen> {
  bool _checking = false;

  Future<void> _checkUpdates() async {
    final dir = ref.read(rateUpdateDirProvider);
    if (dir == null) return;
    final l = AppLocalizations.of(context);
    setState(() => _checking = true);
    final result = await RateUpdater(dir).check(Uri.parse(kRateManifestUrl));
    if (!mounted) return;
    setState(() => _checking = false);
    final message = switch (result.status) {
      RateUpdateStatus.installed => l.updateInstalled(result.version ?? 0),
      RateUpdateStatus.upToDate => l.updateCurrent,
      RateUpdateStatus.failed => l.updateFailed(result.error ?? ''),
    };
    if (result.status == RateUpdateStatus.installed) ref.invalidate(appDataProvider);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final canUpdate = kRateManifestUrl.isNotEmpty && ref.watch(rateUpdateDirProvider) != null;
    Widget section(String title, Widget child) => Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: theme.textTheme.titleLarge),
          const SizedBox(height: 4),
          child,
        ],
      ),
    );

    return DataScaffold(
      title: l.aboutTitle,
      builder: (context, data) => ListView(
        padding: const EdgeInsets.all(16),
        children: [
          section(l.appTitle, Text('${l.independentDisclaimer}\n${l.appVersion(kAppVersion)}')),
          section(
            l.helpTitle,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l.helpBody(kSupportEmail)),
                TextButton.icon(
                  icon: const AppIcon(AppIcons.bug),
                  label: Text(l.reportProblem),
                  onPressed: () => launchUrl(
                    supportMail(
                      'PO Premium Calculator $kAppVersion – problem report',
                      'What I did:\n\nWhat went wrong:\n\nPlan / age / sum assured (if relevant):\n\n'
                          'App version: $kAppVersion\nLanguage: ${Localizations.localeOf(context).languageCode}\n',
                    ),
                  ),
                ),
                TextButton.icon(
                  icon: const AppIcon(AppIcons.lightbulb),
                  label: Text(l.sendSuggestion),
                  onPressed: () => launchUrl(
                    supportMail('PO Premium Calculator $kAppVersion – suggestion', 'My suggestion:\n\n'),
                  ),
                ),
                TextButton.icon(
                  icon: const AppIcon(AppIcons.googlePlayLogo),
                  label: Text(l.checkAppUpdates),
                  onPressed: () => launchUrl(Uri.parse(kPlayStoreUrl), mode: LaunchMode.externalApplication),
                ),
              ],
            ),
          ),
          section(
            l.privacyTitle,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l.privacyBody),
                TextButton.icon(
                  icon: const AppIcon(AppIcons.shieldCheck),
                  label: Text(l.privacyPolicyLink),
                  onPressed: () => launchUrl(Uri.parse(kPrivacyPolicyUrl), mode: LaunchMode.externalApplication),
                ),
                TextButton.icon(
                  icon: const AppIcon(AppIcons.globeHemisphereEast),
                  label: Text(l.linksTitle),
                  onPressed: () => context.push('/links'),
                ),
              ],
            ),
          ),
          section(
            l.dataSourceTitle,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l.dataSourceBody(
                    data.rules.ruleSetId,
                    formatDate(context, data.rules.effectiveFrom),
                    data.rules.source,
                  ),
                ),
                Text(data.rules.gazetteRef, style: theme.textTheme.bodySmall),
                if (data.usesSampleData)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      l.sampleDataNote,
                      style: TextStyle(color: theme.colorScheme.error, fontWeight: FontWeight.bold),
                    ),
                  ),
                if (canUpdate)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: OutlinedButton.icon(
                      icon: _checking
                          ? const SizedBox.square(dimension: 16, child: CircularProgressIndicator(strokeWidth: 2))
                          : const AppIcon(AppIcons.downloadSimple),
                      label: Text(l.checkUpdates),
                      onPressed: _checking ? null : _checkUpdates,
                    ),
                  ),
              ],
            ),
          ),
          if (data.rules.provisional.isNotEmpty)
            section(
              l.provisionalTitle,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l.provisionalIntro),
                  for (final p in data.rules.provisional)
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text('• $p', style: theme.textTheme.bodySmall, textDirection: TextDirection.ltr),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
