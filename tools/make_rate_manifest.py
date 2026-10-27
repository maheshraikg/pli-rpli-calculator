#!/usr/bin/env python3
"""Build manifest.json for an over-the-air rate update.

Usage: python3 -I tools/make_rate_manifest.py assets/data <version> > manifest.json
Publish manifest.json next to the rules file and tables/ directory (https only).
The app verifies every checksum and validates every table before switching.
"""
import hashlib
import json
import sys
from pathlib import Path

root, version = Path(sys.argv[1]), int(sys.argv[2])
rules = [p for p in root.glob('rules_*.json')]
if len(rules) != 1:
    sys.exit('expected exactly one rules_*.json')
files = [rules[0]] + sorted((root / 'tables').glob('*.json'))
print(json.dumps({
    'schemaVersion': 1,
    'version': version,
    'rules': rules[0].name,
    'files': [{'path': str(p.relative_to(root)), 'sha256': hashlib.sha256(p.read_bytes()).hexdigest()} for p in files],
}, indent=1))
