/// Thrown when a calculation depends on a rule that has not yet been
/// confirmed from an official source. Callers show "not available yet"
/// instead of a figure.
class RuleNotConfirmedException implements Exception {
  RuleNotConfirmedException(this.rule);

  /// Short description of the missing rule, for logs and developer messages.
  final String rule;

  @override
  String toString() => 'Rule not confirmed: $rule';
}
