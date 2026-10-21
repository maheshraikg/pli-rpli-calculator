import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/widgets/data_scaffold.dart';
import '../../core/widgets/info_card.dart';
import '../../l10n/app_localizations.dart';
import '../../services/share_export.dart';
import '../common/plan_config_form.dart';
import '../common/plan_evaluation.dart';
import '../maturity/maturity_state.dart' show todayProvider;
import '../premium/premium_screen.dart' show premiumConfigKey;
import 'quotation_document.dart';

class QuotationScreen extends ConsumerStatefulWidget {
  const QuotationScreen({super.key});

  @override
  ConsumerState<QuotationScreen> createState() => _QuotationScreenState();
}

class _QuotationScreenState extends ConsumerState<QuotationScreen> {
  final _customer = TextEditingController();
  final _agent = TextEditingController();
  final _docKey = GlobalKey();
  bool _busy = false;

  @override
  void dispose() {
    _customer.dispose();
    _agent.dispose();
    super.dispose();
  }

  Future<void> _share({required bool pdf}) async {
    final boundary = _docKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
    if (boundary == null) return;
    setState(() => _busy = true);
    try {
      final png = await capturePng(boundary);
      final name = _customer.text.trim().isEmpty ? 'quotation' : 'quotation_${_customer.text.trim().replaceAll(RegExp(r'\W+'), '_')}';
      if (pdf) {
        final bytes = await pngToPdf(png, aspectRatio: boundary.size.width / boundary.size.height, title: name);
        await shareBytes(bytes, fileName: '$name.pdf', mimeType: 'application/pdf');
      } else {
        await shareBytes(png, fileName: '$name.png', mimeType: 'image/png');
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return DataScaffold(
      title: l.quotationTitle,
      builder: (context, data) {
        final e = ref.watch(planEvaluationProvider(premiumConfigKey));
        final ready = e != null && e.isValid && e.selectedQuote != null;
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            ExpansionTile(
              tilePadding: EdgeInsets.zero,
              title: Text(l.planDetailsTitle),
              children: [PlanConfigForm(configKey: premiumConfigKey, data: data)],
            ),
            TextField(
              controller: _customer,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(labelText: l.customerNameLabel, border: const OutlineInputBorder()),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _agent,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(labelText: l.agentNameLabel, border: const OutlineInputBorder()),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 12),
            if (!ready)
              InfoCard(icon: Icons.info_outline, message: l.quotationInvalid)
            else ...[
              Row(children: [
                Expanded(
                  child: FilledButton.icon(
                    icon: const Icon(Icons.picture_as_pdf),
                    label: Text(l.sharePdf),
                    onPressed: _busy ? null : () => _share(pdf: true),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.image_outlined),
                    label: Text(l.shareImage),
                    onPressed: _busy ? null : () => _share(pdf: false),
                  ),
                ),
              ]),
              const SizedBox(height: 16),
              DecoratedBox(
                decoration: BoxDecoration(border: Border.all(color: Theme.of(context).dividerColor)),
                child: RepaintBoundary(
                  key: _docKey,
                  child: QuotationDocument(
                    evaluation: e,
                    customerName: _customer.text.trim(),
                    agentName: _agent.text.trim(),
                    preparedOn: ref.watch(todayProvider),
                    financialYear: data.rules.financialYear,
                  ),
                ),
              ),
            ],
          ]),
        );
      },
    );
  }
}
