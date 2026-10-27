import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pli_engine/pli_engine.dart';
import 'package:share_plus/share_plus.dart';

import '../../core/widgets/amount_field.dart';
import '../../core/widgets/data_scaffold.dart';
import '../../core/widgets/info_card.dart';
import '../../core/widgets/number_stepper.dart';
import '../../core/widgets/ui.dart';
import '../../data/saved_policy.dart';
import '../../l10n/app_localizations.dart';
import '../../services/share_export.dart';
import '../common/plan_config_form.dart' show formatDate, pickDate;
import '../maturity/maturity_state.dart' show todayProvider;
import '../policies/policies_screen.dart' show policyPayingYears;
import '../policies/policies_state.dart';
import 'forms_data.dart';
import 'letters.dart';
import '../../core/app_icons.dart';

/// Saved-policy picker shared by the letter and details-sheet screens.
class _PolicyPicker extends StatelessWidget {
  const _PolicyPicker({required this.policies, required this.selected, required this.onChanged});

  final List<SavedPolicy> policies;
  final SavedPolicy? selected;
  final ValueChanged<SavedPolicy> onChanged;

  @override
  Widget build(BuildContext context) => DropdownButtonFormField<String>(
    initialValue: selected?.id,
    isExpanded: true,
    decoration: InputDecoration(labelText: AppLocalizations.of(context).choosePolicy),
    items: [
      for (final p in policies)
        DropdownMenuItem(
          value: p.id,
          child: Text('${p.holderName} • ${p.policyNumber}', overflow: TextOverflow.ellipsis),
        ),
    ],
    onChanged: (id) => onChanged(policies.firstWhere((p) => p.id == id)),
  );
}

/// Text shown on a white "paper" card with copy / share actions.
class _TextOutput extends StatelessWidget {
  const _TextOutput({required this.text, required this.fileName, this.boundaryKey});

  final String text;
  final String fileName;
  final GlobalKey? boundaryKey;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final paper = Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: SelectableText(text, style: const TextStyle(color: Color(0xFF1A1A1A), fontSize: 13, height: 1.45)),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                icon: const Icon(AppIcons.copyLine),
                label: Text(l.copyText),
                onPressed: () async {
                  await Clipboard.setData(ClipboardData(text: text));
                  if (context.mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l.copied)));
                },
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: OutlinedButton.icon(
                icon: const Icon(AppIcons.shareNetworkLine),
                label: Text(l.shareAsText),
                onPressed: () => SharePlus.instance.share(ShareParams(text: text)),
              ),
            ),
          ],
        ),
        if (boundaryKey != null) ...[
          const SizedBox(height: 10),
          FilledButton.icon(
            icon: const AppIcon(AppIcons.filePdf),
            label: Text(l.sharePdf),
            onPressed: () async {
              final boundary = boundaryKey!.currentContext?.findRenderObject() as RenderRepaintBoundary?;
              if (boundary == null) return;
              final png = await capturePng(boundary);
              final pdf = await pngToPdf(png, aspectRatio: boundary.size.width / boundary.size.height, title: fileName);
              await shareBytes(pdf, fileName: '$fileName.pdf', mimeType: 'application/pdf');
            },
          ),
        ],
        const SizedBox(height: 12),
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).dividerColor),
            boxShadow: const [BoxShadow(color: Color(0x1A000000), blurRadius: 16, offset: Offset(0, 6))],
          ),
          child: boundaryKey == null ? paper : RepaintBoundary(key: boundaryKey, child: paper),
        ),
      ],
    );
  }
}

class LetterScreen extends ConsumerStatefulWidget {
  const LetterScreen({super.key, required this.serviceId});

  final String serviceId;

  @override
  ConsumerState<LetterScreen> createState() => _LetterScreenState();
}

class _LetterScreenState extends ConsumerState<LetterScreen> {
  final _docKey = GlobalKey();
  String? _policyId;
  final _office = TextEditingController();
  final _address = TextEditingController();
  final _phone = TextEditingController();
  final _place = TextEditingController();
  final _nominee = TextEditingController();
  final _relation = TextEditingController();
  final _newAddress = TextEditingController();
  int? _loanAmount;
  int _nomineeAge = 30;
  bool _bondLost = true;
  DateTime? _lapsedFrom;
  int? _conversionAge;

  @override
  void dispose() {
    for (final c in [_office, _address, _phone, _place, _nominee, _relation, _newAddress]) {
      c.dispose();
    }
    super.dispose();
  }

