import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive_ce.dart';

import 'agent_profile.dart';
import 'saved_policy.dart';

abstract interface class SettingsStore {
  String? get languageCode;
  Future<void> setLanguageCode(String? code);
  bool get disclaimerAccepted;
  Future<void> acceptDisclaimer();
  AgentProfile get agentProfile;
  Future<void> setAgentProfile(AgentProfile profile);
}

abstract interface class PolicyStore {
  List<SavedPolicy> all();
  Future<void> put(SavedPolicy policy);
  Future<void> delete(String id);
}

class MemorySettingsStore implements SettingsStore {
  MemorySettingsStore({this.languageCode, this.disclaimerAccepted = false, this.agentProfile = const AgentProfile()});

  @override
  String? languageCode;
  @override
  bool disclaimerAccepted;

  @override
  Future<void> setLanguageCode(String? code) async => languageCode = code;
  @override
  Future<void> acceptDisclaimer() async => disclaimerAccepted = true;
  @override
  AgentProfile agentProfile;
  @override
  Future<void> setAgentProfile(AgentProfile profile) async => agentProfile = profile;
}

class MemoryPolicyStore implements PolicyStore {
  final _items = <String, SavedPolicy>{};

  @override
  List<SavedPolicy> all() => _items.values.toList();
  @override
  Future<void> put(SavedPolicy policy) async => _items[policy.id] = policy;
  @override
  Future<void> delete(String id) async => _items.remove(id);
}

class HiveSettingsStore implements SettingsStore {
  HiveSettingsStore(this._box);

  final Box<dynamic> _box;

  @override
  String? get languageCode => _box.get('languageCode') as String?;
  @override
  Future<void> setLanguageCode(String? code) => code == null ? _box.delete('languageCode') : _box.put('languageCode', code);
  @override
  bool get disclaimerAccepted => _box.get('disclaimerAccepted', defaultValue: false) as bool;
  @override
  Future<void> acceptDisclaimer() => _box.put('disclaimerAccepted', true);
  @override
  AgentProfile get agentProfile => switch (_box.get('agentProfile')) {
        final Map<dynamic, dynamic> m => AgentProfile.fromJson(m),
        _ => const AgentProfile(),
      };
  @override
  Future<void> setAgentProfile(AgentProfile profile) => _box.put('agentProfile', profile.toJson());
}

/// Policies stored as JSON strings keyed by id, so no generated adapters
/// are needed and the format stays readable.
class HivePolicyStore implements PolicyStore {
  HivePolicyStore(this._box);

  final Box<String> _box;

  @override
  List<SavedPolicy> all() => [
        for (final s in _box.values) SavedPolicy.fromJson(jsonDecode(s) as Map<String, Object?>),
      ];
  @override
  Future<void> put(SavedPolicy policy) => _box.put(policy.id, jsonEncode(policy.toJson()));
  @override
  Future<void> delete(String id) => _box.delete(id);
}

/// Overridden in main() with Hive-backed stores; in-memory by default.
final settingsStoreProvider = Provider<SettingsStore>((ref) => MemorySettingsStore());
final policyStoreProvider = Provider<PolicyStore>((ref) => MemoryPolicyStore());

class AgentProfileNotifier extends Notifier<AgentProfile> {
  @override
  AgentProfile build() => ref.read(settingsStoreProvider).agentProfile;

  Future<void> save(AgentProfile p) async {
    await ref.read(settingsStoreProvider).setAgentProfile(p);
    state = p;
  }
}

final agentProfileProvider = NotifierProvider<AgentProfileNotifier, AgentProfile>(AgentProfileNotifier.new);
