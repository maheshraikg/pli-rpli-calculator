import 'package:flutter/material.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../core/formatters.dart';
import '../../core/theme.dart';
import '../../l10n/app_localizations.dart';
import '../common/plan_config_form.dart';
import '../common/plan_evaluation.dart';

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
  });

  final PlanEvaluation evaluation;
  final String customerName;
  final String agentName;
  final DateTime preparedOn;
  final String financialYear;

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
                  for (final f in PremiumFrequency.values)
                    row(bi((l) => frequencyName(l, f)), switch (e.quoteFor(f)) {
                      final fq? => formatRupees(fq.premium),
                      null => en.notInTable,
                    }, bold: f == e.config.frequency),
                  row(bi((l) => l.saRebateRow), formatRupees(q.saRebate)),
                  row(bi((l) => l.totalPremiumRow(q.totalInstalments)), formatRupees(q.totalPremium)),
                ]),
              if (p != null)
                section(bi((l) => l.resultMaturityValue), [
                  row(bi((l) => l.bonusRateRow(p.financialYear)), bi((l) => l.bonusRateValue(p.ratePer1000))),
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
                  if (e.returnRate != null) row(bi((l) => l.returnRow), l10nReturn(en, e.returnRate!)),
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

String l10nReturn(AppLocalizations l, double rate) => l.returnValue((rate * 100).toStringAsFixed(2));
