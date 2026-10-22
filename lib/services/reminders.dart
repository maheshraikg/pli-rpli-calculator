import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timezone/data/latest.dart' as tzdata;
import 'package:timezone/timezone.dart' as tz;

class Reminder {
  const Reminder({required this.id, required this.when, required this.title, required this.body});

  final int id;
  final DateTime when;
  final String title;
  final String body;
}

/// Local premium-due reminders. Nothing leaves the device.
abstract interface class ReminderService {
  Future<bool> requestPermission();
  Future<void> schedule(List<Reminder> reminders);
  Future<void> cancel(List<int> ids);
}

class NoopReminderService implements ReminderService {
  final scheduled = <int, Reminder>{};

  @override
  Future<bool> requestPermission() async => true;
  @override
  Future<void> schedule(List<Reminder> reminders) async => scheduled.addAll({for (final r in reminders) r.id: r});
  @override
  Future<void> cancel(List<int> ids) async => ids.forEach(scheduled.remove);
}

class LocalReminderService implements ReminderService {
  final _plugin = FlutterLocalNotificationsPlugin();

  static const _details = NotificationDetails(
    android: AndroidNotificationDetails('premium_due', 'Premium due reminders', importance: Importance.high),
  );

  Future<void> init() async {
    tzdata.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation('Asia/Kolkata'));
    await _plugin.initialize(
      settings: const InitializationSettings(android: AndroidInitializationSettings('@mipmap/ic_launcher')),
    );
  }

  AndroidFlutterLocalNotificationsPlugin? get _android =>
      _plugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();

  @override
  Future<bool> requestPermission() async => await _android?.requestNotificationsPermission() ?? false;

  @override
  Future<void> schedule(List<Reminder> reminders) async {
    final now = tz.TZDateTime.now(tz.local);
    for (final r in reminders) {
      final when = tz.TZDateTime(tz.local, r.when.year, r.when.month, r.when.day, 9);
      if (when.isBefore(now)) continue;
      await _plugin.zonedSchedule(
        id: r.id,
        scheduledDate: when,
        notificationDetails: _details,
        androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
        title: r.title,
        body: r.body,
      );
    }
  }

  @override
  Future<void> cancel(List<int> ids) async {
    for (final id in ids) {
      await _plugin.cancel(id: id);
    }
  }
}

final reminderServiceProvider = Provider<ReminderService>((ref) => NoopReminderService());
