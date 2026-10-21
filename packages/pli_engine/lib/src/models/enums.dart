enum Scheme {
  pli('PLI'),
  rpli('RPLI');

  const Scheme(this.code);
  final String code;

  static Scheme parse(String code) => values.firstWhere(
        (s) => s.code == code,
        orElse: () => throw FormatException('Unknown scheme "$code"'),
      );
}

enum PlanType {
  wla('WLA'),
  ea('EA'),
  cwla('CWLA'),
  aea('AEA'),
  jointEa('JOINT_EA'),
  childEa('CHILD_EA');

  const PlanType(this.code);
  final String code;

  static PlanType parse(String code) => values.firstWhere(
        (t) => t.code == code,
        orElse: () => throw FormatException('Unknown plan type "$code"'),
      );
}

enum PremiumFrequency {
  monthly('MONTHLY', 1),
  quarterly('QUARTERLY', 3),
  halfYearly('HALF_YEARLY', 6),
  yearly('YEARLY', 12);

  const PremiumFrequency(this.code, this.months);
  final String code;
  final int months;

  static PremiumFrequency parse(String code) => values.firstWhere(
        (f) => f.code == code,
        orElse: () => throw FormatException('Unknown frequency "$code"'),
      );
}

/// What the columns of a premium table are indexed by.
enum ColumnDimension {
  maturityAge('MATURITY_AGE'),
  premiumCeasingAge('PREMIUM_CEASING_AGE'),
  termYears('TERM_YEARS');

  const ColumnDimension(this.code);
  final String code;

  static ColumnDimension parse(String code) => values.firstWhere(
        (d) => d.code == code,
        orElse: () => throw FormatException('Unknown column dimension "$code"'),
      );
}
