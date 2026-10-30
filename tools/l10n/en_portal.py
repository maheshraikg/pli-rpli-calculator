"""English strings taken from the Dak Bima Sewa Portal (new official PLI
customer portal): links, online payment, service standards, official
document checklists, revival and plan rules.
Run directly to add them to lib/l10n/app_en.arb."""
I = 'int'
STRINGS = [
 ('linkSewaTitle', 'Dak Bima Sewa Portal', None),
 ('linkSewaDesc', 'New official PLI portal: log in, pay premium, statements', None),
 ('linkRegisterTitle', 'Register or get Customer ID', None),
 ('linkRegisterDesc', 'First-time login for policy holders', None),
 ('linkGuidelinesTitle', 'Guidelines for customers', None),
 ('linkGuidelinesDesc', 'Official steps for claims, loans and revival', None),
 ('payOnlineTitle', 'Pay premium online', None),
 ('payOnlineSteps', "1. On the Dak Bima Sewa Portal, register with your Customer ID (tap Get Customer ID to receive it on your registered mobile).\n2. Log in and choose the policy.\n3. Pay by UPI, net banking or debit card.\n4. Download the receipt. Annual premium receipts help with income tax.", None),
 ('payOnlineButton', 'Open the portal', None),
 ('surrenderBonusInfo', 'Surrendered before 5 years: no bonus', None),
 ('wlaConversionInfo', 'Can be converted to Endowment Assurance up to age {age}', {'age': I}),
 ('serviceStandardTitle', 'India Post service standard', None),
 ('serviceStandardDays', 'Settled within {days} days of complete documents', {'days': I}),
 ('serviceStandardDeath', 'Settled within {days} days; {investigationDays} days if investigation is needed', {'days': I, 'investigationDays': I}),
 ('serviceStandardBond', 'Acceptance letter and policy bond within {days} days of complete documents', {'days': I}),
 ('tipAckSlip', 'Ask for a signed acknowledgement slip when you submit, and reply quickly if the CPC asks for more documents.', None),
 ('tipMessenger', "If the insurant can't visit (medically unfit or abroad), a messenger can submit with their own ID and address proof, plus the insurant's medical certificate or passport copy.", None),
 ('tipDeath', 'Death claims can be submitted at any Post Office. Some cases are investigated; please co-operate.', None),
 ('checklistOfficialNote', "Checklist from India Post's Guidelines for Customers.", None),
 ('doc_loanReceipt', 'Loan repayment receipt book (if a loan was taken)', None),
 ('doc_postMortem', 'Post-mortem report and FIR (unnatural death)', None),
 ('doc_succession', 'Succession certificate or probate (if no nomination)', None),
 ('doc_claimantAddress', "Claimant's address proof", None),
 ('doc_ddoCertificate', "DDO's certificate of premium recovery for the last 6 months (pay policies)", None),
 ('doc_policyBondCopy', 'Self-attested copy of the policy bond', None),
 ('revivalRulesInfo', 'A policy lapses if premiums are unpaid for 6 months (first 3 years) or 12 months (after 3 years). It can be revived within 5 years of the first unpaid premium, with interest at 12% a year and a good health certificate; arrears can be paid in up to 12 instalments.', None),
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
