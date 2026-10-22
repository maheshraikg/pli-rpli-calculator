import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pli_engine/pli_engine.dart';
import 'package:pli_sahayak/data/agent_profile.dart';
import 'package:pli_sahayak/data/backup.dart';
import 'package:pli_sahayak/data/saved_policy.dart';
import 'package:pli_sahayak/data/storage.dart';
import 'package:pli_sahayak/features/dues/dues_screen.dart';

import 'support.dart';

SavedPolicy _p(String id, String name, DateTime start, {PremiumFrequency f = PremiumFrequency.monthly, String phone = ''}) =>
    SavedPolicy(
      id: id,
      holderName: name,
      policyNumber: 'PLI-$id',
      planId: 'pli_santosh',
      sumAssured: 100000,
      commencement: start,
      entryAge: 30,
      column: 50,
      frequency: f,
      premiumRupees: 450,
      reminders: false,
      phone: phone,
    );

void main() {
  group('backup', () {
    test('round-trips every field, including phone', () {
      final list = [_p('1', 'Lakshmi', DateTime(2025, 6, 1), phone: '98450 00000'), _p('2', 'Ravi', DateTime(2024, 1, 15))];
      final back = parseBackup(exportPolicies(list, DateTime(2026, 11, 1)));
      expect([for (final p in back) p.toJson()], [for (final p in list) p.toJson()]);
    });

    test('older saved policies without a phone still load', () {
      final j = _p('1', 'A', DateTime(2025)).toJson()..remove('phone');
      expect(SavedPolicy.fromJson(j).phone, '');
    });

    test('rejects other files', () {
      expect(() => parseBackup('not json'), throwsFormatException);
      expect(() => parseBackup('{"format": "something-else", "version": 1, "policies": []}'), throwsFormatException);
      expect(() => parseBackup('{"format": "pli-rpli-calculator-backup", "version": 1, "policies": [{"id": 1}]}'),
          throwsFormatException);
    });
  });

  group('dues', () {
    final data = bundledData();
    test('collects each policy\'s dues in the month, sorted by date', () {
      final items = duesInMonth(data, [
        _p('1', 'Monthly on 20th', DateTime(2025, 6, 20)),
        _p('2', 'Yearly in November', DateTime(2020, 11, 5), f: PremiumFrequency.yearly),
        _p('3', 'Yearly in March', DateTime(2020, 3, 5), f: PremiumFrequency.yearly),
      ], DateTime(2026, 11));
      expect([for (final i in items) (i.policy.id, i.date)], [('2', DateTime(2026, 11, 5)), ('1', DateTime(2026, 11, 20))]);
    });

    test('no dues after the premium term ends', () {
      // Entry 30, maturity 50 → premiums 2005–2025.
      expect(duesInMonth(data, [_p('1', 'Old', DateTime(2005, 1, 1))], DateTime(2026, 11)), isEmpty);
    });

    test('WhatsApp numbers', () {
      expect(whatsAppNumber('98450 00000'), '919845000000');
      expect(whatsAppNumber('+91 98450-00000'), '919845000000');
      expect(whatsAppNumber('12345'), isNull);
    });
  });

  testWidgets('dues screen totals the month and offers reminders', (tester) async {
    final store = MemoryPolicyStore();
    await store.put(_p('1', 'Lakshmi', DateTime(2025, 6, 20), phone: '9845000000'));
    await store.put(_p('2', 'Ravi', DateTime(2025, 1, 25)));
    await pumpApp(tester, location: '/dues', policies: store);
    expect(find.text('₹900'), findsOneWidget);
    expect(find.text('2 premiums'), findsOneWidget);
    expect(find.text('Remind'), findsNWidgets(2));
  });

  testWidgets('agent profile appears on the quotation', (tester) async {
    final settings = MemorySettingsStore(
      disclaimerAccepted: true,
      agentProfile: const AgentProfile(name: 'Suresh Kumar', phone: '94480 11111', code: 'PLI Agent, Mysuru HO'),
    );
    await pumpApp(tester, location: '/quotation', settings: settings);
    await scrollTo(tester, find.text('94480 11111'));
    expect(find.text('Suresh Kumar'), findsWidgets);
    expect(find.text('PLI Agent, Mysuru HO'), findsOneWidget);
  });

  testWidgets('saving the agent profile persists it', (tester) async {
    final settings = MemorySettingsStore(disclaimerAccepted: true);
    await pumpApp(tester, location: '/profile', settings: settings);
    await tester.enterText(find.widgetWithText(TextField, 'Your name'), 'Suresh Kumar');
    await scrollTo(tester, find.text('Save'));
    await tester.tap(find.text('Save'));
    await tester.pumpAndSettle();
    expect(settings.agentProfile.name, 'Suresh Kumar');
  });
}
