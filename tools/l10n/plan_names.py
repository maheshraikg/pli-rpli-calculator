#!/usr/bin/env python3
"""Fill plan names for every app language into the rules JSON.
English and Kannada names already in the file are kept as written.
Usage: python3 -I tools/l10n/plan_names.py assets/data/rules_FY2026-27.json
"""
import json
import sys
from pathlib import Path

# brand words, then plan-type descriptors
L = {
 'hi': (dict(Suraksha='सुरक्षा', Santosh='संतोष', Suvidha='सुविधा', Sumangal='सुमंगल', Yugal='युगल सुरक्षा', BJB='बाल जीवन बीमा', Gram='ग्राम', Priya='प्रिया'),
        dict(WLA='संपूर्ण जीवन बीमा', EA='बंदोबस्ती बीमा', CWLA='परिवर्तनीय संपूर्ण जीवन बीमा', AEA='प्रत्याशित बंदोबस्ती बीमा', JOINT='संयुक्त जीवन बंदोबस्ती बीमा', CHILD='बच्चों की पॉलिसी', AEA10='10 वर्षीय प्रत्याशित बंदोबस्ती बीमा')),
 'mr': (dict(Suraksha='सुरक्षा', Santosh='संतोष', Suvidha='सुविधा', Sumangal='सुमंगल', Yugal='युगल सुरक्षा', BJB='बाल जीवन विमा', Gram='ग्राम', Priya='प्रिया'),
        dict(WLA='आजीवन विमा', EA='एंडोमेंट विमा', CWLA='परिवर्तनीय आजीवन विमा', AEA='अग्रिम एंडोमेंट विमा', JOINT='संयुक्त जीवन एंडोमेंट विमा', CHILD='मुलांची पॉलिसी', AEA10='10 वर्षांचा अग्रिम एंडोमेंट विमा')),
 'gu': (dict(Suraksha='સુરક્ષા', Santosh='સંતોષ', Suvidha='સુવિધા', Sumangal='સુમંગલ', Yugal='યુગલ સુરક્ષા', BJB='બાલ જીવન બીમા', Gram='ગ્રામ', Priya='પ્રિયા'),
        dict(WLA='આજીવન વીમો', EA='એન્ડોમેન્ટ વીમો', CWLA='પરિવર્તનીય આજીવન વીમો', AEA='અગ્રિમ એન્ડોમેન્ટ વીમો', JOINT='સંયુક્ત જીવન એન્ડોમેન્ટ વીમો', CHILD='બાળકોની પૉલિસી', AEA10='10 વર્ષનો અગ્રિમ એન્ડોમેન્ટ વીમો')),
 'pa': (dict(Suraksha='ਸੁਰੱਖਿਆ', Santosh='ਸੰਤੋਸ਼', Suvidha='ਸੁਵਿਧਾ', Sumangal='ਸੁਮੰਗਲ', Yugal='ਯੁਗਲ ਸੁਰੱਖਿਆ', BJB='ਬਾਲ ਜੀਵਨ ਬੀਮਾ', Gram='ਗ੍ਰਾਮ', Priya='ਪ੍ਰਿਆ'),
        dict(WLA='ਸੰਪੂਰਨ ਜੀਵਨ ਬੀਮਾ', EA='ਐਂਡੋਮੈਂਟ ਬੀਮਾ', CWLA='ਬਦਲਣਯੋਗ ਸੰਪੂਰਨ ਜੀਵਨ ਬੀਮਾ', AEA='ਅਗਾਊਂ ਐਂਡੋਮੈਂਟ ਬੀਮਾ', JOINT='ਸਾਂਝਾ ਜੀਵਨ ਐਂਡੋਮੈਂਟ ਬੀਮਾ', CHILD='ਬੱਚਿਆਂ ਦੀ ਪਾਲਿਸੀ', AEA10='10 ਸਾਲਾ ਅਗਾਊਂ ਐਂਡੋਮੈਂਟ ਬੀਮਾ')),
 'bn': (dict(Suraksha='সুরক্ষা', Santosh='সন্তোষ', Suvidha='সুবিধা', Sumangal='সুমঙ্গল', Yugal='যুগল সুরক্ষা', BJB='বাল জীবন বিমা', Gram='গ্রাম', Priya='প্রিয়া'),
        dict(WLA='আজীবন বিমা', EA='এনডাওমেন্ট বিমা', CWLA='রূপান্তরযোগ্য আজীবন বিমা', AEA='অগ্রিম এনডাওমেন্ট বিমা', JOINT='যৌথ জীবন এনডাওমেন্ট বিমা', CHILD='শিশুদের পলিসি', AEA10='10 বছরের অগ্রিম এনডাওমেন্ট বিমা')),
 'as': (dict(Suraksha='সুৰক্ষা', Santosh='সন্তোষ', Suvidha='সুবিধা', Sumangal='সুমংগল', Yugal='যুগল সুৰক্ষা', BJB='বাল জীৱন বীমা', Gram='গ্ৰাম', Priya='প্ৰিয়া'),
        dict(WLA='আজীৱন বীমা', EA='এনডাউমেণ্ট বীমা', CWLA='ৰূপান্তৰযোগ্য আজীৱন বীমা', AEA='অগ্ৰিম এনডাউমেণ্ট বীমা', JOINT='যুটীয়া জীৱন এনডাউমেণ্ট বীমা', CHILD='শিশুৰ পলিচি', AEA10='10 বছৰীয়া অগ্ৰিম এনডাউমেণ্ট বীমা')),
 'or': (dict(Suraksha='ସୁରକ୍ଷା', Santosh='ସନ୍ତୋଷ', Suvidha='ସୁବିଧା', Sumangal='ସୁମଙ୍ଗଳ', Yugal='ଯୁଗଳ ସୁରକ୍ଷା', BJB='ବାଳ ଜୀବନ ବୀମା', Gram='ଗ୍ରାମ', Priya='ପ୍ରିୟା'),
        dict(WLA='ଆଜୀବନ ବୀମା', EA='ଏଣ୍ଡୋମେଣ୍ଟ ବୀମା', CWLA='ପରିବର୍ତ୍ତନୀୟ ଆଜୀବନ ବୀମା', AEA='ଅଗ୍ରିମ ଏଣ୍ଡୋମେଣ୍ଟ ବୀମା', JOINT='ମିଳିତ ଜୀବନ ଏଣ୍ଡୋମେଣ୍ଟ ବୀମା', CHILD='ପିଲାଙ୍କ ପଲିସି', AEA10='10 ବର୍ଷର ଅଗ୍ରିମ ଏଣ୍ଡୋମେଣ୍ଟ ବୀମା')),
 'te': (dict(Suraksha='సురక్ష', Santosh='సంతోష్', Suvidha='సువిధ', Sumangal='సుమంగళ్', Yugal='యుగళ్ సురక్ష', BJB='బాల జీవన్ బీమా', Gram='గ్రామ', Priya='ప్రియ'),
        dict(WLA='జీవితకాల బీమా', EA='ఎండోమెంట్ బీమా', CWLA='మార్పిడి చేయదగిన జీవితకాల బీమా', AEA='ముందస్తు ఎండోమెంట్ బీమా', JOINT='ఉమ్మడి జీవిత ఎండోమెంట్ బీమా', CHILD='పిల్లల పాలసీ', AEA10='10 ఏళ్ల ముందస్తు ఎండోమెంట్ బీమా')),
 'ta': (dict(Suraksha='சுரக்ஷா', Santosh='சந்தோஷ்', Suvidha='சுவிதா', Sumangal='சுமங்கல்', Yugal='யுகல் சுரக்ஷா', BJB='பால் ஜீவன் பீமா', Gram='கிராம', Priya='பிரியா'),
        dict(WLA='முழு ஆயுள் காப்பீடு', EA='எண்டோமென்ட் காப்பீடு', CWLA='மாற்றக்கூடிய முழு ஆயுள் காப்பீடு', AEA='முன்கூட்டிய எண்டோமென்ட் காப்பீடு', JOINT='கூட்டு ஆயுள் எண்டோமென்ட் காப்பீடு', CHILD='குழந்தைகள் பாலிசி', AEA10='10 ஆண்டு முன்கூட்டிய எண்டோமென்ட் காப்பீடு')),
 'ml': (dict(Suraksha='സുരക്ഷ', Santosh='സന്തോഷ്', Suvidha='സുവിധ', Sumangal='സുമംഗൽ', Yugal='യുഗൾ സുരക്ഷ', BJB='ബാൽ ജീവൻ ബീമ', Gram='ഗ്രാം', Priya='പ്രിയ'),
        dict(WLA='ആജീവനാന്ത ഇൻഷുറൻസ്', EA='എൻഡോവ്മെന്റ് ഇൻഷുറൻസ്', CWLA='മാറ്റാവുന്ന ആജീവനാന്ത ഇൻഷുറൻസ്', AEA='മുൻകൂർ എൻഡോവ്മെന്റ് ഇൻഷുറൻസ്', JOINT='സംയുക്ത ജീവിത എൻഡോവ്മെന്റ് ഇൻഷുറൻസ്', CHILD='കുട്ടികളുടെ പോളിസി', AEA10='10 വർഷ മുൻകൂർ എൻഡോവ്മെന്റ് ഇൻഷുറൻസ്')),
 'ur': (dict(Suraksha='سرکشا', Santosh='سنتوش', Suvidha='سویدھا', Sumangal='سومنگل', Yugal='یُگل سرکشا', BJB='بال جیون بیمہ', Gram='گرام', Priya='پریا'),
        dict(WLA='تاحیات بیمہ', EA='اینڈوومنٹ بیمہ', CWLA='قابلِ تبدیل تاحیات بیمہ', AEA='پیشگی اینڈوومنٹ بیمہ', JOINT='مشترکہ زندگی اینڈوومنٹ بیمہ', CHILD='بچوں کی پالیسی', AEA10='10 سالہ پیشگی اینڈوومنٹ بیمہ')),
}


