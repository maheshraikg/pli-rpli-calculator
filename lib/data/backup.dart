import 'dart:convert';

import 'saved_policy.dart';

const _format = 'pli-rpli-calculator-backup';

/// My Policies as a JSON backup file. Contains personal details; the user
/// chooses where it goes (WhatsApp to self, Drive, etc.).
String exportPolicies(List<SavedPolicy> policies, DateTime now) => const JsonEncoder.withIndent(' ').convert({
      'format': _format,
      'version': 1,
      'exportedAt': now.toIso8601String(),
      'policies': [for (final p in policies) p.toJson()],
    });

/// Parses a backup made by [exportPolicies]; throws [FormatException] for
/// anything else.
List<SavedPolicy> parseBackup(String text) {
  final Object? j;
  try {
    j = jsonDecode(text);
  } on FormatException {
    throw const FormatException('Not a JSON file');
  }
  if (j is! Map<String, Object?> || j['format'] != _format) throw const FormatException('Not a backup file');
  if (j['version'] != 1) throw const FormatException('Unsupported backup version');
  final list = j['policies'];
  if (list is! List) throw const FormatException('No policies');
  try {
    return [for (final p in list.cast<Map<String, Object?>>()) SavedPolicy.fromJson(p)];
  } on Object {
    throw const FormatException('Damaged backup');
  }
}
