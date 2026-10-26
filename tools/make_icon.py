#!/usr/bin/env python3
"""Generate the launcher icon: a white umbrella (insurance cover) over bold
"PLI" lettering on the app's red. Deliberately not India Post's logo.
Writes legacy + adaptive Android icons, the in-app header mark and a
512 px Play Store icon.

Usage: python3 -I tools/make_icon.py <Roboto-Black.ttf>
(The umbrella glyph comes from the bundled Phosphor Fill font.)
"""
import sys
from pathlib import Path

from PIL import Image, ImageDraw, ImageFont

RED = (200, 16, 46, 255)
WHITE = (255, 255, 255, 255)
ROOT = Path(__file__).resolve().parents[1]
RES = ROOT / 'android/app/src/main/res'


def umbrella(size, scale=0.62, bg=None, rounded=False, ink=None):
    """Umbrella centred in a size×size canvas, occupying `scale` of it."""
    k = 4  # supersample
    n = size * k
    img = Image.new('RGBA', (n, n), (0, 0, 0, 0))
    d = ImageDraw.Draw(img)
    WHITE = ink or (255, 255, 255, 255)
    if bg:
        if rounded:
            d.rounded_rectangle([0, 0, n - 1, n - 1], radius=int(n * 0.22), fill=bg)
        else:
            d.rectangle([0, 0, n, n], fill=bg)
    w = n * scale
    cx, top = n / 2, (n - w) / 2 + w * 0.05
    r = w / 2
    # Canopy: upper half-disc.
    d.pieslice([cx - r, top, cx + r, top + 2 * r], 180, 360, fill=WHITE)
    # Scalloped edge: bite out four semicircles along the bottom.
    base = top + r
    bites = 4
    br = r / bites
    for i in range(bites):
        bx = cx - r + br * (2 * i + 1)
        d.ellipse([bx - br, base - br * 0.55, bx + br, base + br * 1.45], fill=bg or (0, 0, 0, 0))
    # Shaft.
    sw = max(2, int(w * 0.055))
    shaft_bottom = top + w * 0.98
    d.rectangle([cx - sw / 2, base - br * 0.4, cx + sw / 2, shaft_bottom - w * 0.12], fill=WHITE)
    # J handle.
    hr = w * 0.12
    d.arc([cx - 2 * hr + sw / 2, shaft_bottom - w * 0.12 - hr, cx + sw / 2, shaft_bottom - w * 0.12 + hr],
          0, 180, fill=WHITE, width=sw)
    return img.resize((size, size), Image.LANCZOS)


UMBRELLA = chr(0xE684)  # Phosphor Fill "umbrella"


def mark(size, scale=0.62, bg=None, rounded=False, ink=None, lettering=True):
    """Umbrella above "PLI", centred, occupying `scale` of a size×size canvas."""
    k = 4
    n = size * k
    img = Image.new('RGBA', (n, n), (0, 0, 0, 0))
    d = ImageDraw.Draw(img)
    colour = ink or WHITE
    if bg:
        if rounded:
            d.rounded_rectangle([0, 0, n - 1, n - 1], radius=int(n * 0.22), fill=bg)
        else:
            d.rectangle([0, 0, n, n], fill=bg)
    box = n * scale
    glyph_h = box * (0.62 if lettering else 1.0)
    icon_font = ImageFont.truetype(str(ROOT / 'assets/fonts/phosphor/Phosphor-Fill.ttf'), int(glyph_h * 1.18))
    l, t, r, b = d.textbbox((0, 0), UMBRELLA, font=icon_font)
    top = (n - box) / 2
    d.text(((n - (r - l)) / 2 - l, top - t), UMBRELLA, font=icon_font, fill=colour)
    if lettering:
        text_font = ImageFont.truetype(sys.argv[1], int(box * 0.36))
        l2, t2, r2, b2 = d.textbbox((0, 0), 'PLI', font=text_font)
        y = top + (b - t) + box * 0.04
        d.text(((n - (r2 - l2)) / 2 - l2, y - t2), 'PLI', font=text_font, fill=colour)
    return img.resize((size, size), Image.LANCZOS)


def main():
    legacy = {'mdpi': 48, 'hdpi': 72, 'xhdpi': 96, 'xxhdpi': 144, 'xxxhdpi': 192}
    for density, px in legacy.items():
        mark(px, 0.66, RED, rounded=True).save(RES / f'mipmap-{density}/ic_launcher.png')
        # Adaptive foreground: 108dp canvas, art inside the 66dp safe zone.
        mark(px * 108 // 48, 0.44).save(RES / f'mipmap-{density}/ic_launcher_foreground.png')
    (RES / 'mipmap-anydpi-v26').mkdir(exist_ok=True)
    (RES / 'mipmap-anydpi-v26/ic_launcher.xml').write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">\n'
        '    <background android:drawable="@color/ic_launcher_background"/>\n'
        '    <foreground android:drawable="@mipmap/ic_launcher_foreground"/>\n'
        '    <monochrome android:drawable="@mipmap/ic_launcher_foreground"/>\n'
        '</adaptive-icon>\n')
    (RES / 'values/ic_launcher_background.xml').write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n<resources>\n'
        '    <color name="ic_launcher_background">#C8102E</color>\n</resources>\n')
    # In-app header mark: red umbrella on transparent.
    (ROOT / 'assets/images').mkdir(parents=True, exist_ok=True)
    mark(192, 0.9, ink=RED, lettering=False).save(ROOT / 'assets/images/umbrella.png', optimize=True)
    store = ROOT / 'docs/store'
    store.mkdir(parents=True, exist_ok=True)
    mark(512, 0.66, RED).save(store / 'icon_512.png')
    print('icons written')


if __name__ == '__main__':
    main()
