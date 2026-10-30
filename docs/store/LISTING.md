# Google Play listing: Premium & Maturity Calculator

Copy each block into Play Console. Limits are Google's.

## App details
- **App name** (30 max): `Premium & Maturity Calculator`
  (No "PLI", "RPLI", "India Post" or other government names in the title or
  icon: Play's Impersonation policy rejected the first name.)
- **Short description** (80 max):
  `Independent premium & maturity calculator for PLI/RPLI policies. Works offline.`
- **Category:** Finance
- **Tags:** Insurance, Calculator
- **Contact email:** maheshraikg@gmail.com (same as in the app: About > Help & feedback)
- **Privacy policy URL:** https://docs.google.com/document/d/1A5KCfdmnyab3Ij1bovFwLTKjCVFflEIYN71A84R-4zc/view
  (the Google Doc must be shared as "Anyone with the link: Viewer"; the same link is in the app's About screen)

## Full description (4000 max)
```
Premium & Maturity Calculator is an independent app that helps Postal Life Insurance (PLI) and Rural Postal Life Insurance (RPLI) agents and policy holders work out premiums, bonus and maturity value in seconds, even without internet.

⚠️ Independent app: This app is NOT an official app of India Post, the Department of Posts or the Government of India, and is not affiliated with them. Figures are estimates; the final amounts are as per India Post. Official information: https://pli.indiapost.gov.in and https://www.indiapost.gov.in

CALCULATORS
• Premium for every plan, age and sum assured: monthly, quarterly, half-yearly and yearly side by side
• Bonus and maturity value: Sum assured + Bonus = Maturity, with money-back (survival) payment dates
• Compare plans side by side
• "What can I afford?": best cover for a monthly budget
• Eligibility checker: who can buy PLI or RPLI

POLICY SERVICING
• My Policies: save customers' policies with due dates and reminders; search and sort
• Dues: premiums due this month, mark as collected, remind customers on WhatsApp
• Policy tools: loan, revival, paid-up value
• Quotation: share a professional PDF or image quotation on WhatsApp, with your name, photo and phone
• Forms & letters: document checklists, request letters, and official claim forms (maturity/survival, death, loan, assignment, surrender) taken from Department of Posts SOPs, with their source

OFFICIAL LINKS
• PLI Customer Portal, official forms page, India Post, DigiLocker, CPGRAMS grievance portal and the India Post toll-free number, all in one place

BUILT FOR THE FIELD
• Works fully offline; no account, no ads
• 13 languages: English, ಕನ್ನಡ, हिन्दी, தமிழ், తెలుగు, മലയാളം, मराठी, ગુજરાતી, বাংলা, ਪੰਜਾਬੀ, ଓଡ଼ିଆ, অসমীয়া, اردو
• Large text and dark mode supported
• Backup and restore your saved policies

PRIVACY
The app collects no data. Everything you enter stays on your phone.

SUPPORT
Found a problem or a wrong figure? Use Help & feedback in the app or write to maheshraikg@gmail.com.

DATA SOURCES
Premium rates, bonus rates and rules are taken from India Post / Department of Posts publications. Each screen shows the rate year and source. Bonus rates are declared every year and are not guaranteed for the future.
```

## Graphics (in this folder)
- App icon 512×512: `icon_512.png`
- Feature graphic 1024×500: `feature_graphic.png`
- Phone screenshots 1080×1920 (2–8 needed): `screenshots/01_home.png` … `08_official_links.png`
  (`09_kannada.png` is optional).

---

## App content (Policy > App content)

**Privacy policy:** the public URL (see below).

**Ads:** No, my app does not contain ads.

**App access:** All functionality is available without special access.

**Target audience and content:** Age 18 and over only. Not designed for children.

**Content rating (IARC questionnaire):** Category "Reference, News, or
Educational" (or "All other app types"). Answer **No** to violence, sexuality,
language, controlled substances, gambling, user-generated content sharing,
location sharing, and digital purchases. Expected rating: Everyone / 3+.

**Data safety:**
- Does your app collect or share any of the required user data types? **No**.
  (All data stays on the device; Google's definition of "collect" means sent off the device.)
- Is all of the user data collected by your app encrypted in transit? Not applicable (nothing is transmitted).
- Do you provide a way for users to request that their data is deleted? Data is only on the device; uninstalling deletes it.

**Government apps:** "Is your app a government app?" **No.** The listing and the app
state that it is independent and not affiliated with India Post (Play's
Misrepresentation policy for apps that show government information). Sources are
linked in the app (Official links screen; "Official source of this form").

**Financial features:** Select **"My app doesn't provide any financial features"**
if offered, or, where Play asks about insurance, describe it as:
"Information-only calculator for India Post PLI/RPLI premiums and maturity. The app
does not sell, broker or service insurance, does not take payments and does not
collect personal or financial data."

**Health / news / COVID / VPN declarations:** Not applicable.

**Permissions declaration:** None restricted (only notifications, vibrate, boot-completed;
no exact alarms, no internet, no SMS/call log, no location).

---

## Before the first upload
1. ✅ Premium tables are from the Department of Posts booklet (no sample data). Check them against your current rate book.
2. Upload key in GitHub secrets (see docs/RELEASE.md).
3. A public privacy policy URL.
4. New personal developer accounts: a **closed test with at least 12 testers for
   14 days** is required before Production access.

## Privacy policy link
Play needs a public web page. Easiest: create a Google Doc with the text of
`docs/PRIVACY_POLICY.md`, then Share > General access > "Anyone with the link"
> Viewer, and paste that link in Play Console.
