/// The agent's details printed on quotations and reminder messages.
class AgentProfile {
  const AgentProfile({this.name = '', this.phone = '', this.code = '', this.logoPath});

  factory AgentProfile.fromJson(Map<dynamic, dynamic> j) => AgentProfile(
        name: j['name'] as String? ?? '',
        phone: j['phone'] as String? ?? '',
        code: j['code'] as String? ?? '',
        logoPath: j['logoPath'] as String?,
      );

  final String name;
  final String phone;

  /// Agent ID / office, free text.
  final String code;

  /// Copy of the chosen photo or logo in the app's private storage.
  final String? logoPath;

  bool get isEmpty => name.isEmpty && phone.isEmpty && code.isEmpty && logoPath == null;

  Map<String, Object?> toJson() => {'name': name, 'phone': phone, 'code': code, 'logoPath': logoPath};

  AgentProfile copyWith({String? name, String? phone, String? code, String? logoPath, bool clearLogo = false}) =>
      AgentProfile(
        name: name ?? this.name,
        phone: phone ?? this.phone,
        code: code ?? this.code,
        logoPath: clearLogo ? null : logoPath ?? this.logoPath,
      );
}