def names(b, d):
    g = lambda w: f"{b['Gram']} {w}"
    return {
        'pli_suraksha': f"{b['Suraksha']} ({d['WLA']})",
        'pli_santosh': f"{b['Santosh']} ({d['EA']})",
        'pli_suvidha': f"{b['Suvidha']} ({d['CWLA']})",
        'pli_sumangal': f"{b['Sumangal']} ({d['AEA']})",
        'pli_yugal_suraksha': f"{b['Yugal']} ({d['JOINT']})",
        'pli_bal_jeevan_bima': f"{b['BJB']} ({d['CHILD']})",
        'rpli_gram_suraksha': f"{g(b['Suraksha'])} ({d['WLA']})",
        'rpli_gram_santosh': f"{g(b['Santosh'])} ({d['EA']})",
        'rpli_gram_suvidha': f"{g(b['Suvidha'])} ({d['CWLA']})",
        'rpli_gram_sumangal': f"{g(b['Sumangal'])} ({d['AEA']})",
        'rpli_gram_priya': f"{g(b['Priya'])} ({d['AEA10']})",
        'rpli_bal_jeevan_bima': f"{b['BJB']} ({d['CHILD']} – RPLI)",
    }


def main(path):
    p = Path(path)
    rules = json.loads(p.read_text(encoding='utf-8'))
    per_lang = {lang: names(*v) for lang, v in L.items()}
    for plan in rules['plans']:
        for lang, table in per_lang.items():
            plan['names'][lang] = table[plan['id']]
    p.write_text(json.dumps(rules, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(f'updated {len(rules["plans"])} plans × {len(L)} languages')


if __name__ == '__main__':
    main(sys.argv[1])
