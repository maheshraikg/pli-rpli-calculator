"""English strings for links to India Post's PLI and RPLI pages, which open
from outside India (Play review). Replaces the customer-portal links.
Run directly to add them to lib/l10n/app_en.arb."""
STRINGS = [
 ('linkPliPageTitle', 'India Post: Postal Life Insurance', None),
 ('linkPliPageDesc', 'Plans, premium tables, customer guide, pay premium online', None),
 ('linkRpliPageTitle', 'India Post: Rural Postal Life Insurance', None),
 ('linkRpliPageDesc', 'Plans, premium tables and customer guide', None),
 ('payOnlineSteps', "1. Open India Post's Postal Life Insurance page and choose Pay Premium Online.\n2. Log in with your Customer ID. First time: register; you can get the Customer ID on your registered mobile.\n3. Pay by UPI, net banking or debit card.\n4. Download the receipt. Annual premium receipts help with income tax.", None),
]

if __name__ == '__main__':
    import json
    from pathlib import Path
    path = Path(__file__).resolve().parents[2] / 'lib/l10n/app_en.arb'
    arb = json.loads(path.read_text(encoding='utf-8'))
    for k, v, ph in STRINGS:
        arb[k] = v
    path.write_text(json.dumps(arb, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(f'added {len(STRINGS)} strings')
