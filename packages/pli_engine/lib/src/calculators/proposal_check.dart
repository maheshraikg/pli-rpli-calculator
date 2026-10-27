import '../models/enums.dart';
import '../models/plan_rule.dart';
import '../models/rule_set.dart';

/// Inputs for checking whether a new policy can be issued. Ages are whole
/// years; how age is derived from date of birth is decided by the caller.
class Proposal {
  const Proposal({
    required this.planId,
    required this.entryAge,
    required this.sumAssured,
    this.existingSumAssuredSameScheme = 0,
    this.maturityAge,
    this.premiumCeasingAge,
    this.termYears,
    this.spouseAge,
    this.parentAge,
    this.parentSumAssured,
    this.existingChildPolicies = 0,
  });

  final String planId;

  /// Proposer's age; for a children's policy, the child's age.
  final int entryAge;
  final int sumAssured;

  /// SA of the person's other in-force policies in the same scheme, for the
  /// aggregate limit.
  final int existingSumAssuredSameScheme;
  final int? maturityAge;
  final int? premiumCeasingAge;
  final int? termYears;
  final int? spouseAge;
  final int? parentAge;
  final int? parentSumAssured;
  final int existingChildPolicies;
}

/// A reason the proposal cannot be accepted. The app turns each into a
/// localized plain-language message.
sealed class Violation {
  const Violation();
}

class EntryAgeOutOfRange extends Violation {
  const EntryAgeOutOfRange(this.age, this.allowed);
  final int age;
  final AgeRange allowed;
}

class SpouseAgeOutOfRange extends Violation {
  const SpouseAgeOutOfRange(this.age, this.allowed);
  final int age;
  final AgeRange allowed;
}

class SumAssuredBelowMin extends Violation {
  const SumAssuredBelowMin(this.sumAssured, this.min);
  final int sumAssured;
  final int min;
}

class SumAssuredAboveMax extends Violation {
  const SumAssuredAboveMax(this.sumAssured, this.existing, this.max);
  final int sumAssured;
  final int existing;
  final int max;
}

class SumAssuredNotMultiple extends Violation {
  const SumAssuredNotMultiple(this.sumAssured, this.multipleOf);
  final int sumAssured;
  final int multipleOf;
}

/// A required option (maturity age, premium ceasing age, term, spouse or
/// parent details) was not given.
class MissingInput extends Violation {
  const MissingInput(this.field);
  final String field;
}

class OptionNotOffered extends Violation {
  const OptionNotOffered(this.dimension, this.value, this.allowed);
  final ColumnDimension dimension;
  final int value;
  final List<int> allowed;
}

/// Maturity / premium ceasing age is not after the entry age.
class OptionNotAfterEntryAge extends Violation {
  const OptionNotAfterEntryAge(this.dimension, this.value, this.entryAge);
  final ColumnDimension dimension;
  final int value;
  final int entryAge;
}

class TermOutOfRange extends Violation {
  const TermOutOfRange(this.termYears, this.allowed);
  final int termYears;
  final AgeRange allowed;
}

class ParentAgeTooHigh extends Violation {
  const ParentAgeTooHigh(this.parentAge, this.max);
  final int parentAge;
  final int max;
}

class TooManyChildPolicies extends Violation {
  const TooManyChildPolicies(this.existing, this.max);
  final int existing;
  final int max;
}

class ChildSumAssuredAboveCap extends Violation {
  const ChildSumAssuredAboveCap(this.sumAssured, this.cap);
  final int sumAssured;
  final int cap;
}

