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

final officialLinks = <OfficialLink>[
  (
    icon: AppIcons.umbrella,
    title: (l) => l.linkPortalTitle,
    desc: (l) => l.linkPortalDesc,
    url: 'https://pli.indiapost.gov.in/CustomerPortal/Home.action',
  ),
  (
    icon: AppIcons.clipboardText,
    title: (l) => l.linkFormsTitle,
    desc: (l) => l.linkFormsDesc,
    url: 'https://pli.indiapost.gov.in/CustomerPortal/Documents/downloadforms.action',
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
  (
    icon: AppIcons.sealCheck,
    title: (l) => l.linkDigiLockerTitle,
    desc: (l) => l.linkDigiLockerDesc,
    url: 'https://www.digilocker.gov.in',
  ),
  (
    icon: AppIcons.warningCircle,
    title: (l) => l.linkGrievanceTitle,
    desc: (l) => l.linkGrievanceDesc,
    url: 'https://pgportal.gov.in',
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
