import 'package:pli_engine/pli_engine.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {
  final rules = bundledRules;
  List<Violation> check(Proposal p) => checkProposal(rules, p);

  test('valid Santosh proposal passes', () {
    expect(check(const Proposal(planId: 'pli_santosh', entryAge: 30, sumAssured: 100000, maturityAge: 50)), isEmpty);
  });

  test('Gram Priya entry age 47 is rejected with the allowed range', () {
    final v = check(const Proposal(planId: 'rpli_gram_priya', entryAge: 47, sumAssured: 100000, termYears: 10));
    expect(v.single, isA<EntryAgeOutOfRange>());
    final e = v.single as EntryAgeOutOfRange;
    expect((e.age, e.allowed.min, e.allowed.max), (47, 20, 45));
  });

  test('PLI minimum SA', () {
    expect(check(const Proposal(planId: 'pli_santosh', entryAge: 30, sumAssured: 15000, maturityAge: 50)).single,
        isA<SumAssuredBelowMin>());
  });

  test('PLI aggregate maximum counts existing policies', () {
    expect(
        check(const Proposal(
                planId: 'pli_santosh', entryAge: 30, sumAssured: 1000000, maturityAge: 50, existingSumAssuredSameScheme: 4500000))
            .single,
        isA<SumAssuredAboveMax>());
    expect(
        check(const Proposal(
            planId: 'pli_santosh', entryAge: 30, sumAssured: 500000, maturityAge: 50, existingSumAssuredSameScheme: 4500000)),
        isEmpty);
  });

  test('RPLI maximum ₹10 lakh', () {
    expect(check(const Proposal(planId: 'rpli_gram_santosh', entryAge: 30, sumAssured: 1000001, maturityAge: 50)).single,
        isA<SumAssuredAboveMax>());
  });

  test('maturity age must be offered and after entry age', () {
    expect(check(const Proposal(planId: 'pli_santosh', entryAge: 30, sumAssured: 100000, maturityAge: 52)).single,
        isA<OptionNotOffered>());
    expect(check(const Proposal(planId: 'pli_santosh', entryAge: 40, sumAssured: 100000, maturityAge: 35)).single,
        isA<OptionNotAfterEntryAge>());
    expect(check(const Proposal(planId: 'pli_santosh', entryAge: 40, sumAssured: 100000)).single, isA<MissingInput>());
  });

  test('Sumangal entry age depends on term', () {
    expect(check(const Proposal(planId: 'pli_sumangal', entryAge: 42, sumAssured: 100000, termYears: 15)), isEmpty);
    expect(check(const Proposal(planId: 'pli_sumangal', entryAge: 42, sumAssured: 100000, termYears: 20)).single,
        isA<EntryAgeOutOfRange>());
  });

  test('Suraksha premium ceasing age', () {
    expect(check(const Proposal(planId: 'pli_suraksha', entryAge: 30, sumAssured: 100000, premiumCeasingAge: 58)), isEmpty);
    expect(check(const Proposal(planId: 'pli_suraksha', entryAge: 30, sumAssured: 100000, premiumCeasingAge: 57)).single,
        isA<OptionNotOffered>());
  });

  test('Yugal Suraksha checks both spouses and term', () {
    expect(check(const Proposal(planId: 'pli_yugal_suraksha', entryAge: 30, spouseAge: 28, sumAssured: 100000, termYears: 15)),
        isEmpty);
    final v = check(const Proposal(planId: 'pli_yugal_suraksha', entryAge: 30, spouseAge: 47, sumAssured: 100000, termYears: 25));
    expect(v.map((e) => e.runtimeType), [SpouseAgeOutOfRange, TermOutOfRange]);
  });

  group('Bal Jeevan Bima', () {
    test('valid', () {
      expect(
          check(const Proposal(
              planId: 'pli_bal_jeevan_bima', entryAge: 8, sumAssured: 200000, parentAge: 40, parentSumAssured: 500000)),
          isEmpty);
    });
    test('capped at parent SA when lower than plan max', () {
      final v = check(const Proposal(
          planId: 'pli_bal_jeevan_bima', entryAge: 8, sumAssured: 250000, parentAge: 40, parentSumAssured: 200000));
      expect((v.single as ChildSumAssuredAboveCap).cap, 200000);
    });
    test('RPLI cap ₹1 lakh', () {
      final v = check(const Proposal(
          planId: 'rpli_bal_jeevan_bima', entryAge: 8, sumAssured: 150000, parentAge: 40, parentSumAssured: 500000));
      expect((v.single as ChildSumAssuredAboveCap).cap, 100000);
    });
    test('child age, parent age and child count', () {
      final v = check(const Proposal(
          planId: 'pli_bal_jeevan_bima',
          entryAge: 21,
          sumAssured: 100000,
          parentAge: 46,
          parentSumAssured: 500000,
          existingChildPolicies: 2));
      expect(v.map((e) => e.runtimeType), [EntryAgeOutOfRange, ParentAgeTooHigh, TooManyChildPolicies]);
    });
  });
}