/// Checks a proposal against the plan rules. An empty list means the
/// proposal passes every rule that is in the data; it does not mean a
/// premium exists (that is decided by the official table).
List<Violation> checkProposal(RuleSet rules, Proposal p) {
  final plan = rules.plan(p.planId);
  final v = <Violation>[];

  // Sum assured.
  final child = plan.childPlan;
  if (child != null) {
    var cap = child.sumAssuredMax;
    if (child.capAtParentSA) {
      final parentSA = p.parentSumAssured;
      if (parentSA == null) {
        v.add(const MissingInput('parentSumAssured'));
      } else if (parentSA < cap) {
        cap = parentSA;
      }
    }
    if (p.sumAssured > cap) v.add(ChildSumAssuredAboveCap(p.sumAssured, cap));
    if (p.sumAssured <= 0) v.add(SumAssuredBelowMin(p.sumAssured, 1));
  } else {
    final limit = rules.sumAssuredLimits[plan.scheme]!;
    if (p.sumAssured < limit.min) v.add(SumAssuredBelowMin(p.sumAssured, limit.min));
    if (p.sumAssured + p.existingSumAssuredSameScheme > limit.max) {
      v.add(SumAssuredAboveMax(p.sumAssured, p.existingSumAssuredSameScheme, limit.max));
    }
  }
  final multiple = rules.sumAssuredLimits[plan.scheme]!.multipleOf;
  if (multiple != null && p.sumAssured % multiple != 0) {
    v.add(SumAssuredNotMultiple(p.sumAssured, multiple));
  }

  // Ages and options, by plan type.
  switch (plan.type) {
    case PlanType.ea:
      _checkEntryAge(plan.entryAge!, p.entryAge, v);
      _checkAgeOption(ColumnDimension.maturityAge, p.maturityAge, plan.maturityAges, p.entryAge, v);
    case PlanType.wla:
      _checkEntryAge(plan.entryAge!, p.entryAge, v);
      _checkAgeOption(ColumnDimension.premiumCeasingAge, p.premiumCeasingAge, plan.premiumCeasingAges, p.entryAge, v);
    case PlanType.cwla:
      _checkEntryAge(plan.entryAge!, p.entryAge, v);
    case PlanType.aea:
      final term = p.termYears;
      final allowed = [for (final t in plan.aeaTerms) t.years];
      if (term == null) {
        v.add(const MissingInput('termYears'));
      } else if (!allowed.contains(term)) {
        v.add(OptionNotOffered(ColumnDimension.termYears, term, allowed));
      } else {
        _checkEntryAge(plan.aeaTerms.firstWhere((t) => t.years == term).entryAge, p.entryAge, v);
      }
    case PlanType.jointEa:
      final joint = plan.jointLife!;
      _checkEntryAge(joint.entryAgeEachSpouse, p.entryAge, v);
      final spouse = p.spouseAge;
      if (spouse == null) {
        v.add(const MissingInput('spouseAge'));
      } else if (!joint.entryAgeEachSpouse.contains(spouse)) {
        v.add(SpouseAgeOutOfRange(spouse, joint.entryAgeEachSpouse));
      }
      final term = p.termYears;
      if (term == null) {
        v.add(const MissingInput('termYears'));
      } else if (!joint.termYears.contains(term)) {
        v.add(TermOutOfRange(term, joint.termYears));
      }
    case PlanType.childEa:
      _checkEntryAge(child!.childAge, p.entryAge, v);
      final parentAge = p.parentAge;
      if (parentAge == null) {
        v.add(const MissingInput('parentAge'));
      } else if (parentAge > child.parentMaxAge) {
        v.add(ParentAgeTooHigh(parentAge, child.parentMaxAge));
      }
      if (p.existingChildPolicies >= child.maxChildren) {
        v.add(TooManyChildPolicies(p.existingChildPolicies, child.maxChildren));
      }
  }
  return v;
}

void _checkEntryAge(AgeRange allowed, int age, List<Violation> v) {
  if (!allowed.contains(age)) v.add(EntryAgeOutOfRange(age, allowed));
}

void _checkAgeOption(ColumnDimension dim, int? value, List<int> allowed, int entryAge, List<Violation> v) {
  if (value == null) {
    v.add(MissingInput(dim == ColumnDimension.maturityAge ? 'maturityAge' : 'premiumCeasingAge'));
  } else if (!allowed.contains(value)) {
    v.add(OptionNotOffered(dim, value, allowed));
  } else if (value <= entryAge) {
    v.add(OptionNotAfterEntryAge(dim, value, entryAge));
  }
}
