import 'package:pli_engine/pli_engine.dart';

import '../l10n/app_localizations.dart';
import 'formatters.dart';

String _rs(int rupees) => formatRupees(Paise.wholeRupees(rupees));

String schemeName(AppLocalizations l, Scheme s) => switch (s) {
      Scheme.pli => l.schemePli,
      Scheme.rpli => l.schemeRpli,
    };

/// Plain-language message for a rule violation.
String violationMessage(AppLocalizations l, Violation v, PlanRule plan, String languageCode) => switch (v) {
      EntryAgeOutOfRange(:final age, :final allowed) => plan.type == PlanType.childEa
          ? l.vChildAge(allowed.min, allowed.max, age)
          : l.vEntryAge(plan.name(languageCode), allowed.min, allowed.max, age),
      SpouseAgeOutOfRange(:final age, :final allowed) => l.vSpouseAge(allowed.min, allowed.max, age),
      SumAssuredBelowMin(:final sumAssured, :final min) => l.vSaMin(_rs(min), _rs(sumAssured)),
      SumAssuredAboveMax(:final sumAssured, :final existing, :final max) => l.vSaMax(_rs(max), _rs(sumAssured + existing)),
      SumAssuredNotMultiple(:final multipleOf) => l.vSaMultiple(_rs(multipleOf)),
      MissingInput() => l.vMissing,
      OptionNotOffered(:final dimension, :final value, :final allowed) => switch (dimension) {
          ColumnDimension.maturityAge => l.vMaturityNotOffered(value, allowed.join(', ')),
          ColumnDimension.premiumCeasingAge => l.vCeasingNotOffered(value, allowed.join(', ')),
          ColumnDimension.termYears => l.vTermNotOffered(value, allowed.join(', ')),
        },
      OptionNotAfterEntryAge(:final value, :final entryAge) => l.vNotAfterEntry(value, entryAge),
      TermOutOfRange(:final termYears, :final allowed) => l.vTermRange(allowed.min, allowed.max, termYears),
      ParentAgeTooHigh(:final parentAge, :final max) => l.vParentAge(max, parentAge),
      TooManyChildPolicies(:final max) => l.vTooManyChildren(max),
      ChildSumAssuredAboveCap(:final sumAssured, :final cap) => l.vChildSaCap(_rs(cap), _rs(sumAssured)),
    };

String groupLabel(AppLocalizations l, String id) => switch (id) {
      'central_state_govt' => l.group_central_state_govt,
      'defence_paramilitary' => l.group_defence_paramilitary,
      'psu' => l.group_psu,
      'banks' => l.group_banks,
      'local_bodies' => l.group_local_bodies,
      'educational_institutions' => l.group_educational_institutions,
      'listed_companies' => l.group_listed_companies,
      'professionals' => l.group_professionals,
      'graduates_diploma_holders' => l.group_graduates_diploma_holders,
      'rural_resident' => l.group_rural_resident,
      'scheduled_bank_savings_account_holder' => l.group_scheduled_bank_savings_account_holder,
      _ => id,
    };
