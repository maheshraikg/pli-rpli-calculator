import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import '../../core/widgets/data_scaffold.dart';
import '../../core/widgets/ui.dart';
import '../../data/agent_profile.dart';
import '../../data/storage.dart';
import '../../l10n/app_localizations.dart';

/// Round logo / photo, or an initial when none is set.
class AgentAvatar extends StatelessWidget {
  const AgentAvatar({super.key, required this.profile, this.radius = 28});

  final AgentProfile profile;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final path = profile.logoPath;
    final theme = Theme.of(context);
    if (path != null && File(path).existsSync()) {
      return CircleAvatar(radius: radius, backgroundImage: FileImage(File(path)));
    }
    return CircleAvatar(
      radius: radius,
      backgroundColor: theme.colorScheme.primaryContainer,
      child: Text(
        profile.name.isEmpty ? '?' : profile.name.characters.first.toUpperCase(),
        style: TextStyle(fontSize: radius * 0.8, color: theme.colorScheme.primary, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  late final AgentProfile _initial = ref.read(agentProfileProvider);
  late final _name = TextEditingController(text: _initial.name);
  late final _phone = TextEditingController(text: _initial.phone);
  late final _code = TextEditingController(text: _initial.code);
  late String? _logo = _initial.logoPath;

  @override
  void dispose() {
    _name.dispose();
    _phone.dispose();
    _code.dispose();
    super.dispose();
  }

  Future<void> _pickLogo() async {
    final file = await FilePicker.pickFile(type: FileType.image);
    if (file == null) return;
    final dir = await getApplicationDocumentsDirectory();
    final dest = File('${dir.path}/agent_logo_${DateTime.now().millisecondsSinceEpoch}.${file.extension ?? 'png'}');
    await dest.writeAsBytes(await file.readAsBytes());
    setState(() => _logo = dest.path);
  }

  AgentProfile get _current => AgentProfile(
        name: _name.text.trim(),
        phone: _phone.text.trim(),
        code: _code.text.trim(),
        logoPath: _logo,
      );

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    Widget field(TextEditingController c, String label, IconData icon, {TextInputType? type}) => Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: TextField(
            controller: c,
            keyboardType: type,
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(labelText: label, prefixIcon: Icon(icon)),
            onChanged: (_) => setState(() {}),
          ),
        );

    return DataScaffold(
      title: l.profileTitle,
      builder: (context, data) => ListView(padding: const EdgeInsets.all(16), children: [
        SectionCard(
          child: Column(children: [
            AgentAvatar(profile: _current, radius: 44),
            const SizedBox(height: 8),
            Wrap(spacing: 8, alignment: WrapAlignment.center, children: [
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(minimumSize: const Size(0, 44)),
                icon: const Icon(Icons.add_a_photo_rounded),
                label: Text(l.chooseLogo),
                onPressed: _pickLogo,
              ),
              if (_logo != null)
                TextButton(onPressed: () => setState(() => _logo = null), child: Text(l.removeLogo)),
            ]),
          ]),
        ),
        SectionCard(
          child: Column(children: [
            field(_name, l.agentNameField, Icons.person_rounded),
            field(_phone, l.agentPhoneField, Icons.phone_rounded, type: TextInputType.phone),
            field(_code, l.agentCodeField, Icons.badge_rounded),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(l.profileNote, style: Theme.of(context).textTheme.bodySmall),
        ),
        FilledButton.icon(
          icon: const Icon(Icons.save_rounded),
          label: Text(l.save),
          onPressed: () async {
            await ref.read(agentProfileProvider.notifier).save(_current);
            if (context.mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l.profileSaved)));
          },
        ),
      ]),
    );
  }
}
