#!/usr/bin/env python3
"""Refuse a Play Store release while the app still has sample or unverified
data. Run from the repo root: python3 -I tools/check_release_ready.py

Exit code 1 lists every blocker; warnings are printed but do not block.
"""
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
blockers, warnings = [], []

rules_files = sorted((ROOT / 'assets/data').glob('rules_FY*.json'))
for rf in rules_files:
    rules = json.loads(rf.read_text(encoding='utf-8'))
    for plan in rules['plans']:
        tid = plan.get('premiumTableId')
        if not tid:
            continue
        table = json.loads((ROOT / f'assets/data/tables/{tid}.json').read_text(encoding='utf-8'))
        if table.get('isSample'):
            blockers.append(f'premium table {tid} ({plan["id"]}) is SAMPLE data, not the official table')
    if rules.get('provisional'):
        warnings.append(f'{rf.name}: {len(rules["provisional"])} provisional rule(s) not yet confirmed')
    unverified = [p['id'] for p in rules['plans'] if not p.get('verified')]
    if unverified:
        warnings.append(f'{rf.name}: plans not marked verified: {", ".join(unverified)}')

forms = json.loads((ROOT / 'assets/data/forms.json').read_text(encoding='utf-8'))
if not forms.get('verified'):
    warnings.append('forms.json document checklists are not marked verified')

policy = (ROOT / 'docs/PRIVACY_POLICY.md').read_text(encoding='utf-8')
if '<your' in policy:
    blockers.append('docs/PRIVACY_POLICY.md still has a placeholder')

for w in warnings:
    print(f'WARNING: {w}')
for b in blockers:
    print(f'BLOCKER: {b}')
if blockers:
    print(f'\nNot ready for Play: {len(blockers)} blocker(s).')
    sys.exit(1)
print('Ready for a Play release.')
