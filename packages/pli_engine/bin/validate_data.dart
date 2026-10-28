// Validates the rules file and every premium table under a data directory.
// Usage: dart run bin/validate_data.dart ../../assets/data
import 'dart:io';

import 'package:pli_engine/pli_engine.dart';

void main(List<String> args) {
  final dir = Directory(args.isEmpty ? '../../assets/data' : args.first);
  final rulesFiles = dir.listSync().whereType<File>().where((f) => f.uri.pathSegments.last.startsWith('rules_')).toList();
  if (rulesFiles.length != 1) {
    stderr.writeln('Expected exactly one rules_*.json in ${dir.path}, found ${rulesFiles.length}');
    exit(1);
  }
  final rules = RuleSet.parse(rulesFiles.single.readAsStringSync());
  final validator = TableValidator(rules);
  var errors = 0;
  final tableDir = Directory('${dir.path}/tables');
  final tables = tableDir.listSync().whereType<File>().where((f) => f.path.endsWith('.json')).toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  for (final file in tables) {
    final table = PremiumTable.parse(file.readAsStringSync());
    final issues = validator.validate(table);
    final e = issues.where((i) => i.severity == Severity.error).length;
    errors += e;
    final tag = table.isSample ? ' (SAMPLE)' : '';
    stdout.writeln('${e == 0 ? 'OK  ' : 'FAIL'} ${table.tableId}$tag — $e errors, ${issues.length - e} warnings');
    issues.forEach(stdout.writeln);
  }
  for (final plan in rules.plans) {
    if (plan.premiumTableId == null) stdout.writeln('NOTE ${plan.id}: no premium table yet');
    for (final id in plan.tableIds) {
      if (!tables.any((f) => f.uri.pathSegments.last == '$id.json')) {
        stdout.writeln('FAIL ${plan.id}: table $id.json missing');
        errors++;
      }
    }
  }
  exit(errors == 0 ? 0 : 1);
}
