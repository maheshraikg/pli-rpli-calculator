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
export 'src/calculators/bonus.dart';
export 'src/calculators/eligibility.dart';
export 'src/calculators/maturity_projection.dart';
export 'src/calculators/proposal_check.dart';
export 'src/calculators/rule_not_confirmed.dart';
export 'src/util/dates.dart';
export 'src/util/xirr.dart';
export 'src/calculators/age.dart';
export 'src/calculators/bonus_history.dart';
export 'src/calculators/illustration.dart';
export 'src/calculators/premium.dart';
export 'src/calculators/returns.dart';
export 'src/calculators/servicing.dart';
export 'src/models/service_rules.dart';
