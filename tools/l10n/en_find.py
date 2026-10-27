"""English strings for policy search/sort and collected dues.

Run directly to add them to lib/l10n/app_en.arb."""
S, I = 'String', 'int'
STRINGS = [
 ('searchPolicies', 'Search name, policy no. or mobile', None),
 ('sortLabel', 'Sort by', None),
 ('sortName', 'Name', None),
 ('sortNextDue', 'Next due', None),
 ('sortSumAssured', 'Sum assured', None),
 ('noSearchResults', 'No policies match “{query}”.', {'query': S}),
 ('filterAll', 'All', None),
 ('filterPending', 'Pending', None),
 ('filterCollected', 'Collected', None),
 ('markCollected', 'Mark as collected', None),
 ('markNotCollected', 'Mark as not collected', None),
 ('duesPendingTotal', 'Still to collect', None),
 ('duesCollectedOf', '{collected} of {total} collected', {'collected': I, 'total': I}),
 ('duesMonthTotal', 'Total for the month', None),
 ('collectedNote', "Collected marks are your own record. They do not check payment in India Post's system.", None),
 ('noDuesInFilter', 'Nothing in this list.', None),
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
    print(f'added {len(STRINGS)} strings to {path.name}')
