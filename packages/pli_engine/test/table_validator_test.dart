import 'package:pli_engine/pli_engine.dart';
import 'package:test/test.dart';

const _rulesJson = '''
{
  "schemaVersion": 1, "ruleSetId": "T", "financialYear": "2026-27", "effectiveFrom": "2026-04-01",
  "source": "test", "gazetteRef": "test",
  "schemes": {
    "PLI": { "sumAssured": { "min": 20000, "max": 5000000 } },
    "RPLI": { "sumAssured": { "min": 10000, "max": 1000000 } }
  },
  "plans": [ {
    "id": "ea", "scheme": "PLI", "type": "EA", "names": { "en": "EA", "kn": "EA" },
    "entryAge": { "min": 19, "max": 21 }, "maturityAges": [21, 25],
    "bonusClass": "EA", "premiumTableId": "ea", "verified": true
  } ],
  "bonusRatesPer1000": { "PLI": {}, "RPLI": {} }
}''';

PremiumTable _table(Map<String, List<num?>> monthly) => PremiumTable.parse('''
{ "schemaVersion": 1, "tableId": "ea", "planId": "ea", "isSample": true, "source": "t",
  "unitSumAssured": 10000, "columnDimension": "MATURITY_AGE", "columns": [21, 25],
  "premiums": { "MONTHLY": {${monthly.entries.map((e) => '"${e.key}": ${e.value.map((v) => v ?? 'null').toList()}').join(',')}} } }''');

List<String> _errors(PremiumTable t) => TableValidator(RuleSet.parse(_rulesJson))
    .validate(t)
    .where((i) => i.severity == Severity.error)
    .map((i) => i.message)
    .toList();

void main() {
  test('a well-formed table has no errors', () {
    expect(_errors(_table({'19': [500, 200], '20': [1000, 260], '21': [null, 340]})), isEmpty);
  });

  test('missing entry-age row is an error', () {
    expect(_errors(_table({'19': [500, 200], '21': [null, 340]})), contains(contains('missing row for entry age 20')));
  });

  test('empty cell for an offered combination is an error', () {
    expect(_errors(_table({'19': [500, null], '20': [1000, 260], '21': [null, 340]})), contains(contains('empty cell')));
  });

  test('value for a combination not offered is an error', () {
    expect(_errors(_table({'19': [500, 200], '20': [1000, 260], '21': [999, 340]})), contains(contains('does not offer')));
  });

  test('premium falling with age is an error', () {
    expect(_errors(_table({'19': [500, 300], '20': [1000, 260], '21': [null, 340]})), contains(contains('premium falls')));
  });

  test('premium rising with longer term is an error', () {
    expect(_errors(_table({'19': [500, 600], '20': [1000, 1100], '21': [null, 1200]})), contains(contains('despite longer term')));
  });

  test('lookup never interpolates', () {
    final t = _table({'19': [500, 200], '20': [1000, 260], '21': [null, 340]});
    expect(t.lookup(PremiumFrequency.monthly, 20, 25), Paise.wholeRupees(260));
    expect(t.lookup(PremiumFrequency.monthly, 21, 21), isNull);
    expect(t.lookup(PremiumFrequency.monthly, 20, 23), isNull);
    expect(t.lookup(PremiumFrequency.yearly, 20, 25), isNull);
  });
}
