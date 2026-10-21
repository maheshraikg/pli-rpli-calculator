import 'dart:convert';

import '../data/json_reader.dart';
import '../util/money.dart';
import 'enums.dart';

/// An official premium table: premium per [unitSumAssured] by entry age
/// (rows) × [columnDimension] (columns) × frequency.
///
/// A `null` cell means the combination is not offered. Lookups never
/// interpolate: a missing cell is reported as unavailable.
class PremiumTable {
  PremiumTable({
    required this.tableId,
    required this.planId,
    required this.isSample,
    required this.source,
    required this.unitSumAssured,
    required this.columnDimension,
    required this.columns,
    required this.cells,
    this.monotonicExceptions = const {},
  });

  factory PremiumTable.parse(String jsonText) =>
      PremiumTable.fromJson(JsonReader(jsonDecode(jsonText) as Map<String, Object?>));

  factory PremiumTable.fromJson(JsonReader r) {
    final schemaVersion = r.integer('schemaVersion');
    if (schemaVersion != 1) {
      throw FormatException('Unsupported premium table schemaVersion $schemaVersion');
    }
    final columns = r.intList('columns');
    final freqs = r.object('premiums');
    final cells = <PremiumFrequency, Map<int, List<Paise?>>>{};
    for (final code in freqs.map.keys) {
      final freq = PremiumFrequency.parse(code);
      final rows = freqs.object(code);
      final parsed = <int, List<Paise?>>{};
      for (final ageKey in rows.map.keys) {
        final age = int.tryParse(ageKey) ??
            (throw FormatException('Row key "$ageKey" in ${rows.path} is not an age'));
        final values = rows.list(ageKey);
        parsed[age] = [
          for (final (i, v) in values.indexed)
            switch (v) {
              null => null,
              final num n => Paise.fromRupees(n),
              _ => throw FormatException('Bad cell at ${rows.path}.$ageKey[$i]: $v'),
            },
        ];
      }
      cells[freq] = parsed;
    }
    return PremiumTable(
      tableId: r.string('tableId'),
      planId: r.string('planId'),
      isSample: r.boolean('isSample'),
      source: r.string('source'),
      unitSumAssured: r.integer('unitSumAssured'),
      columnDimension: ColumnDimension.parse(r.string('columnDimension')),
      columns: columns,
      cells: cells,
      monotonicExceptions:
          r.has('monotonicExceptions') ? r.stringList('monotonicExceptions').toSet() : const {},
    );
  }

  final String tableId;
  final String planId;
  final bool isSample;
  final String source;
  final int unitSumAssured;
  final ColumnDimension columnDimension;
  final List<int> columns;

  /// frequency → entry age → one value per column (null = not offered).
  final Map<PremiumFrequency, Map<int, List<Paise?>>> cells;

  /// Cells exempt from monotonicity checks, as "FREQ:age:column", for
  /// documented anomalies in the official source.
  final Set<String> monotonicExceptions;

  Set<PremiumFrequency> get frequencies => cells.keys.toSet();

  /// Exact table value, or null if the combination is not in the table.
  Paise? lookup(PremiumFrequency frequency, int entryAge, int column) {
    final col = columns.indexOf(column);
    if (col < 0) return null;
    final row = cells[frequency]?[entryAge];
    if (row == null || col >= row.length) return null;
    return row[col];
  }
}
