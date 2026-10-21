import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../data/saved_policy.dart';
import '../../data/storage.dart';
import '../../services/reminders.dart';
import '../maturity/maturity_state.dart' show todayProvider;

const _remindersPerPolicy = 12;
const reminderDaysBefore = 3;

/// Notification ids for a policy's reminders (stable across app runs).
List<int> reminderIds(SavedPolicy p) {
  final base = (int.tryParse(p.id) ?? p.id.hashCode).abs() % 10000000 * 20;
  return [for (var i = 0; i < _remindersPerPolicy; i++) base + i];
}

/// Text for a reminder, built by the UI in the user's language.
typedef ReminderText = ({String title, String Function(SavedPolicy p, DateTime due) body});

class PoliciesNotifier extends Notifier<List<SavedPolicy>> {
  @override
  List<SavedPolicy> build() => _sorted(ref.read(policyStoreProvider).all());

  List<SavedPolicy> _sorted(List<SavedPolicy> list) =>
      list..sort((a, b) => a.holderName.toLowerCase().compareTo(b.holderName.toLowerCase()));

  SavedPolicy? byId(String id) => state.where((p) => p.id == id).firstOrNull;

  /// Saves and (re)schedules reminders. Returns false if reminders were
  /// requested but notification permission was refused.
  Future<bool> save(SavedPolicy policy, {required int payingYears, required ReminderText text}) async {
    final reminders = ref.read(reminderServiceProvider);
    var granted = true;
    await reminders.cancel(reminderIds(policy));
    if (policy.reminders) {
      granted = await reminders.requestPermission();
      if (granted) {
        final today = ref.read(todayProvider);
        final dues = upcomingDueDates(
          commencement: policy.commencement,
          frequency: policy.frequency,
          payingYears: payingYears,
          from: today,
          count: _remindersPerPolicy,
        );
        final ids = reminderIds(policy);
        await reminders.schedule([
          for (final (i, due) in dues.indexed)
            Reminder(
              id: ids[i],
              when: due.subtract(const Duration(days: reminderDaysBefore)),
              title: text.title,
              body: text.body(policy, due),
            ),
        ]);
      }
    }
    await ref.read(policyStoreProvider).put(policy);
    state = _sorted(ref.read(policyStoreProvider).all());
    return granted;
  }

  Future<void> delete(SavedPolicy policy) async {
    await ref.read(reminderServiceProvider).cancel(reminderIds(policy));
    await ref.read(policyStoreProvider).delete(policy.id);
    state = _sorted(ref.read(policyStoreProvider).all());
  }
}

final policiesProvider = NotifierProvider<PoliciesNotifier, List<SavedPolicy>>(PoliciesNotifier.new);
