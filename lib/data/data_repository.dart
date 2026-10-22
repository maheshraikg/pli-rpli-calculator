import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pli_engine/pli_engine.dart';

import 'rate_update.dart';

const rulesAsset = 'assets/data/rules_FY2026-27.json';

/// Everything the calculators need: rules plus premium tables.
class AppData {
  AppData(this.rules, this.tables, {this.updateVersion});

  final RuleSet rules;

  /// tableId → table.
  final Map<String, PremiumTable> tables;

  /// Set when the data came from a downloaded rate update.
  final int? updateVersion;

  bool get usesSampleData => tables.values.any((t) => t.isSample);

  PremiumTable? tableFor(PlanRule plan) => tables[plan.premiumTableId];
}

/// Parses rules and the tables they reference. With [validate], any table
/// validation error throws (used for downloaded data).
AppData buildAppData(String rulesJson, String? Function(String tableId) tableJson, {bool validate = false, int? updateVersion}) {
  final rules = RuleSet.parse(rulesJson);
  final validator = TableValidator(rules);
  final tables = <String, PremiumTable>{};
  for (final plan in rules.plans) {
    final id = plan.premiumTableId;
    if (id == null) continue;
    final text = tableJson(id) ?? (throw FormatException('Missing table $id'));
    final table = PremiumTable.parse(text);
    if (validate) {
      final errors = validator.validate(table).where((i) => i.severity == Severity.error).toList();
      if (errors.isNotEmpty) throw FormatException('Table $id invalid: ${errors.first}');
    }
    tables[id] = table;
  }
  return AppData(rules, tables, updateVersion: updateVersion);
}

Future<AppData> loadBundledData(AssetBundle bundle) async {
  final rulesText = await bundle.loadString(rulesAsset);
  final rules = RuleSet.parse(rulesText);
  final texts = <String, String>{};
  for (final plan in rules.plans) {
    final id = plan.premiumTableId;
    if (id != null) texts[id] = await bundle.loadString('assets/data/tables/$id.json');
  }
  return buildAppData(rulesText, (id) => texts[id]);
}

/// Where downloaded rate updates live; null disables them (tests, or no
/// manifest URL configured).
final rateUpdateDirProvider = Provider<Directory?>((ref) => null);

/// A verified downloaded update if one is installed, else the bundled data.
final appDataProvider = FutureProvider<AppData>((ref) async {
  final dir = ref.watch(rateUpdateDirProvider);
  if (dir != null) {
    final installed = RateUpdater(dir).loadInstalled();
    if (installed != null) return installed;
  }
  return loadBundledData(rootBundle);
});
