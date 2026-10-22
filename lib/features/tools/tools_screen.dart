import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/formatters.dart';
import '../../core/widgets/amount_field.dart';
import '../../core/widgets/info_card.dart';
import '../../core/widgets/language_button.dart';
import '../../core/widgets/number_stepper.dart';
import '../../core/widgets/rates_footer.dart';
import '../../core/widgets/sample_data_banner.dart';
import '../../core/widgets/ui.dart';
import '../../data/data_repository.dart';
import '../../l10n/app_localizations.dart';
import '../common/plan_config_form.dart';
import '../maturity/maturity_state.dart' show todayProvider;

class ToolsScreen extends ConsumerWidget {
  const ToolsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final data = ref.watch(appDataProvider).value;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(l.toolsTitle),
          actions: const [LanguageButton()],
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: l.tabLoan),
              Tab(text: l.tabPaidUp),
              Tab(text: l.tabRevival),
              Tab(text: l.tabAdvance),
            ],
          ),
        ),
        body: data == null
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  if (data.usesSampleData) const SampleDataBanner(),
                  Expanded(
                    child: TabBarView(
                      children: [
                        _LoanTab(rules: data.rules),
                        _PaidUpTab(rules: data.rules),
                        _RevivalTab(rules: data.rules),
                        _AdvanceTab(rules: data.rules),
                      ],
                    ),
                  ),
                  RatesFooter(financialYear: data.rules.financialYear),
                ],
              ),
      ),
    );
  }
}

Widget _inputs(List<Widget> children) => SectionCard(
  child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: children),
);

Widget _note(BuildContext context, String text) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
  child: Text(text, style: Theme.of(context).textTheme.bodySmall),
);

Widget _frequencyChips(AppLocalizations l, PremiumFrequency selected, ValueChanged<PremiumFrequency> onSelected) =>
    Wrap(
      spacing: 8,
      children: [
        for (final f in PremiumFrequency.values)
          ChoiceChip(label: Text(frequencyName(l, f)), selected: f == selected, onSelected: (_) => onSelected(f)),
      ],
    );

String _num(num n) => n == n.roundToDouble() ? n.toInt().toString() : n.toString();

class _LoanTab extends StatefulWidget {
  const _LoanTab({required this.rules});
  final RuleSet rules;

  @override
  State<_LoanTab> createState() => _LoanTabState();
}

class _LoanTabState extends State<_LoanTab> {
  String _planId = 'pli_santosh';
  int _years = 5;
  int? _amount = 50000;
  int _months = 12;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final lang = Localizations.localeOf(context).languageCode;
    final rules = widget.rules;
    final plan = rules.plan(_planId);
    final eligible = loanAvailable(plan, _years);
    final amount = _amount;
    final interest = amount == null ? null : loanInterest(rules, principal: Paise.wholeRupees(amount), months: _months);
    const gap = SizedBox(height: 16);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _inputs([
          DropdownButtonFormField<String>(
            initialValue: _planId,
            isExpanded: true,
            decoration: InputDecoration(labelText: l.planLabel),
            items: [
              for (final p in rules.plans)
                DropdownMenuItem(
                  value: p.id,
                  child: Text(p.name(lang), overflow: TextOverflow.ellipsis),
                ),
            ],
            onChanged: (v) => setState(() => _planId = v!),
          ),
          gap,
          NumberStepper(
            label: l.yearsInForceLabel,
            value: _years,
            min: 0,
            max: 60,
            onChanged: (v) => setState(() => _years = v),
            valueText: (v) => '$v',
          ),
        ]),
        InfoCard(
          icon: eligible ? Icons.check_circle_outline : Icons.info_outline,
          title: eligible ? l.loanEligibleYes : l.loanEligibleNo,
          message: plan.loanAfterYears == null ? l.loanNotOffered : l.loanAvailableAfter(plan.loanAfterYears!),
        ),
        if (plan.loanAfterYears != null) ...[
          _inputs([
            AmountField(label: l.loanAmountLabel, value: _amount, onChanged: (v) => setState(() => _amount = v)),
            Text(l.loanAmountNote, style: Theme.of(context).textTheme.bodySmall),
            gap,
            NumberStepper(
              label: l.loanMonthsLabel,
              value: _months,
              min: 1,
              max: 240,
              onChanged: (v) => setState(() => _months = v),
              valueText: l.monthsValue,
            ),
          ]),
          if (amount != null && interest != null) ...[
            HeroAmountCard(
              icon: Icons.account_balance_rounded,
              label: l.loanTotalRow,
              amount: formatRupees(Paise.wholeRupees(amount) + interest),
              details: [
                (l.loanAmountLabel, formatRupees(Paise.wholeRupees(amount))),
                (l.loanInterestRow, formatRupees(interest)),
              ],
            ),
            _note(context, l.loanRateNote(_num(rules.loan.interestPercentPerAnnum))),
          ],
        ],
      ],
    );
  }
}

