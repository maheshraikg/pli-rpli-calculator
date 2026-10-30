import 'package:pli_engine/pli_engine.dart';

import '../../core/formatters.dart';
import '../../data/saved_policy.dart';
import '../../l10n/app_localizations.dart';
import 'forms_data.dart';

const _months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

/// "1 Jun 2025": letters are always English, independent of app locale data.
String _fmt(DateTime d) => '${d.day} ${_months[d.month - 1]} ${d.year}';

/// Inputs for a request letter beyond the saved policy.
class LetterInput {
  const LetterInput({
    this.office = '',
    this.address = '',
    this.phone = '',
    this.place = '',
    this.loanAmount,
    this.nomineeName = '',
    this.nomineeRelation = '',
    this.nomineeAge,
    this.newAddress = '',
    this.bondLost = true,
    this.lapsedFrom,
    this.conversionMaturityAge,
  });

  final String office;
  final String address;
  final String phone;
  final String place;
  final int? loanAmount;
  final String nomineeName;
  final String nomineeRelation;
  final int? nomineeAge;
  final String newAddress;
  final bool bondLost;
  final DateTime? lapsedFrom;
  final int? conversionMaturityAge;
}

String _blank(String s, [String placeholder = '__________']) => s.trim().isEmpty ? placeholder : s.trim();

/// The request sentence for each letter type.
String _request(String serviceId, LetterInput i) => switch (serviceId) {
  'loan' =>
    i.loanAmount == null
        ? 'a loan against the above policy, as admissible under the rules'
        : 'a loan of ${formatRupees(Paise.wholeRupees(i.loanAmount!))} against the above policy, or the amount admissible under the rules if lower',
  'surrender' => 'to surrender the above policy and pay its surrender value to my bank account',
  'revival' =>
    'revival of the above policy, which lapsed due to non-payment of premiums'
        '${i.lapsedFrom == null ? '' : ' due from ${_fmt(i.lapsedFrom!)}'}. '
        'I am ready to pay the arrears with default fee and to submit a declaration of good health or a medical certificate as required',
  'nomination' =>
    'to record ${_blank(i.nomineeName)} (${_blank(i.nomineeRelation, 'relationship')}'
        '${i.nomineeAge == null ? '' : ', aged ${i.nomineeAge}'}) as nominee under the above policy, in place of any earlier nomination',
  'address' => 'to change my address in the policy records to:\n${_blank(i.newAddress)}',
  'duplicate' =>
    'issue of a duplicate policy bond, as the original has been ${i.bondLost ? 'lost' : 'damaged'}. '
        'I am ready to execute an indemnity bond if required',
  'conversion' =>
    'conversion of the above Convertible Whole Life policy into an Endowment Assurance policy'
        '${i.conversionMaturityAge == null ? '' : ' maturing at age ${i.conversionMaturityAge}'}, as permitted under the policy terms',
  _ => throw ArgumentError.value(serviceId, 'serviceId', 'No letter template'),
};

String _subject(String serviceId, AppLocalizations en) => switch (serviceId) {
  'loan' => 'Request for policy loan',
  'surrender' => 'Request for surrender of policy',
  'revival' => 'Request for revival of lapsed policy',
  'nomination' => 'Request for change of nomination',
  'address' => 'Request for change of address',
  'duplicate' => 'Request for duplicate policy bond',
  'conversion' => 'Request for conversion of policy',
  _ => serviceName(en, serviceId),
};

/// Plain-text request letter in English, ready to print or share.
String buildLetter({
  required String serviceId,
  required SavedPolicy policy,
  required PlanRule plan,
  required FormService service,
  required LetterInput input,
  required DateTime today,
  required AppLocalizations en,
}) {
  final docs = [for (final (n, d) in service.docs.where((d) => d != 'form').indexed) '${n + 1}. ${docName(en, d)}'];
  return '''To
The Postmaster / ${_blank(input.office, 'Head Post Office / CPC')}

Subject: ${_subject(serviceId, en)} – Policy No. ${policy.policyNumber}

Sir/Madam,

I, ${policy.holderName}, am the holder of ${plan.scheme.code} policy No. ${policy.policyNumber} (${plan.name('en')}, sum assured ${formatRupees(Paise.wholeRupees(policy.sumAssured))}, commencing ${_fmt(policy.commencement)}).

I request ${_request(serviceId, input)}.

I will submit the prescribed form and documents as required.${docs.isEmpty ? '' : '\nDocuments enclosed:\n${docs.join('\n')}'}

Thanking you,
Yours faithfully,


(Signature)
${policy.holderName}
${_blank(input.address, 'Address: __________')}
Phone: ${_blank(input.phone)}
Place: ${_blank(input.place)}    Date: ${_fmt(today)}''';
}

/// The saved policy's details, in English, to copy onto an official form.
String policyDetailsSheet({
  required SavedPolicy policy,
  required PlanRule plan,
  required DateTime today,
  Paise? bonusSoFar,
  DateTime? maturityDate,
  DateTime? nextDue,
}) {
  final rows = <(String, String)>[
    ('Policy holder', policy.holderName),
    ('Policy number', policy.policyNumber),
    ('Scheme', plan.scheme.code),
    ('Plan', plan.name('en')),
    ('Sum assured', formatRupees(Paise.wholeRupees(policy.sumAssured))),
    ('Date of commencement', _fmt(policy.commencement)),
    ('Age at entry', '${policy.entryAge}'),
    (
      'Premium',
      '${formatRupees(Paise.wholeRupees(policy.premiumRupees))} (${policy.frequency.code.toLowerCase().replaceAll('_', '-')})',
    ),
    if (nextDue != null) ('Next premium due', _fmt(nextDue)),
    if (maturityDate != null) ('Maturity date (estimated)', _fmt(maturityDate)),
    if (bonusSoFar != null) ('Bonus accrued (app estimate)', formatRupees(bonusSoFar)),
  ];
  return [
    'PLI / RPLI policy details — ${_fmt(today)}',
    for (final (k, v) in rows) '$k: $v',
    '(Prepared with PO Premium Calculator, an independent app. Confirm figures with India Post.)',
  ].join('\n');
}
