// Fails if any bundled premium table has a missing row/column or any other
// validation error against the bundled rules.
import 'dart:io';

import 'package:pli_engine/pli_engine.dart';
import 'package:test/test.dart';

void main() {
  final dataDir = Directory('../../assets/data');
  final rules = RuleSet.parse(File('${dataDir.path}/rules_FY2026-27.json').readAsStringSync());
  final validator = TableValidator(rules);

  for (final plan in rules.plans.where((p) => p.premiumTableId != null)) {
    test('${plan.premiumTableId} is complete and consistent', () {
      final file = File('${dataDir.path}/tables/${plan.premiumTableId}.json');
      expect(file.existsSync(), isTrue, reason: 'table file missing');
      final errors = validator.validate(PremiumTable.parse(file.readAsStringSync())).where((i) => i.severity == Severity.error);
      expect(errors, isEmpty, reason: errors.join('\n'));
    });
  }
}
