import 'dart:io';

import 'package:pli_engine/pli_engine.dart';

final bundledRules = RuleSet.parse(File('../../assets/data/rules_FY2026-27.json').readAsStringSync());

Paise rs(int rupees) => Paise.wholeRupees(rupees);
