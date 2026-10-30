import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pli_engine/pli_engine.dart';
import 'package:pli_sahayak/core/locale.dart';
import 'package:pli_sahayak/data/saved_policy.dart';
import 'package:pli_sahayak/data/storage.dart';
import 'package:pli_sahayak/features/forms/forms_data.dart';
import 'package:pli_sahayak/features/forms/letters.dart';
import 'package:pli_sahayak/l10n/app_localizations.dart';

import 'support.dart';

final _policy = SavedPolicy(
  id: '1',
  holderName: 'Lakshmi Devi',
  policyNumber: 'PLI-KA-123456',
  planId: 'pli_santosh',
  sumAssured: 300000,
  commencement: DateTime(2025, 6, 1),
  entryAge: 32,
  column: 58,
  frequency: PremiumFrequency.monthly,
  premiumRupees: 1180,
  reminders: false,
);

void main() {
  final catalog = bundledForms();
  final rules = bundledData().rules;
  final en = lookupAppLocalizations(const Locale('en'));

  group('forms data', () {
    test('every service and document has a translated name in every language', () {
      for (final lang in kAppLanguages.keys) {
        final l = lookupAppLocalizations(Locale(lang));
        for (final s in catalog.services) {
          expect(serviceName(l, s.id), isNot(s.id), reason: '${s.id} [$lang]');
          expect(serviceDescription(l, s.id), isNotEmpty, reason: '${s.id} [$lang]');
          for (final d in s.docs) {
            expect(docName(l, d), isNot(d), reason: 'doc $d [$lang]');
          }
        }
      }
    });

    test('bundled PDFs, when listed, exist', () {
      for (final s in catalog.services.where((s) => s.pdfAsset != null)) {
        expect(File(s.pdfAsset!).existsSync(), isTrue, reason: s.pdfAsset);
      }
    });

    test('every bundled form names its official gov.in source', () {
      for (final s in catalog.services.where((s) => s.pdfAsset != null)) {
        expect(Uri.parse(s.pdfSource!).host, endsWith('.gov.in'), reason: s.id);
      }
    });

    test('official forms link is https', () => expect(catalog.officialFormsUrl, startsWith('https://')));

    test('form download links, when listed, are https', () {
      for (final s in catalog.services.where((s) => s.formUrl != null)) {
        expect(s.formUrl, startsWith('https://'), reason: s.id);
      }
      final parsed = FormsCatalog.parse(
        '{"verified": false, "officialFormsUrl": "https://x", "services": [{"id": "loan", "icon": "loan", '
        '"letter": true, "docs": [], "formUrl": "https://drive.google.com/file/d/abc/view"}]}',
      );
      expect(parsed.services.single.formUrl, 'https://drive.google.com/file/d/abc/view');
      expect(parsed.services.single.pdfAsset, isNull);
    });

    test('claim services carry India Post service standards and official checklists', () {
      expect(catalog.byId('maturity').serviceStandardDays, 30);
      expect(catalog.byId('death').investigationDays, 90);
      expect(catalog.byId('proposal').serviceStandardDays, 15);
      expect(catalog.byId('death').docs, containsAll(['postMortem', 'succession', 'claimantAddress']));
      for (final id in ['maturity', 'survival', 'death', 'loan', 'surrender', 'revival', 'assignment', 'conversion']) {
        expect(catalog.byId(id).officialChecklist, isTrue, reason: id);
      }
      for (final lang in kAppLanguages.keys) {
        final l = lookupAppLocalizations(Locale(lang));
        for (final s in catalog.services) {
          for (final t in s.tips) {
            expect(tipText(l, t), isNot(t), reason: 'tip $t [$lang]');
          }
        }
      }
    });

    test('form link message names the service and link', () {
      expect(en.formLinkMessage('Loan', 'https://x'), 'Loan form (India Post): https://x');
    });
  });

  group('letters', () {
    String letter(String id, LetterInput input) => buildLetter(
          serviceId: id,
          policy: _policy,
          plan: rules.plan('pli_santosh'),
          service: catalog.byId(id),
          input: input,
          today: DateTime(2026, 11, 1),
          en: en,
        );

    test('every letter service has a template', () {
      for (final s in catalog.services.where((s) => s.letter)) {
        expect(letter(s.id, const LetterInput()), contains('PLI-KA-123456'), reason: s.id);
      }
    });

    test('loan letter carries policy, amount, documents and signature block', () {
      final t = letter(
        'loan',
        const LetterInput(office: 'Mysuru HO', address: '12 MG Road, Mysuru', phone: '98450 00000', place: 'Mysuru', loanAmount: 50000),
      );
      expect(t, contains('The Postmaster / Mysuru HO'));
      expect(t, contains('Subject: Request for policy loan – Policy No. PLI-KA-123456'));
      expect(t, contains('a loan of ₹50,000'));
      expect(t, contains('sum assured ₹3,00,000, commencing 1 Jun 2025'));
      expect(t, contains('1. Self-attested copy of the policy bond'));
      expect(t, contains('Place: Mysuru    Date: 1 Nov 2026'));
    });

    test('nomination and duplicate letters use their inputs', () {
      expect(letter('nomination', const LetterInput(nomineeName: 'Ravi', nomineeRelation: 'son', nomineeAge: 12)),
          contains('to record Ravi (son, aged 12) as nominee'));
      expect(letter('duplicate', const LetterInput(bondLost: false)), contains('has been damaged'));
    });

    test('blank fields leave lines to fill by hand', () {
      expect(letter('surrender', const LetterInput()), contains('Phone: __________'));
    });
  });

  test('details sheet lists the policy', () {
    final s = policyDetailsSheet(
      policy: _policy,
      plan: rules.plan('pli_santosh'),
      today: DateTime(2026, 11, 1),
      nextDue: DateTime(2026, 11, 1),
      bonusSoFar: Paise.wholeRupees(15600),
    );
    expect(s, contains('Policy number: PLI-KA-123456'));
    expect(s, contains('Premium: ₹1,180 (monthly)'));
    expect(s, contains('Bonus accrued (app estimate): ₹15,600'));
  });

  group('screens', () {
    testWidgets('forms list opens a form with its checklist and letter button', (tester) async {
      await pumpApp(tester, location: '/forms');
      await scrollTo(tester, find.text('Policy loan'));
      await tester.ensureVisible(find.text('Policy loan'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Policy loan'));
      await tester.pumpAndSettle();
      expect(find.text('Documents to keep ready'), findsOneWidget);
      await scrollTo(tester, find.text('Write a request letter'));
      expect(find.text('Write a request letter'), findsOneWidget);
    });

    testWidgets('death claim shows the service standard and official checklist note', (tester) async {
      await pumpApp(tester, location: '/forms/death');
      await scrollTo(tester, find.text('India Post service standard'));
      expect(find.text('Settled within 30 days; 90 days if investigation is needed'), findsOneWidget);
      await scrollTo(tester, find.text("Checklist from India Post's Guidelines for Customers."));
    });

    testWidgets('letter screen fills from a saved policy', (tester) async {
      final store = MemoryPolicyStore();
      await store.put(_policy);
      await pumpApp(tester, location: '/forms/loan/letter', policies: store);
      await scrollTo(tester, find.textContaining('Subject: Request for policy loan'));
      expect(find.textContaining('Policy No. PLI-KA-123456'), findsWidgets);
    });

    testWidgets('letter screen without saved policies explains what to do', (tester) async {
      await pumpApp(tester, location: '/forms/loan/letter');
      expect(find.text('Save a policy under My Policies first.'), findsOneWidget);
    });
  });
}