class _PaidUpTab extends StatefulWidget {
  const _PaidUpTab({required this.rules});
  final RuleSet rules;

  @override
  State<_PaidUpTab> createState() => _PaidUpTabState();
}

class _PaidUpTabState extends State<_PaidUpTab> {
  int? _sa = 100000;
  int? _paid = 60;
  int? _payable = 240;
  int _years = 5;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final sa = _sa, paid = _paid, payable = _payable;
    final valid = sa != null && paid != null && payable != null && payable > 0 && paid <= payable;
    final estimate = valid
        ? paidUpValue(widget.rules, sumAssured: sa, premiumsPaid: paid, premiumsPayable: payable, yearsInForce: _years)
        : null;
    const gap = SizedBox(height: 16);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _inputs([
          AmountField(label: l.sumAssuredLabel, value: _sa, onChanged: (v) => setState(() => _sa = v)),
          gap,
          AmountField(
            label: l.premiumsPaidLabel,
            value: _paid,
            rupees: false,
            onChanged: (v) => setState(() => _paid = v),
          ),
          gap,
          AmountField(
            label: l.premiumsPayableLabel,
            value: _payable,
            rupees: false,
            onChanged: (v) => setState(() => _payable = v),
          ),
          gap,
          NumberStepper(
            label: l.yearsInForceLabel,
            value: _years,
            min: 0,
            max: 60,
            onChanged: (v) => setState(() => _years = v),
            valueText: (v) => '$v',
          ),
        ]),
        if (sa != null && paid != null && payable != null && !valid)
          InfoCard(
            icon: Icons.error_outline,
            color: Theme.of(context).colorScheme.errorContainer,
            message: l.paidUpInvalid,
          ),
        if (estimate != null && !estimate.eligible)
          InfoCard(icon: Icons.info_outline, message: l.paidUpNotEligible(estimate.minYears)),
        if (estimate != null && estimate.eligible) ...[
          HeroAmountCard(
            icon: Icons.verified_rounded,
            label: l.paidUpSaRow,
            amount: formatRupees(estimate.paidUpSumAssured),
          ),
          _note(context, l.paidUpNote),
        ],
      ],
    );
  }
}

class _RevivalTab extends ConsumerStatefulWidget {
  const _RevivalTab({required this.rules});
  final RuleSet rules;

  @override
  ConsumerState<_RevivalTab> createState() => _RevivalTabState();
}

