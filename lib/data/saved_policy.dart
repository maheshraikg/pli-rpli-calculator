import 'package:pli_engine/pli_engine.dart';

/// A policy the user saved under "My Policies". Stored on the device only.
class SavedPolicy {
  const SavedPolicy({
    required this.id,
    required this.holderName,
    required this.policyNumber,
    required this.planId,
    required this.sumAssured,
    required this.commencement,
    required this.entryAge,
    required this.column,
    required this.frequency,
    required this.premiumRupees,
    required this.reminders,
    this.phone = '',
    this.paidDues = const {},
  });

  factory SavedPolicy.fromJson(Map<String, Object?> j) => SavedPolicy(
        id: j['id']! as String,
        holderName: j['holderName']! as String,
        policyNumber: j['policyNumber']! as String,
        planId: j['planId']! as String,
        sumAssured: j['sumAssured']! as int,
        commencement: DateTime.parse(j['commencement']! as String),
        entryAge: j['entryAge']! as int,
        column: j['column']! as int,
        frequency: PremiumFrequency.parse(j['frequency']! as String),
        premiumRupees: j['premiumRupees']! as int,
        reminders: j['reminders']! as bool,
        phone: j['phone'] as String? ?? '',
        paidDues: {...?(j['paidDues'] as List?)?.cast<String>()},
      );

  final String id;
  final String holderName;
  final String policyNumber;
  final String planId;
  final int sumAssured;
  final DateTime commencement;
  final int entryAge;

  /// Maturity age, premium ceasing age or term, depending on the plan.
  final int column;
  final PremiumFrequency frequency;

  /// As printed on the receipt; not recalculated.
  final int premiumRupees;
  final bool reminders;

  /// Customer's mobile, optional; used for WhatsApp due reminders.
  final String phone;

  /// Due dates ("2026-10-15") the agent marked as collected. The agent's own
  /// record; not checked against India Post.
  final Set<String> paidDues;

  bool isPaid(DateTime due) => paidDues.contains(dueKey(due));

  Map<String, Object?> toJson() => {
        'id': id,
        'holderName': holderName,
        'policyNumber': policyNumber,
        'planId': planId,
        'sumAssured': sumAssured,
        'commencement': commencement.toIso8601String().substring(0, 10),
        'entryAge': entryAge,
        'column': column,
        'frequency': frequency.code,
        'premiumRupees': premiumRupees,
        'reminders': reminders,
        'phone': phone,
        'paidDues': (paidDues.toList()..sort()),
      };

  SavedPolicy copyWith({bool? reminders, Set<String>? paidDues}) => SavedPolicy(
        id: id,
        holderName: holderName,
        policyNumber: policyNumber,
        planId: planId,
        sumAssured: sumAssured,
        commencement: commencement,
        entryAge: entryAge,
        column: column,
        frequency: frequency,
        premiumRupees: premiumRupees,
        reminders: reminders ?? this.reminders,
        phone: phone,
        paidDues: paidDues ?? this.paidDues,
      );

  /// Copy with [due] marked collected or not.
  SavedPolicy withPaid(DateTime due, bool paid) =>
      copyWith(paidDues: paid ? {...paidDues, dueKey(due)} : paidDues.difference({dueKey(due)}));
}

String dueKey(DateTime d) =>
    '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
