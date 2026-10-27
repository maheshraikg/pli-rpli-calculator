import 'package:flutter/material.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/formatters.dart';
import '../../core/theme.dart';
import '../../data/agent_profile.dart';
import '../../l10n/app_localizations.dart';
import '../common/plan_config_form.dart';
import '../common/plan_evaluation.dart';
import '../profile/profile_screen.dart' show AgentAvatar;
import '../../core/app_icons.dart';

/// Printable quotation. Labels are bilingual (app language + English) when
/// the app language is not English. Always drawn light, for printing.
class QuotationDocument extends StatelessWidget {
  const QuotationDocument({
    super.key,
    required this.evaluation,
    required this.customerName,
    required this.agentName,
    required this.preparedOn,
    required this.financialYear,
    this.agent = const AgentProfile(),
  });

  final PlanEvaluation evaluation;
  final String customerName;
  final String agentName;
  final DateTime preparedOn;
  final String financialYear;
  final AgentProfile agent;

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    final en = lookupAppLocalizations(const Locale('en'));
    final lang = Localizations.localeOf(context).languageCode;
    final bilingual = lang != 'en';
    String bi(String Function(AppLocalizations l) f) => bilingual ? '${f(local)} / ${f(en)}' : f(en);

    final e = evaluation;
    final q = e.selectedQuote;
    final p = e.projection;
    const ink = Color(0xFF1A1A1A);
    // Keep the app's font (and Indic fallbacks) while forcing print colours.
    final textStyle = Theme.of(context).textTheme.bodyMedium!.copyWith(color: ink, fontSize: 12);
    final head = textStyle.copyWith(fontSize: 13, fontWeight: FontWeight.bold);