class _RevivalTabState extends ConsumerState<_RevivalTab> {
  int? _premium = 1000;
  PremiumFrequency _frequency = PremiumFrequency.monthly;
  DateTime? _firstUnpaid;
  DateTime? _payDate;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final today = ref.watch(todayProvider);
    final firstUnpaid = _firstUnpaid ?? DateTime(today.year, today.month - 3, today.day);
    final payDate = _payDate ?? today;
    final premium = _premium;
    final estimate = premium == null
        ? null
        : revivalEstimate(
            widget.rules,
            premium: Paise.wholeRupees(premium),
            frequency: _frequency,
            firstUnpaidDue: firstUnpaid,
            payDate: payDate,
          );
    const gap = SizedBox(height: 16);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _inputs([
          AmountField(label: l.instalmentLabel, value: _premium, onChanged: (v) => setState(() => _premium = v)),
          gap,
          _frequencyChips(l, _frequency, (f) => setState(() => _frequency = f)),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.event_busy),
            title: Text(l.firstUnpaidLabel),
            subtitle: Text(formatDate(context, firstUnpaid)),
            onTap: () async {
              final d = await pickDate(context, firstUnpaid, first: DateTime(1990));
              if (d != null) setState(() => _firstUnpaid = d);
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.event_available),
            title: Text(l.payDateLabel),
            subtitle: Text(formatDate(context, payDate)),
            onTap: () async {
              final d = await pickDate(context, payDate, first: DateTime(1990));
              if (d != null) setState(() => _payDate = d);
            },
          ),
        ]),
        if (estimate != null && estimate.instalments.isEmpty) InfoCard(icon: Icons.info_outline, message: l.nothingDue),
        if (estimate != null && estimate.instalments.isNotEmpty) ...[
          HeroAmountCard(
            icon: Icons.restart_alt_rounded,
            label: l.totalPayableRow,
            amount: formatRupees(estimate.total),
            details: [
              (l.missedRow, '${estimate.instalments.length}'),
              (l.arrearsRow, formatRupees(estimate.arrears)),
              (l.defaultFeeRow, formatRupees(estimate.defaultFees)),
            ],
          ),
          SectionCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (final i in estimate.instalments)
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    leading: const IconBadge(Icons.event_busy_rounded, size: 32),
                    title: Text(
                      l.revivalLine(formatDate(context, i.dueDate), i.monthsLate, formatRupees(i.defaultFee)),
                    ),
                  ),
              ],
            ),
          ),
          _note(context, l.revivalNote(_num(widget.rules.premium.defaultFeePercentPerMonth))),
        ],
      ],
    );
  }
}

class _AdvanceTab extends StatefulWidget {
  const _AdvanceTab({required this.rules});
  final RuleSet rules;

  @override
  State<_AdvanceTab> createState() => _AdvanceTabState();
}

class _AdvanceTabState extends State<_AdvanceTab> {
  int? _premium = 1000;
  PremiumFrequency _frequency = PremiumFrequency.monthly;
  int _months = 12;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final premium = _premium;
    final step = _frequency.months;
    final months = (_months ~/ step).clamp(1, 12 ~/ step) * step;
    final r = premium == null
        ? null
        : advanceRebate(
            widget.rules,
            premium: Paise.wholeRupees(premium),
            frequency: _frequency,
            monthsInAdvance: months,
          );
    const gap = SizedBox(height: 16);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _inputs([
          AmountField(label: l.instalmentLabel, value: _premium, onChanged: (v) => setState(() => _premium = v)),
          gap,
          _frequencyChips(l, _frequency, (f) => setState(() => _frequency = f)),
          gap,
          NumberStepper(
            label: l.monthsAdvanceLabel,
            value: months,
            min: step,
            max: 12,
            onChanged: (v) => setState(() => _months = v > months ? months + step : months - step),
            valueText: l.monthsValue,
          ),
        ]),
        if (r != null) ...[
          HeroAmountCard(
            icon: Icons.local_offer_rounded,
            label: l.payableRow,
            amount: formatRupees(r.payable),
            details: [
              (l.amountDueRow, formatRupees(r.amountDue)),
              (l.rebateRow(_num(r.percent)), '− ${formatRupees(r.rebate)}'),
            ],
          ),
          _note(context, l.advanceNote),
        ],
      ],
    );
  }
}