  Widget _field(TextEditingController c, String label, {int lines = 1, TextInputType? type}) => Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: TextField(
      controller: c,
      minLines: lines,
      maxLines: lines,
      keyboardType: type,
      decoration: InputDecoration(labelText: label),
      onChanged: (_) => setState(() {}),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final policies = ref.watch(policiesProvider);
    final catalog = ref.watch(formsCatalogProvider).value;
    final policy = policies.where((p) => p.id == _policyId).firstOrNull ?? policies.firstOrNull;
    final id = widget.serviceId;

    return DataScaffold(
      title: serviceName(l, id),
      builder: (context, data) {
        if (policies.isEmpty || catalog == null) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [InfoCard(icon: AppIcons.folderOpen, message: l.noSavedPolicies)],
          );
        }
        final plan = data.rules.plan(policy!.planId);
        final letter = buildLetter(
          serviceId: id,
          policy: policy,
          plan: plan,
          service: catalog.byId(id),
          today: ref.watch(todayProvider),
          en: lookupAppLocalizations(const Locale('en')),
          input: LetterInput(
            office: _office.text,
            address: _address.text,
            phone: _phone.text,
            place: _place.text,
            loanAmount: _loanAmount,
            nomineeName: _nominee.text,
            nomineeRelation: _relation.text,
            nomineeAge: id == 'nomination' ? _nomineeAge : null,
            newAddress: _newAddress.text,
            bondLost: _bondLost,
            lapsedFrom: _lapsedFrom,
            conversionMaturityAge: _conversionAge,
          ),
        );

        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            SectionCard(
              title: l.writeLetterTitle,
              icon: AppIcons.notePencil,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _PolicyPicker(
                    policies: policies,
                    selected: policy,
                    onChanged: (p) => setState(() => _policyId = p.id),
                  ),
                  const SizedBox(height: 12),
                  _field(_office, l.toOfficeLabel),
                  _field(_address, l.yourAddressLabel, lines: 2),
                  _field(_phone, l.phoneLabel, type: TextInputType.phone),
                  _field(_place, l.placeLabel),
                  if (id == 'loan')
                    AmountField(
                      label: l.loanAmountLabel,
                      value: _loanAmount,
                      onChanged: (v) => setState(() => _loanAmount = v),
                    ),
                  if (id == 'nomination') ...[
                    _field(_nominee, l.nomineeNameLabel),
                    _field(_relation, l.nomineeRelationLabel),
                    NumberStepper(
                      label: l.nomineeAgeLabel,
                      value: _nomineeAge,
                      min: 0,
                      max: 100,
                      onChanged: (v) => setState(() => _nomineeAge = v),
                      valueText: l.ageYears,
                    ),
                  ],
                  if (id == 'address') _field(_newAddress, l.newAddressLabel, lines: 3),
                  if (id == 'duplicate')
                    SegmentedButton<bool>(
                      segments: [
                        ButtonSegment(value: true, label: Text(l.bondLost)),
                        ButtonSegment(value: false, label: Text(l.bondDamaged)),
                      ],
                      selected: {_bondLost},
                      onSelectionChanged: (v) => setState(() => _bondLost = v.single),
                    ),
                  if (id == 'revival')
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const AppIcon(AppIcons.calendarX),
                      title: Text(l.lapsedFromLabel),
                      subtitle: Text(_lapsedFrom == null ? '—' : formatDate(context, _lapsedFrom!)),
                      onTap: () async {
                        final d = await pickDate(
                          context,
                          _lapsedFrom ?? ref.read(todayProvider),
                          first: DateTime(1980),
                        );
                        if (d != null) setState(() => _lapsedFrom = d);
                      },
                    ),
                  if (id == 'conversion')
                    Wrap(
                      spacing: 8,
                      children: [
                        for (final age in data.rules.plan('pli_santosh').maturityAges)
                          ChoiceChip(
                            label: Text(l.optMaturityAge(age)),
                            selected: _conversionAge == age,
                            onSelected: (_) => setState(() => _conversionAge = age),
                          ),
                      ],
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(l.letterEnglishNote, style: Theme.of(context).textTheme.bodySmall),
            ),
            _TextOutput(
              text: letter,
              fileName: '${id}_${policy.policyNumber}'.replaceAll(RegExp(r'\W+'), '_'),
              boundaryKey: _docKey,
            ),
          ],
        );
      },
    );
  }
}

class DetailsSheetScreen extends ConsumerStatefulWidget {
  const DetailsSheetScreen({super.key});

  @override
  ConsumerState<DetailsSheetScreen> createState() => _DetailsSheetScreenState();
}

class _DetailsSheetScreenState extends ConsumerState<DetailsSheetScreen> {
  String? _policyId;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final policies = ref.watch(policiesProvider);
    final today = ref.watch(todayProvider);
    final policy = policies.where((p) => p.id == _policyId).firstOrNull ?? policies.firstOrNull;
    return DataScaffold(
      title: l.detailsSheetTitle,
      builder: (context, data) {
        if (policy == null) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [InfoCard(icon: AppIcons.folderOpen, message: l.noSavedPolicies)],
          );
        }
        final plan = data.rules.plan(policy.planId);
        final next = upcomingDueDates(
          commencement: policy.commencement,
          frequency: policy.frequency,
          payingYears: policyPayingYears(plan, policy),
          from: today,
          count: 1,
        );
        final bonus = accruedBonus(
          data.rules,
          plan,
          sumAssured: policy.sumAssured,
          commencement: policy.commencement,
          asOf: today,
        );
        final sheet = policyDetailsSheet(
          policy: policy,
          plan: plan,
          today: today,
          nextDue: next.firstOrNull,
          bonusSoFar: bonus.isComplete ? bonus.total : null,
        );
        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(l.detailsSheetIntro),
            const SizedBox(height: 12),
            _PolicyPicker(policies: policies, selected: policy, onChanged: (p) => setState(() => _policyId = p.id)),
            const SizedBox(height: 12),
            _TextOutput(text: sheet, fileName: 'policy_${policy.policyNumber}'),
          ],
        );
      },
    );
  }
}
