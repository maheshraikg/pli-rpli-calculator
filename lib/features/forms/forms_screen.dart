import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/widgets/data_scaffold.dart';
import '../../core/widgets/info_card.dart';
import '../../core/widgets/ui.dart';
import '../../l10n/app_localizations.dart';
import '../../services/share_export.dart';
import 'forms_data.dart';
import '../../core/app_icons.dart';

class FormsScreen extends ConsumerWidget {
  const FormsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final catalog = ref.watch(formsCatalogProvider).value;
    return DataScaffold(
      title: l.formsTitle,
      builder: (context, data) => ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(l.formsIntro),
          const SizedBox(height: 8),
          Card(
            child: ListTile(
              leading: const IconBadge(AppIcons.identificationBadge),
              title: Text(l.detailsSheetTitle),
              subtitle: Text(l.detailsSheetIntro),
              trailing: const Icon(AppIcons.caretRightLine),
              onTap: () => context.push('/forms/sheet'),
            ),
          ),
          const SizedBox(height: 4),
          if (catalog != null)
            for (final s in catalog.services)
              Card(
                child: ListTile(
                  leading: IconBadge(s.icon),
                  title: Text(serviceName(l, s.id)),
                  subtitle: Text(serviceDescription(l, s.id)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (s.letter)
                        AppIcon(AppIcons.notePencil, size: 20, color: Theme.of(context).colorScheme.primary),
                      const Icon(AppIcons.caretRightLine),
                    ],
                  ),
                  onTap: () => context.push('/forms/${s.id}'),
                ),
              ),
          const SizedBox(height: 8),
          Text(l.formsOfficialNote, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}

class FormDetailScreen extends ConsumerStatefulWidget {
  const FormDetailScreen({super.key, required this.id});

  final String id;

  @override
  ConsumerState<FormDetailScreen> createState() => _FormDetailScreenState();
}

class _FormDetailScreenState extends ConsumerState<FormDetailScreen> {
  final _ready = <String>{};

  Future<void> _openBundled(String asset) async {
    final bytes = await rootBundle.load(asset);
    await shareBytes(bytes.buffer.asUint8List(), fileName: asset.split('/').last, mimeType: 'application/pdf');
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final catalog = ref.watch(formsCatalogProvider).value;
    final s = catalog?.byId(widget.id);
    return DataScaffold(
      title: serviceName(l, widget.id),
      builder: (context, data) => s == null
          ? const SizedBox.shrink()
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                SectionCard(
                  child: Row(
                    children: [
                      IconBadge(s.icon, size: 52),
                      const SizedBox(width: 14),
                      Expanded(child: Text(serviceDescription(l, s.id), style: theme.textTheme.titleMedium)),
                    ],
                  ),
                ),
                SectionCard(
                  title: l.whereToGetTitle,
                  icon: AppIcons.mailbox,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(l.whereToGetBody),
                      const SizedBox(height: 12),
                      if (s.pdfAsset != null) ...[
                        FilledButton.icon(
                          icon: const AppIcon(AppIcons.filePdf),
                          label: Text(l.openOfficialForm),
                          onPressed: () => _openBundled(s.pdfAsset!),
                        ),
                        if (s.pdfSource != null)
                          TextButton.icon(
                            icon: const Icon(AppIcons.sealCheck),
                            label: Text(l.formSourceLabel),
                            onPressed: () => launchUrl(Uri.parse(s.pdfSource!), mode: LaunchMode.externalApplication),
                          ),
                        const SizedBox(height: 8),
                      ],
                      if (s.formUrl != null) ...[
                        FilledButton.tonalIcon(
                          icon: const AppIcon(AppIcons.downloadSimple),
                          label: Text(l.openFormLink),
                          onPressed: () => launchUrl(Uri.parse(s.formUrl!), mode: LaunchMode.externalApplication),
                        ),
                        const SizedBox(height: 8),
                        OutlinedButton.icon(
                          icon: const AppIcon(AppIcons.whatsappLogo),
                          label: Text(l.shareFormLink),
                          onPressed: () => SharePlus.instance.share(
                            ShareParams(text: l.formLinkMessage(serviceName(l, s.id), s.formUrl!)),
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                      OutlinedButton.icon(
                        icon: const Icon(AppIcons.arrowSquareOutLine),
                        label: Text(l.getFromIndiaPost),
                        onPressed: () =>
                            launchUrl(Uri.parse(catalog!.officialFormsUrl), mode: LaunchMode.externalApplication),
                      ),
                    ],
                  ),
                ),
                SectionCard(
                  title: l.documentsTitle,
                  icon: AppIcons.listChecks,
                  child: Column(
                    children: [
                      for (final d in s.docs)
                        CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          controlAffinity: ListTileControlAffinity.leading,
                          value: _ready.contains(d),
                          title: Text(docName(l, d)),
                          onChanged: (v) => setState(() => v == true ? _ready.add(d) : _ready.remove(d)),
                        ),
                    ],
                  ),
                ),
                if (!catalog!.verified) InfoCard(icon: AppIcons.infoLine, message: l.formsVerifyNote),
                if (s.letter) ...[
                  const SizedBox(height: 8),
                  FilledButton.icon(
                    icon: const AppIcon(AppIcons.notePencil),
                    label: Text(l.writeLetterTitle),
                    onPressed: () => context.push('/forms/${s.id}/letter'),
                  ),
                ],
              ],
            ),
    );
  }
}
