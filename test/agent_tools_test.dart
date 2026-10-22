import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pli_engine/pli_engine.dart';
import 'package:pli_sahayak/data/agent_profile.dart';
import 'package:pli_sahayak/data/backup.dart';
import 'package:pli_sahayak/data/saved_policy.dart';
import 'package:pli_sahayak/data/storage.dart';
import 'package:pli_sahayak/features/dues/dues_screen.dart';
import 'package:pli_sahayak/features/policies/policies_screen.dart';
import 'package:pli_sahayak/services/reminders.dart';

import 'support.dart';

SavedPolicy _p(String id, String name, DateTime start,
        {PremiumFrequency f = PremiumFrequency.monthly, String phone = '', int sa = 100000, bool reminders = false}) =>
    SavedPolicy(
      id: id,
      holderName: name,
      policyNumber: 'PLI-$id',
      planId: 'pli_santosh',
      sumAssured: sa,
      commencement: start,
      entryAge: 30,
      column: 50,
      frequency: f,
      premiumRupees: 450,
      reminders: reminders,
      phone: phone,
    );

void main() {
  group('backup', () {
    test('round-trips every field, including phone', () {
      final list = [_p('1', 'Lakshmi', DateTime(2025, 6, 1), phone: '98450 00000'), _p('2', 'Ravi', DateTime(2024, 1, 15))];
      final back = parseBackup(exportPolicies(list, DateTime(2026, 11, 1)));
      expect([for (final p in back) p.toJson()], [for (final p in list) p.toJson()]);
    });

    test('older saved policies without a phone or collected dues still load', () {
      final j = _p('1', 'A', DateTime(2025)).toJson()
        ..remove('phone')
        ..remove('paidDues');
      final p = SavedPolicy.fromJson(j);
      expect(p.phone, '');
      expect(p.paidDues, isEmpty);
    });

    test('round-trips collected dues', () {
      final p = _p('1', 'A', DateTime(2025)).withPaid(DateTime(2026, 11, 1), true).withPaid(DateTime(2026, 10, 1), true);
      final back = parseBackup(exportPolicies([p], DateTime(2026, 11, 1))).single;
      expect(back.paidDues, {'2026-10-01', '2026-11-01'});
      expect(back.isPaid(DateTime(2026, 11, 1)), isTrue);
      expect(back.withPaid(DateTime(2026, 11, 1), false).paidDues, {'2026-10-01'});
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

    test('summary splits collected and pending', () {
      final a = _p('1', 'A', DateTime(2025, 6, 20));
      final b = _p('2', 'B', DateTime(2025, 1, 25)).withPaid(DateTime(2026, 11, 25), true);
      final s = duesSummary(duesInMonth(data, [a, b], DateTime(2026, 11)));
      expect(s.total, Paise.wholeRupees(900));
      expect(s.pending, Paise.wholeRupees(450));
      expect(s.collectedCount, 1);
    });

    test('WhatsApp numbers', () {
      expect(whatsAppNumber('98450 00000'), '919845000000');
      expect(whatsAppNumber('+91 98450-00000'), '919845000000');
      expect(whatsAppNumber('12345'), isNull);
    });
  });

  group('search and sort', () {
    final data = bundledData();
    final today = DateTime(2026, 11, 1);
    final list = [
      _p('1', 'Lakshmi', DateTime(2025, 6, 20), phone: '98450 00000', sa: 200000),
      _p('2', 'ravi', DateTime(2025, 1, 5), sa: 500000),
      _p('3', 'Anand', DateTime(2005, 1, 1)), // premiums finished
    ];
    List<String> ids(String q, PolicySort s) => [for (final p in findPolicies(data, list, q, s, today)) p.id];

    test('matches name, policy number and mobile digits', () {
      expect(ids('', PolicySort.name), ['3', '1', '2']);
      expect(ids('RAV', PolicySort.name), ['2']);
      expect(ids('pli-1', PolicySort.name), ['1']);
      expect(ids('9845000', PolicySort.name), ['1']);
      expect(ids('zzz', PolicySort.name), isEmpty);
    });

    test('sorts by next due (finished last) and by sum assured', () {
      expect(ids('', PolicySort.nextDue), ['2', '1', '3']);
      expect(ids('', PolicySort.sumAssured), ['2', '1', '3']);
    });
  });

  testWidgets('dues screen totals the month and offers reminders', (tester) async {
    final store = MemoryPolicyStore();
    await store.put(_p('1', 'Lakshmi', DateTime(2025, 6, 20), phone: '9845000000'));
    await store.put(_p('2', 'Ravi', DateTime(2025, 1, 25)));
    await pumpApp(tester, location: '/dues', policies: store);
    expect(find.text('₹900'), findsOneWidget); // still to collect
    expect(find.text('₹900 • 2 premiums'), findsOneWidget);
    expect(find.text('0 of 2 collected'), findsOneWidget);
    expect(find.text('Remind', skipOffstage: false), findsNWidgets(2));
  });

  testWidgets('marking a due collected updates totals, filters and reminders', (tester) async {
    final store = MemoryPolicyStore();
    await store.put(_p('1', 'Lakshmi', DateTime(2025, 6, 20), reminders: true));
    await store.put(_p('2', 'Ravi', DateTime(2025, 1, 25)));
    final container = await pumpApp(tester, location: '/dues', policies: store);
    final reminders = container.read(reminderServiceProvider) as NoopReminderService;

    final lakshmiChip = find.descendant(
      of: find.ancestor(of: find.text('Lakshmi'), matching: find.byType(Card)),
      matching: find.widgetWithText(FilterChip, 'Collected'),
    );
    await tester.tap(lakshmiChip);
    await tester.pumpAndSettle();

    expect(store.all().firstWhere((p) => p.id == '1').paidDues, {'2026-11-20'});
    expect(find.text('₹450'), findsWidgets);
    expect(find.text('1 of 2 collected'), findsOneWidget);
    expect(find.text('Remind'), findsOneWidget);
    expect(reminders.scheduled.values.map((r) => r.when), isNot(contains(DateTime(2026, 11, 17))));
    expect(reminders.scheduled.values.map((r) => r.when), contains(DateTime(2026, 12, 17)));

    await tester.tap(find.widgetWithText(ChoiceChip, 'Pending'));
    await tester.pumpAndSettle();
    expect(find.text('Lakshmi'), findsNothing);
    expect(find.text('Ravi'), findsOneWidget);

    await tester.tap(find.widgetWithText(ChoiceChip, 'Collected'));
    await tester.pumpAndSettle();
    expect(find.text('Lakshmi'), findsOneWidget);
    expect(find.text('Ravi'), findsNothing);

    // Undo.
    await tester.tap(find.widgetWithText(FilterChip, 'Collected'));
    await tester.pumpAndSettle();
    expect(find.text('Nothing in this list.'), findsOneWidget);
    expect(store.all().firstWhere((p) => p.id == '1').paidDues, isEmpty);
  });

  testWidgets('My Policies search narrows the list', (tester) async {
    final store = MemoryPolicyStore();
    await store.put(_p('1', 'Lakshmi', DateTime(2025, 6, 20)));
    await store.put(_p('2', 'Ravi', DateTime(2025, 1, 25)));
    await pumpApp(tester, location: '/policies', policies: store);
    expect(find.text('Lakshmi'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'rav');
    await tester.pumpAndSettle();
    expect(find.text('Lakshmi'), findsNothing);
    expect(find.text('Ravi'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'nobody');
    await tester.pumpAndSettle();
    expect(find.text('No policies match “nobody”.'), findsOneWidget);
    await tester.tap(find.byIcon(Icons.close_rounded));
    await tester.pumpAndSettle();
    expect(find.text('Lakshmi'), findsOneWidget);
    await tester.tap(find.widgetWithText(ChoiceChip, 'Sum assured'));
    await tester.pumpAndSettle();
    expect(find.text('Ravi'), findsOneWidget);
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
