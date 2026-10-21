import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pli_engine/pli_engine.dart';

const rulesAsset = 'assets/data/rules_FY2026-27.json';

/// Everything the calculators need, loaded once from bundled assets.
class AppData {
  AppData(this.rules, this.tables);

  final RuleSet rules;

  /// tableId → table.
  final Map<String, PremiumTable> tables;

  bool get usesSampleData => tables.values.any((t) => t.isSample);

  PremiumTable? tableFor(PlanRule plan) => tables[plan.premiumTableId];
}

Future<AppData> loadAppData(AssetBundle bundle) async {
  final rules = RuleSet.parse(await bundle.loadString(rulesAsset));
  final tables = <String, PremiumTable>{};
  for (final plan in rules.plans) {
    final id = plan.premiumTableId;
    if (id == null) continue;
    tables[id] = PremiumTable.parse(await bundle.loadString('assets/data/tables/$id.json'));
  }
  return AppData(rules, tables);
}

final appDataProvider = FutureProvider<AppData>((ref) => loadAppData(rootBundle));
