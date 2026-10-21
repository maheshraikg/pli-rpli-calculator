/// PLI/RPLI calculation engine.
///
/// Pure Dart: no Flutter imports, no file I/O. Callers load JSON strings
/// (from Flutter assets, files or network) and hand them to the parsers here.
library;

export 'src/data/json_reader.dart';
export 'src/models/enums.dart';
export 'src/models/plan_rule.dart';
export 'src/models/premium_table.dart';
export 'src/models/rule_set.dart';
export 'src/util/money.dart';
export 'src/validation/table_validator.dart';
