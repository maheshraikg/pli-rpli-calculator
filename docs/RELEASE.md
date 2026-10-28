# Release guide

## Before every release
1. Replace SAMPLE premium tables with official ones (see README → Data pipeline).
   The app shows "SAMPLE DATA – NOT OFFICIAL" while any table has `"isSample": true`.
2. Confirm or correct every rule listed under `"provisional"` and every
   `"verified": false` entry in `assets/data/rules_FY2026-27.json`.
3. Add earlier years' bonus rates under `bonusRatesPer1000` (needed for
   existing-policy bonus in My Policies).
4. Add 5–10 official worked examples as engine tests.
5. Native-speaker review of every `lib/l10n/app_*.arb`.
5a. Confirm each document checklist in `assets/data/forms.json` (then set `"verified": true`),
    and add unmodified official form PDFs to `assets/forms/` with their `pdfAsset` paths.
6. Run the checks:
   ```
   flutter analyze && flutter test
   cd packages/pli_engine && dart analyze && dart test && dart run bin/validate_data.dart ../../assets/data
   ```

## Package id
`com.plirpli.calculator`. Google Play never allows this to change
after the first upload.

## Version code
CI passes `--build-number=<GitHub run number>`, so every build has a higher
versionCode than the last (Play rejects a reused one). Bump `version:` in
pubspec.yaml (the part before `+`) for each public release.

## Signing
Create an upload key once and keep it safe (losing it blocks future updates):
```
keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```
Then create `android/key.properties` (git-ignored):
```
storeFile=/home/you/upload-keystore.jks
storePassword=…
keyAlias=upload
keyPassword=…
```
Without it, release builds are debug-signed (fine for testing, not for Play).

## Build
```
flutter build appbundle --release            # Play Store (.aab)
flutter build apk --release --split-per-abi  # side-loading / testing
```
R8 minification and resource shrinking are on. Store icon: `docs/store/icon_512.png`.

## Optional over-the-air rate updates
1. Host `assets/data` (rules + tables/) on HTTPS.
2. `python3 -I tools/make_rate_manifest.py assets/data <version> > manifest.json` and host it alongside.
3. Build with `--dart-define=RATE_MANIFEST_URL=https://…/manifest.json` and add
   `<uses-permission android:name="android.permission.INTERNET"/>` to the main manifest.
The app verifies every SHA-256, validates every table and keeps the bundled
data if anything fails.

## Play Console
- Privacy policy: publish `docs/PRIVACY_POLICY.md` at a public URL.
- Data safety: no data collected or shared.
- Do not use the India Post logo or name as branding; the listing must say it
  is an independent calculator.

## Play Store release
1. Make sure `python3 -I tools/check_release_ready.py` passes (it refuses
   while any premium table is sample data).
2. GitHub > Actions > **Play Store release** > Run workflow.
3. Download the `.aab` from the draft release it creates and upload it in
   Play Console (closed testing first, then Production).
The listing text, data-safety answers and declarations are in `docs/store/`.
