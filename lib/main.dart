import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'app.dart';
import 'data/data_repository.dart';
import 'data/rate_update.dart';
import 'data/storage.dart';
import 'services/reminders.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  final settings = HiveSettingsStore(await Hive.openBox<dynamic>('settings'));
  final policies = HivePolicyStore(await Hive.openBox<String>('policies'));
  final reminders = LocalReminderService();
  await reminders.init();
  final updateDir =
      kRateManifestUrl.isEmpty ? null : Directory('${(await getApplicationSupportDirectory()).path}/rates');

  runApp(ProviderScope(
    overrides: [
      settingsStoreProvider.overrideWithValue(settings),
      policyStoreProvider.overrideWithValue(policies),
      reminderServiceProvider.overrideWithValue(reminders),
      rateUpdateDirProvider.overrideWithValue(updateDir),
    ],
    child: const PliRpliApp(),
  ));
}
