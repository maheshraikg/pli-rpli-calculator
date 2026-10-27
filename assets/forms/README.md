Official India Post PLI/RPLI forms
==================================

Use only unmodified forms downloaded from India Post
(pli.indiapost.gov.in / indiapost.gov.in). Never retype or edit a form.

Two ways to make a form available in the app (per service in
assets/data/forms.json). Both can be set for the same service.

1. Bundled PDF (works offline, shared as a file on WhatsApp)
   - Put the PDF here, e.g. assets/forms/maturity.pdf
   - Set "pdfAsset": "assets/forms/maturity.pdf"

2. Download link (e.g. Google Drive)
   - Upload the PDF to Drive, Share > General access > "Anyone with the link"
   - Set "formUrl": "https://drive.google.com/file/d/<id>/view"
   - The app shows "Download form" and "Share form link".

Bundled forms and their official source
---------------------------------------
Pages taken unchanged from Department of Posts (PLI Directorate) SOPs on
utilities.cept.gov.in:

- maturity_survival.pdf: Annex-II "Claim form for Maturity/Survival
  Benefit", SOP No. 25-04/SOP/2020-LI dated 21.09.2020, pages 11-13.
  https://utilities.cept.gov.in/pli/ExcelReports/SOP/SOP%20for%20handling%20matuirty%20cases%20with%20covering%20letter.pdf
- death.pdf: Annex-I "Claim Application Form for PLI/RPLI (Death Cases)",
  SOP No. 25-04/SOP/2020-LI dated 18.08.2020, pages 10-13.
  https://utilities.cept.gov.in/dop/pdfbind.ashx?id=4708
- loan.pdf: Annex-II "Application for Loan on Security of PLI/RPLI Policy",
  SOP No. 25-04/SOP/2020-LI dated 07.10.2020, pages 11-13.
- assignment.pdf: Annex-III "Application for Assignment or Re-assignment",
  same Loan SOP, page 14.
  https://utilities.cept.gov.in/pli/ExcelReports/SOP/SOP%20for%20handling%20Loan%20Cases%20with%20covering%20letter.pdf
- surrender.pdf: Annexure-I "Claim Form for Surrender of PLI/RPLI Policy",
  Surrender SOP (2023), pages 8-11.
  https://utilities.cept.gov.in/dop/pdfbind.ashx?id=9024

Not yet bundled (portal pli.indiapost.gov.in not reachable from the build
environment): proposal forms, nomination, revival, address change,
duplicate policy, conversion.
