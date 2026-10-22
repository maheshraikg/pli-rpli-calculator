#!/usr/bin/env python3
"""Write lib/l10n/app_<lang>.arb from a translation dict, checking that every
key and every {placeholder} of the English template is present.

Usage (from a translation module): write_arb.write('hi', {...})
"""
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
TEMPLATE = json.loads((ROOT / 'lib/l10n/app_en.arb').read_text(encoding='utf-8'))
KEYS = [k for k in TEMPLATE if not k.startswith('@')]
PH = re.compile(r'\{(\w+)\}')


def write(lang, strings):
    missing = [k for k in KEYS if k not in strings]
    extra = [k for k in strings if k not in KEYS]
    if missing or extra:
        raise SystemExit(f'{lang}: missing {missing}, extra {extra}')
    for k in KEYS:
        if set(PH.findall(TEMPLATE[k])) != set(PH.findall(strings[k])):
            raise SystemExit(f'{lang}: placeholder mismatch in {k}: {strings[k]!r}')
    out = {'@@locale': lang, **{k: strings[k] for k in KEYS}}
    path = ROOT / f'lib/l10n/app_{lang}.arb'
    path.write_text(json.dumps(out, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(f'wrote {path.relative_to(ROOT)} ({len(KEYS)} strings)')


def merge(lang, strings):
    """Add or replace [strings] in an existing app_<lang>.arb, checking each
    key exists in the English template with the same placeholders."""
    path = ROOT / f'lib/l10n/app_{lang}.arb'
    current = json.loads(path.read_text(encoding='utf-8'))
    for k, v in strings.items():
        if k not in TEMPLATE:
            raise SystemExit(f'{lang}: unknown key {k}')
        if set(PH.findall(TEMPLATE[k])) != set(PH.findall(v)):
            raise SystemExit(f'{lang}: placeholder mismatch in {k}: {v!r}')
        current[k] = v
    missing = [k for k in KEYS if k not in current]
    out = {'@@locale': lang, **{k: current[k] for k in KEYS if k in current}}
    path.write_text(json.dumps(out, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(f'merged {len(strings)} into {path.relative_to(ROOT)}; still missing {len(missing)}')