    Widget section(String title, List<Widget> children) => Padding(
      padding: const EdgeInsets.only(top: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: kAccentRed.withValues(alpha: 0.08),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text(title, style: head.copyWith(color: kAccentRed)),
          ),
          ...children,
        ],
      ),
    );
    Widget row(String label, String value, {bool bold = false}) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 3, child: Text(label, style: textStyle)),
          const SizedBox(width: 8),
          Expanded(
            flex: 2,
            child: Text(value, textAlign: TextAlign.end, style: bold ? head : textStyle),
          ),
        ],
      ),
    );

    return Theme(
      data: buildTheme(Brightness.light),
      child: DefaultTextStyle(
        style: textStyle,
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (!agent.isEmpty)
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: kAccentRed.withValues(alpha: 0.06),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: kAccentRed.withValues(alpha: 0.2)),
                  ),
                  child: Row(
                    children: [
                      AgentAvatar(profile: agent, radius: 26),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (agent.name.isNotEmpty) Text(agent.name, style: head.copyWith(fontSize: 15)),
                            if (agent.phone.isNotEmpty)
                              Row(
                                children: [
                                  const Icon(AppIcons.phoneLine, size: 13, color: ink),
                                  const SizedBox(width: 4),
                                  Text(agent.phone),
                                ],
                              ),
                            if (agent.code.isNotEmpty) Text(agent.code),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              Text(bi((l) => l.appTitle), style: head.copyWith(fontSize: 18, color: kAccentRed)),
              Text(bi((l) => l.quotationHeading), style: head.copyWith(fontSize: 15)),
              const SizedBox(height: 6),
              Text(en.preparedOn(formatDate(context, preparedOn))),
              if (customerName.isNotEmpty) Text(bi((l) => l.quotationFor(customerName)), style: head),
              if (agentName.isNotEmpty) Text(bi((l) => l.preparedBy(agentName))),
              if (e.isSample)
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  color: Colors.red.shade900,
                  padding: const EdgeInsets.all(6),
                  child: Text(
                    bi((l) => l.sampleDataBanner),
                    textAlign: TextAlign.center,
                    style: head.copyWith(color: Colors.white),
                  ),
                ),
              section(bi((l) => l.planDetailsTitle), [
                row(bi((l) => l.planLabel), '${e.plan.name(lang)}${bilingual ? '\n${e.plan.name('en')}' : ''}'),
                row(bi((l) => l.entryAgeLabel), '${e.entryAge}'),
                row(bi((l) => l.sumAssuredRow), formatRupees(Paise.wholeRupees(e.config.sumAssured ?? 0)), bold: true),
                if (e.config.column != null)
                  row(bi((l) => l.termRow), bi((l) => columnOptionLabel(l, e.plan, e.config.column!))),
                if (q != null) row(bi((l) => l.payingTermRow), bi((l) => l.termYears(q.payingYears))),
                row(bi((l) => l.startDateLabel), formatDate(context, e.config.commencement)),
              ]),
              if (q != null)
                section(bi((l) => l.allFrequenciesTitle), [
                  const SizedBox(height: 6),
                  _FrequencyTable(
                    evaluation: e,
                    textStyle: textStyle,
                    headStyle: head,
                    label: (f) => bilingual ? '${f(local)}\n${f(en)}' : f(en),
                    notInTable: en.notInTable,
                  ),
                  if (q.saRebate.value > 0) row(bi((l) => l.saRebateRow), formatRupees(q.saRebate)),
                ]),
              if (p != null)
                section(bi((l) => l.resultMaturityValue), [
                  // Endowment / whole life: Sum assured + Bonus = Maturity, as on
                  // the printed India Post quotation sheet.
                  if (p.payments.length == 1 &&
                      Paise.wholeRupees(p.sumAssured) + p.totalBonus + p.terminalBonus == p.maturity.amount) ...[
                    row(bi((l) => l.sumAssuredRow), formatRupees(Paise.wholeRupees(p.sumAssured))),
                    row(bi((l) => l.totalBonusRow(p.termYears)), '+ ${formatRupees(p.totalBonus)}'),
                    if (p.terminalBonus.value > 0)
                      row(bi((l) => l.terminalBonusRow), '+ ${formatRupees(p.terminalBonus)}'),
                    const Divider(height: 8, color: ink),
                    row(
                      '${bi((l) => l.resultMaturityValue)}'
                      '${p.maturity.date == null ? '' : ' (${formatDate(context, p.maturity.date!)})'}',
                      formatRupees(p.maturity.amount),
                      bold: true,
                    ),
                  ] else ...[
                    row(bi((l) => l.totalBonusRow(p.termYears)), formatRupees(p.totalBonus)),
                    if (p.terminalBonus.value > 0) row(bi((l) => l.terminalBonusRow), formatRupees(p.terminalBonus)),
                    for (final b in p.payments)
                      row(
                        '${bi((l) => b.kind == PaymentKind.maturity ? l.resultMaturityValue : l.timelineSurvival)} — '
                        '${bi((l) => l.timelineYear(b.policyYear))}${b.date == null ? '' : ' (${formatDate(context, b.date!)})'}',
                        formatRupees(b.amount),
                        bold: b.kind == PaymentKind.maturity,
                      ),
                    if (p.payments.length > 1)
                      row(bi((l) => l.resultTotalBenefits), formatRupees(p.totalBenefits), bold: true),
                  ],
                  row(bi((l) => l.bonusRateRow(p.financialYear)), bi((l) => l.bonusRateValue(p.ratePer1000))),
                ]),
              const SizedBox(height: 14),
              for (final t in [
                bi((l) => l.bonusDisclaimer),
                bi((l) => l.projectionNote(financialYear)),
                bi((l) => l.gstNote),
                bi((l) => l.independentDisclaimer),
                bi((l) => l.ratesFooter(financialYear)),
              ])
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(t, style: textStyle.copyWith(fontSize: 9.5)),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Premium and total premium paid for every frequency side by side, like the
/// "Premium Details" grid on the printed quotation sheet. The chosen
/// frequency is shaded.
class _FrequencyTable extends StatelessWidget {
  const _FrequencyTable({
    required this.evaluation,
    required this.textStyle,
    required this.headStyle,
    required this.label,
    required this.notInTable,
  });

  final PlanEvaluation evaluation;
  final TextStyle textStyle;
  final TextStyle headStyle;
  final String Function(String Function(AppLocalizations l) f) label;
  final String notInTable;

  @override
  Widget build(BuildContext context) {
    const border = Color(0xFFBDBDBD);
    final selected = evaluation.config.frequency;
    final small = textStyle.copyWith(fontSize: 10.5);
    final smallBold = headStyle.copyWith(fontSize: 11);
    Widget cell(String text, {TextStyle? style, TextAlign align = TextAlign.center, Color? color}) => Container(
      color: color,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      child: Text(text, textAlign: align, style: style ?? small),
    );
    Color? shade(PremiumFrequency f) => f == selected ? kAccentRed.withValues(alpha: 0.08) : null;
    String money(Paise? v) => v == null ? '—' : formatRupees(v);

    return Table(
      border: TableBorder.all(color: border, width: 0.8),
      columnWidths: const {0: FlexColumnWidth(1.25)},
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          decoration: BoxDecoration(color: kAccentRed.withValues(alpha: 0.12)),
          children: [
            cell(''),
            for (final f in _sheetOrder) cell(label((l) => frequencyName(l, f)), style: smallBold),
          ],
        ),
        TableRow(
          children: [
            cell(label((l) => l.premiumShort), style: smallBold, align: TextAlign.start),
            for (final f in _sheetOrder)
              cell(
                evaluation.quoteFor(f) == null ? notInTable : money(evaluation.quoteFor(f)!.premium),
                style: f == selected ? smallBold : small,
                color: shade(f),
              ),
          ],
        ),
        TableRow(
          children: [
            cell(label((l) => l.totalPaidShort), style: smallBold, align: TextAlign.start),
            for (final f in _sheetOrder)
              cell(
                money(evaluation.quoteFor(f)?.totalPremium),
                style: f == selected ? smallBold : small,
                color: shade(f),
              ),
          ],
        ),
      ],
    );
  }
}

/// Same column order as the printed quotation sheet.
final _sheetOrder = PremiumFrequency.values.reversed.toList();
