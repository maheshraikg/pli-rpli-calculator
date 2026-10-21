/// Small typed accessors over decoded JSON so that a malformed data file
/// fails loudly with the field path, instead of a cast error deep in a
/// calculator.
class JsonReader {
  JsonReader(this.map, [this.path = r'$']);

  final Map<String, Object?> map;
  final String path;

  String _p(String key) => '$path.$key';

  Never _fail(String key, String expected) => throw FormatException(
        'Expected $expected at ${_p(key)}, found ${map[key].runtimeType}',
      );

  bool has(String key) => map.containsKey(key) && map[key] != null;

  String string(String key) => map[key] is String ? map[key]! as String : _fail(key, 'string');
  String? stringOrNull(String key) => has(key) ? string(key) : null;

  int integer(String key) => map[key] is int ? map[key]! as int : _fail(key, 'integer');
  int? intOrNull(String key) => has(key) ? integer(key) : null;

  num number(String key) => map[key] is num ? map[key]! as num : _fail(key, 'number');

  bool boolean(String key) => map[key] is bool ? map[key]! as bool : _fail(key, 'boolean');
  bool? boolOrNull(String key) => has(key) ? boolean(key) : null;

  JsonReader object(String key) => map[key] is Map<String, Object?>
      ? JsonReader(map[key]! as Map<String, Object?>, _p(key))
      : _fail(key, 'object');
  JsonReader? objectOrNull(String key) => has(key) ? object(key) : null;

  List<Object?> list(String key) => map[key] is List ? map[key]! as List<Object?> : _fail(key, 'array');

  List<int> intList(String key) => [
        for (final (i, v) in list(key).indexed)
          v is int ? v : throw FormatException('Expected integer at ${_p(key)}[$i]'),
      ];

  List<String> stringList(String key) => [
        for (final (i, v) in list(key).indexed)
          v is String ? v : throw FormatException('Expected string at ${_p(key)}[$i]'),
      ];

  List<JsonReader> objectList(String key) => [
        for (final (i, v) in list(key).indexed)
          v is Map<String, Object?>
              ? JsonReader(v, '${_p(key)}[$i]')
              : throw FormatException('Expected object at ${_p(key)}[$i]'),
      ];
}
