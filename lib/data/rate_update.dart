import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';

import 'data_repository.dart';

/// Rate-update manifest URL, set at build time:
///   flutter build appbundle --dart-define=RATE_MANIFEST_URL=https://…/manifest.json
/// Empty (the default) disables update checks; the app then needs no
/// internet permission.
const kRateManifestUrl = String.fromEnvironment('RATE_MANIFEST_URL');

enum RateUpdateStatus { upToDate, installed, failed }

class RateUpdateResult {
  const RateUpdateResult(this.status, {this.version, this.error});

  final RateUpdateStatus status;
  final int? version;
  final String? error;
}

/// Downloads rate data described by a manifest:
///
/// ```json
/// {"schemaVersion": 1, "version": 3, "rules": "rules_FY2027-28.json",
///  "files": [{"path": "rules_FY2027-28.json", "sha256": "…"},
///            {"path": "tables/pli_santosh.json", "sha256": "…"}]}
/// ```
///
/// Every file must match its checksum, parse, and pass table validation
/// before it replaces the installed set. Anything else keeps the current
/// data. `tools/make_rate_manifest.py` builds the manifest.
class RateUpdater {
  RateUpdater(this.dir);

  final Directory dir;

  Directory get _current => Directory('${dir.path}/current');
  File get _manifestFile => File('${_current.path}/manifest.json');

  int? get installedVersion {
    try {
      return (jsonDecode(_manifestFile.readAsStringSync()) as Map<String, Object?>)['version'] as int?;
    } on Object {
      return null;
    }
  }

  /// The installed update, re-verified; null if none or anything is off.
  AppData? loadInstalled() {
    try {
      if (!_manifestFile.existsSync()) return null;
      final manifest = jsonDecode(_manifestFile.readAsStringSync()) as Map<String, Object?>;
      final files = _verify(manifest, (p) => File('${_current.path}/$p').readAsBytesSync());
      return _build(manifest, files);
    } on Object {
      return null;
    }
  }

  Future<RateUpdateResult> check(Uri manifestUrl, {HttpClient? client}) async {
    final http = client ?? HttpClient();
    try {
      final manifestBytes = await _get(http, manifestUrl);
      final manifest = jsonDecode(utf8.decode(manifestBytes)) as Map<String, Object?>;
      if (manifest['schemaVersion'] != 1) throw const FormatException('Unsupported manifest');
      final version = manifest['version']! as int;
      if (version <= (installedVersion ?? 0)) return RateUpdateResult(RateUpdateStatus.upToDate, version: installedVersion);

      final downloaded = <String, List<int>>{};
      for (final f in (manifest['files']! as List).cast<Map<String, Object?>>()) {
        final path = f['path']! as String;
        if (path.contains('..') || path.startsWith('/')) throw FormatException('Bad path $path');
        downloaded[path] = await _get(http, manifestUrl.resolve(path));
      }
      final files = _verify(manifest, (p) => downloaded[p]!);
      _build(manifest, files); // throws if invalid

      final staging = Directory('${dir.path}/staging');
      if (staging.existsSync()) staging.deleteSync(recursive: true);
      for (final MapEntry(key: path, value: bytes) in downloaded.entries) {
        File('${staging.path}/$path')
          ..createSync(recursive: true)
          ..writeAsBytesSync(bytes);
      }
      File('${staging.path}/manifest.json').writeAsBytesSync(manifestBytes);
      if (_current.existsSync()) _current.deleteSync(recursive: true);
      staging.renameSync(_current.path);
      return RateUpdateResult(RateUpdateStatus.installed, version: version);
    } on Object catch (e) {
      return RateUpdateResult(RateUpdateStatus.failed, error: '$e');
    } finally {
      if (client == null) http.close();
    }
  }

  Future<List<int>> _get(HttpClient http, Uri url) async {
    if (url.scheme != 'https') throw FormatException('Only https is allowed: $url');
    final res = await (await http.getUrl(url)).close();
    if (res.statusCode != 200) throw HttpException('HTTP ${res.statusCode}', uri: url);
    final bytes = <int>[];
    await for (final chunk in res) {
      bytes.addAll(chunk);
    }
    return bytes;
  }

  /// path → text, after checking every file's sha256.
  Map<String, String> _verify(Map<String, Object?> manifest, List<int> Function(String path) read) => {
        for (final f in (manifest['files']! as List).cast<Map<String, Object?>>())
          f['path']! as String: () {
            final bytes = read(f['path']! as String);
            if (sha256.convert(bytes).toString() != f['sha256']) {
              throw FormatException('Checksum mismatch for ${f['path']}');
            }
            return utf8.decode(bytes);
          }(),
      };

  AppData _build(Map<String, Object?> manifest, Map<String, String> files) => buildAppData(
        files[manifest['rules']! as String] ?? (throw const FormatException('Rules file missing')),
        (id) => files['tables/$id.json'],
        validate: true,
        updateVersion: manifest['version']! as int,
      );
}
