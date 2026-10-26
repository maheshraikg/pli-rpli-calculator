import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/widgets/amount_field.dart';
import '../../core/widgets/data_scaffold.dart';
import '../../data/data_repository.dart';
import '../../data/saved_policy.dart';
import '../../l10n/app_localizations.dart';
import '../common/plan_config.dart';
import '../common/plan_config_form.dart';
import '../common/plan_evaluation.dart';
import '../common/result_widgets.dart';
import 'policies_screen.dart';
import 'policies_state.dart';
import 'policy_detail_screen.dart';
import '../../core/app_icons.dart';

const policyFormKey = 'policyForm';

class PolicyFormScreen extends ConsumerStatefulWidget {
  const PolicyFormScreen({super.key, this.id});

  /// Null for a new policy.
  final String? id;

  @override
  ConsumerState<PolicyFormScreen> createState() => _PolicyFormScreenState();
}

class _PolicyFormScreenState extends ConsumerState<PolicyFormScreen> {
  final _name = TextEditingController();
  final _number = TextEditingController();
  final _phone = TextEditingController();
  int? _premium;
  bool _reminders = true;
  bool _submitted = false;

  @override
  void initState() {
    super.initState();
    final existing = widget.id == null ? null : ref.read(policiesProvider.notifier).byId(widget.id!);
    final form = ref.read(planConfigProvider(policyFormKey).notifier);
    if (existing == null) {
      ref.invalidate(planConfigProvider(policyFormKey));
      return;
    }
    _name.text = existing.holderName;
    _number.text = existing.policyNumber;
    _phone.text = existing.phone;
    _premium = existing.premiumRupees;
    _reminders = existing.reminders;
    final scheme = ref.read(appDataProvider).value?.rules.plan(existing.planId).scheme ?? Scheme.pli;
    form.replace(
      ref
          .read(planConfigProvider(policyFormKey))
          .copyWith(
            planId: existing.planId,
            scheme: scheme,
            manualAge: existing.entryAge,
            clearDob: true,
            sumAssured: existing.sumAssured,
            column: existing.column,
            frequency: existing.frequency,
            commencement: existing.commencement,
          ),
    );
  }

  @override
  void dispose() {
    _name.dispose();
    _number.dispose();
    _phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    String? required(String v) => _submitted && v.trim().isEmpty ? l.requiredField : null;

    return DataScaffold(
      title: widget.id == null ? l.addPolicy : l.editPolicy,
      builder: (context, data) {
        final e = ref.watch(planEvaluationProvider(policyFormKey));
        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextField(
              controller: _name,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(labelText: l.holderNameLabel, errorText: required(_name.text)),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _number,
              decoration: InputDecoration(labelText: l.policyNumberLabel, errorText: required(_number.text)),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 16),
            PlanConfigForm(configKey: policyFormKey, data: data),
            const SizedBox(height: 16),
            AmountField(label: l.premiumAmountLabel, value: _premium, onChanged: (v) => setState(() => _premium = v)),
            const SizedBox(height: 16),
            TextField(
              controller: _phone,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: l.customerPhoneLabel, prefixIcon: const AppIcon(AppIcons.deviceMobile)),
            ),
            if (_submitted && _premium == null)
              Text(l.requiredField, style: TextStyle(color: Theme.of(context).colorScheme.error)),
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(l.remindersLabel),
              value: _reminders,
              onChanged: (v) => setState(() => _reminders = v),
            ),
            if (e != null && !e.isValid) EvaluationIssues(evaluation: e),
            const SizedBox(height: 16),
            FilledButton.icon(icon: const Icon(AppIcons.floppyDiskLine), label: Text(l.save), onPressed: () => _save(e)),
            const SizedBox(height: 8),
            Text(l.savedLocally, style: Theme.of(context).textTheme.bodySmall),
          ],
        );
      },
    );
  }

  Future<void> _save(PlanEvaluation? e) async {
    setState(() => _submitted = true);
    final premium = _premium;
    final c = ref.read(planConfigProvider(policyFormKey));
    if (e == null || !e.isValid || premium == null || _name.text.trim().isEmpty || _number.text.trim().isEmpty) return;
    final column = c.column ?? 0;
    final policy = SavedPolicy(
      id: widget.id ?? DateTime.now().millisecondsSinceEpoch.toString(),
      holderName: _name.text.trim(),
      policyNumber: _number.text.trim(),
      planId: c.planId,
      sumAssured: c.sumAssured!,
      commencement: c.commencement,
      entryAge: e.entryAge,
      column: column,
      frequency: c.frequency,
      premiumRupees: premium,
      reminders: _reminders,
      phone: _phone.text.trim(),
      // Keep collected marks when editing; dates that no longer apply are harmless.
      paidDues: widget.id == null ? const {} : ref.read(policiesProvider.notifier).byId(widget.id!)?.paidDues ?? const {},
    );
    final text = reminderText(context);
    final granted = await ref
        .read(policiesProvider.notifier)
        .save(policy, payingYears: policyPayingYears(e.plan, policy), text: text);
    if (!mounted) return;
    if (!granted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(AppLocalizations.of(context).remindersDenied)));
    }
    context.pop();
  }
}
