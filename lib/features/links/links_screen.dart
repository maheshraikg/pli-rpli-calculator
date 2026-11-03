import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/app_icons.dart';
import '../../core/widgets/info_card.dart';
import '../../core/widgets/ui.dart';
import '../../l10n/app_localizations.dart';

const kHelplineNumber = '1800 266 6868';

/// Official Government of India sites. Only gov.in addresses and the India
/// Post toll-free number; never third-party mirrors.
typedef OfficialLink = ({
  IconData icon,
  String Function(AppLocalizations) title,
  String Function(AppLocalizations) desc,
  String url,
});

/// India Post's PLI and RPLI pages. These open from outside India too
/// (Play reviewers): the PLI customer portals, DigiLocker and CPGRAMS are
/// blocked or unreachable there, so they are not linked.
const kPliPage = 'https://www.indiapost.gov.in/insurance-services/pli';
const kRpliPage = 'https://www.indiapost.gov.in/insurance-services/rpli';

final officialLinks = <OfficialLink>[
  (
    icon: AppIcons.umbrella,
    title: (l) => l.linkPliPageTitle,
    desc: (l) => l.linkPliPageDesc,
    url: kPliPage,
  ),
  (
    icon: AppIcons.plant,
    title: (l) => l.linkRpliPageTitle,
    desc: (l) => l.linkRpliPageDesc,
    url: kRpliPage,
  ),
  (
    icon: AppIcons.mailbox,
    title: (l) => l.linkIndiaPostTitle,
    desc: (l) => l.linkIndiaPostDesc,
    url: 'https://www.indiapost.gov.in',
  ),
  (
    icon: AppIcons.phone,
    title: (l) => l.linkHelplineTitle,
    desc: (l) => l.linkHelplineDesc(kHelplineNumber),
    url: 'tel:${kHelplineNumber.replaceAll(' ', '')}',
  ),
];

class LinksScreen extends StatelessWidget {
  const LinksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l.linksTitle)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SectionCard(
            title: l.payOnlineTitle,
            icon: AppIcons.wallet,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(l.payOnlineSteps),
                const SizedBox(height: 12),
                FilledButton.icon(
                  icon: const Icon(AppIcons.arrowSquareOutLine),
                  label: Text(l.payOnlineButton),
                  onPressed: () => launchUrl(Uri.parse(kPliPage), mode: LaunchMode.externalApplication),
                ),
              ],
            ),
          ),
          for (final link in officialLinks)
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                leading: IconBadge(link.icon),
                title: Text(link.title(l), style: theme.textTheme.titleMedium),
                subtitle: Text(
                  '${link.desc(l)}\n${link.url.startsWith('tel:') ? '' : Uri.parse(link.url).host}'.trim(),
                ),
                isThreeLine: !link.url.startsWith('tel:'),
                trailing: Icon(link.url.startsWith('tel:') ? AppIcons.phoneLine : AppIcons.arrowSquareOutLine),
                onTap: () => launchUrl(Uri.parse(link.url), mode: LaunchMode.externalApplication),
              ),
            ),
          const SizedBox(height: 8),
          InfoCard(icon: AppIcons.info, message: l.linksNote),
        ],
      ),
    );
  }
}
