import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pli_sahayak/data/data_repository.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('rules and every referenced table load from the asset bundle', () async {
    final data = await loadBundledData(rootBundle);
    expect(data.rules.ruleSetId, 'FY2026-27');
    expect(data.tables.keys, containsAll([
      for (final p in data.rules.plans)
        if (p.premiumTableId != null) p.premiumTableId!,
    ]));
    expect(data.usesSampleData, isTrue, reason: 'official tables not yet supplied');
  });
}
