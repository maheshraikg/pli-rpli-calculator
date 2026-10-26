"""English strings for form download links. Run directly to add to app_en.arb."""
S = 'String'
STRINGS = [
 ('openFormLink', 'Download form', None),
 ('shareFormLink', 'Share form link', None),
 ('formLinkMessage', '{service} form (India Post): {url}', {'service': S, 'url': S}),
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
