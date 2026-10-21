# PLI RPLI Calculator

Offline PLI & RPLI premium / maturity calculator (Flutter, Android).
Independent calculator — not an official India Post app.

## Features
- Premium calculator (all 4 frequencies, SA rebate, total premium, maturity, XIRR return,
  year-wise illustration, paid-vs-benefit chart), age from date of birth
- Maturity & bonus projection, survival-benefit timeline (Sumangal / Gram Priya)
- "What can I afford?" reverse calculator; compare up to 3 plans
- Eligibility checker; plan information cards and FAQs
- Policy tools: loan interest, paid-up value, revival (arrears + default fee), advance rebate
- My Policies (stored on the phone): accrued bonus, due dates, local reminders
- Bilingual quotation shared as PDF or image (WhatsApp etc.)
- 13 languages; optional verified over-the-air rate updates

See `docs/RELEASE.md` before publishing and `docs/PRIVACY_POLICY.md` for the store listing.

## Layout

```
lib/                     Flutter app (core/, data/, domain/, features/, l10n/)
packages/pli_engine/     Pure-Dart engine: models, JSON loaders, validator, calculators
assets/data/             rules_FY2026-27.json + tables/<tableId>.json (versioned data)
source_tables/           Official PDFs / transcribed CSVs (input to tools/)
tools/                   Table converter, PDF table dumper, sample-table generator
```

## Languages

13 languages: English, Hindi, Kannada, Tamil, Telugu, Malayalam, Marathi, Gujarati,
Bengali, Punjabi, Odia, Assamese, Urdu (RTL). UI strings live in `lib/l10n/app_<lang>.arb`
(regenerate non-English files from `tools/l10n/tr_*.py`, which check every key and
placeholder against `app_en.arb`). Plan names live in the rules JSON
(`tools/l10n/plan_names.py`). All translations other than English need review by a
native speaker before release.

## Data pipeline

1. Put the official PDF in `source_tables/`. Optional first pass:
   `python3 -I tools/extract_pdf_tables.py source_tables/x.pdf /tmp/raw` (needs `pdfplumber`).
2. Prepare `source_tables/<tableId>.csv` (`frequency,entry_age,<col>,...`; blank or `-` = not offered)
   and `<tableId>.meta.json` (`planId`, `columnDimension`, `unitSumAssured`, `source`).
3. `python3 -I tools/convert_tables.py source_tables assets/data/tables`
4. `cd packages/pli_engine && dart run bin/validate_data.dart ../../assets/data`

Until official tables are added, `tools/generate_sample_tables.py` produces synthetic
tables flagged `"isSample": true`; the app then shows a red "SAMPLE DATA – NOT OFFICIAL" banner.

Any rules entry with `"verified": false` or a `PENDING_USER_INPUT` value must be confirmed
before release.

## Checks

```
flutter analyze && flutter test
cd packages/pli_engine && dart analyze && dart test
```
