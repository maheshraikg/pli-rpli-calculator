import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../l10n/app_localizations.dart';
import '../../core/app_icons.dart';

class FormService {
  const FormService({required this.id, required this.icon, required this.docs, required this.letter, this.pdfAsset, this.pdfSource, this.formUrl});

  final String id;
  final IconData icon;

  /// Document ids, localised by [docName].
  final List<String> docs;

  /// Whether a request-letter template exists for this service.
  final bool letter;

  /// Bundled official India Post PDF, if one has been added.
  final String? pdfAsset;

  /// Official Department of Posts document the bundled PDF was taken from.
  final String? pdfSource;

  /// Download link for the official form (e.g. a Google Drive file shared
  /// as "anyone with the link"), if one has been added.
  final String? formUrl;
}

class FormsCatalog {
  const FormsCatalog({required this.verified, required this.officialFormsUrl, required this.services});

  factory FormsCatalog.parse(String json) {
    final j = jsonDecode(json) as Map<String, Object?>;
    return FormsCatalog(
      verified: j['verified']! as bool,
      officialFormsUrl: j['officialFormsUrl']! as String,
      services: [
        for (final s in (j['services']! as List).cast<Map<String, Object?>>())
          FormService(
            id: s['id']! as String,
            icon: _icons[s['icon']] ?? AppIcons.fileText,
            docs: (s['docs']! as List).cast<String>(),
            letter: s['letter']! as bool,
            pdfAsset: s['pdfAsset'] as String?,
            pdfSource: s['pdfSource'] as String?,
            formUrl: s['formUrl'] as String?,
          ),
      ],
    );
  }

  final bool verified;
  final String officialFormsUrl;
  final List<FormService> services;

  FormService byId(String id) => services.firstWhere((s) => s.id == id);
}

const _icons = <String, IconData>{
  'note_add': AppIcons.filePlus,
  'flag': AppIcons.flagBanner,
  'payments': AppIcons.money,
  'volunteer': AppIcons.handHeart,
  'loan': AppIcons.bank,
  'close': AppIcons.xCircle,
  'restart': AppIcons.arrowCounterClockwiseLine,
  'person_add': AppIcons.userPlus,
  'home': AppIcons.house,
  'content_copy': AppIcons.copyLine,
  'swap': AppIcons.arrowsLeftRightLine,
  'transform': AppIcons.swap,
};

final formsCatalogProvider = FutureProvider<FormsCatalog>(
  (ref) async => FormsCatalog.parse(await rootBundle.loadString('assets/data/forms.json')),
);

String serviceName(AppLocalizations l, String id) => switch (id) {
  'proposal' => l.svc_proposal,
  'maturity' => l.svc_maturity,
  'survival' => l.svc_survival,
  'death' => l.svc_death,
  'loan' => l.svc_loan,
  'surrender' => l.svc_surrender,
  'revival' => l.svc_revival,
  'nomination' => l.svc_nomination,
  'address' => l.svc_address,
  'duplicate' => l.svc_duplicate,
  'assignment' => l.svc_assignment,
  'conversion' => l.svc_conversion,
  _ => id,
};

String serviceDescription(AppLocalizations l, String id) => switch (id) {
  'proposal' => l.svcDesc_proposal,
  'maturity' => l.svcDesc_maturity,
  'survival' => l.svcDesc_survival,
  'death' => l.svcDesc_death,
  'loan' => l.svcDesc_loan,
  'surrender' => l.svcDesc_surrender,
  'revival' => l.svcDesc_revival,
  'nomination' => l.svcDesc_nomination,
  'address' => l.svcDesc_address,
  'duplicate' => l.svcDesc_duplicate,
  'assignment' => l.svcDesc_assignment,
  'conversion' => l.svcDesc_conversion,
  _ => '',
};

String docName(AppLocalizations l, String id) => switch (id) {
  'form' => l.doc_form,
  'policyBond' => l.doc_policyBond,
  'receiptBook' => l.doc_receiptBook,
  'idProof' => l.doc_idProof,
  'addressProof' => l.doc_addressProof,
  'ageProof' => l.doc_ageProof,
  'bankDetails' => l.doc_bankDetails,
  'photo' => l.doc_photo,
  'deathCertificate' => l.doc_deathCertificate,
  'claimantId' => l.doc_claimantId,
  'medical' => l.doc_medical,
  'eligibility' => l.doc_eligibility,
  'nomineeDetails' => l.doc_nomineeDetails,
  'indemnity' => l.doc_indemnity,
  _ => id,
};
