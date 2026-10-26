#!/usr/bin/env python3
"""Play Store graphics from the rendered screenshots (test_screenshots/out).

- docs/store/screenshots/NN_name.png: 1080x1920 (Play allows at most 2:1).
- docs/store/feature_graphic.png: 1024x500.

Usage: python3 -I tools/make_store_assets.py <Roboto-Black.ttf> <Roboto-Medium.ttf>
Render the screenshots first (see test_screenshots/screenshots_test.dart).
"""
import sys
from pathlib import Path

from PIL import Image, ImageDraw, ImageFont

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / 'test_screenshots/out'
OUT = ROOT / 'docs/store'
SHOTS = [
    ('01_home', '01b_home_full.png'),
    ('02_premium', '02_premium_full.png'),
    ('03_maturity', '03_maturity_sumangal_full.png'),
    ('04_quotation', '05_quotation_full.png'),
    ('05_compare', '04_compare_full.png'),
    ('06_dues', '18_dues_full.png'),
    ('07_forms', '24_form_maturity.png'),
    ('08_official_links', '23_links.png'),
    ('09_kannada', '09_home_kannada.png'),
]
RED, MAROON, WHITE = (200, 16, 46), (120, 8, 28), (255, 255, 255)


def screenshots():
    (OUT / 'screenshots').mkdir(parents=True, exist_ok=True)
    for name, src in SHOTS:
        im = Image.open(SRC / src).convert('RGB')
        im.crop((0, 0, 1080, min(1920, im.height))).save(OUT / 'screenshots' / f'{name}.png', optimize=True)


def feature_graphic(black, medium):
    w, h = 1024, 500
    img = Image.new('RGB', (w, h))
    d = ImageDraw.Draw(img)
    for x in range(w):  # diagonal-ish red → maroon gradient
        t = x / w
        d.line([(x, 0), (x, h)], fill=tuple(int(RED[i] + (MAROON[i] - RED[i]) * t) for i in range(3)))
    icon = ImageFont.truetype(str(ROOT / 'assets/fonts/phosphor/Phosphor-Fill.ttf'), 210)
    d.text((70, 135), chr(0xE684), font=icon, fill=WHITE)  # umbrella
    title = ImageFont.truetype(black, 64)
    sub = ImageFont.truetype(medium, 30)
    d.text((330, 140), 'PLI & RPLI', font=title, fill=WHITE)
    d.text((330, 215), 'Calculator', font=title, fill=WHITE)
    d.text((332, 305), 'Premium • Bonus • Maturity • Dues', font=sub, fill=(255, 225, 228))
    d.text((332, 350), 'Offline • 13 Indian languages', font=sub, fill=(255, 225, 228))
    img.save(OUT / 'feature_graphic.png', optimize=True)


if __name__ == '__main__':
    screenshots()
    feature_graphic(sys.argv[1], sys.argv[2])
    print('store assets written')
