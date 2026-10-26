"""English strings for the Official links screen and form sources.
Run directly to add them to lib/l10n/app_en.arb."""
S = 'String'
STRINGS = [
 ('tileLinks', 'Official links', None),
 ('descLinks', 'Portal, forms, helpline', None),
 ('linksTitle', 'Official links & help', None),
 ('linkPortalTitle', 'PLI Customer Portal', None),
 ('linkPortalDesc', 'Pay premium online, policy status, receipts', None),
 ('linkFormsTitle', 'Official PLI/RPLI forms', None),
 ('linkFormsDesc', 'Download forms from India Post', None),
 ('linkIndiaPostTitle', 'India Post', None),
 ('linkIndiaPostDesc', 'Department of Posts website', None),
 ('linkHelplineTitle', 'India Post customer care', None),
 ('linkHelplineDesc', 'Toll-free {number}', {'number': S}),
 ('linkDigiLockerTitle', 'DigiLocker', None),
 ('linkDigiLockerDesc', 'Keep your e-policy bond safe', None),
 ('linkGrievanceTitle', 'Public grievance (CPGRAMS)', None),
 ('linkGrievanceDesc', 'Raise a complaint with the Government of India', None),
 ('linksNote', 'These open official Government of India websites. This app is independent and is not affiliated with India Post or the Department of Posts.', None),
 ('formSourceLabel', 'Official source of this form', None),
]

if __name__ == '__main__':
    import json
    from pathlib import Path
    path = Path(__file__).resolve().parents[2] / 'lib/l10n/app_en.arb'
    arb = json.loads(path.read_text(encoding='utf-8'))
    for k, v, ph in STRINGS:
        arb[k] = v
        if ph:
            arb['@' + k] = {'placeholders': {n: {'type': t} for n, t in ph.items()}}
    path.write_text(json.dumps(arb, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(f'added {len(STRINGS)} strings')
