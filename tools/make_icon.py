#!/usr/bin/env python3
"""Generate the launcher icon: a white umbrella (insurance) on the app's red
accent. Deliberately not India Post's logo. Writes legacy + adaptive
Android icons and a 512 px Play Store icon.

Usage: python3 -I tools/make_icon.py
"""
from pathlib import Path

from PIL import Image, ImageDraw

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


def main():
    legacy = {'mdpi': 48, 'hdpi': 72, 'xhdpi': 96, 'xxhdpi': 144, 'xxxhdpi': 192}
    for density, px in legacy.items():
        umbrella(px, 0.62, RED, rounded=True).save(RES / f'mipmap-{density}/ic_launcher.png')
        # Adaptive foreground: 108dp canvas, art inside the 66dp safe zone.
        umbrella(px * 108 // 48, 0.42).save(RES / f'mipmap-{density}/ic_launcher_foreground.png')
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
    umbrella(192, 0.9, ink=RED).save(ROOT / 'assets/images/umbrella.png', optimize=True)
    store = ROOT / 'docs/store'
    store.mkdir(parents=True, exist_ok=True)
    umbrella(512, 0.62, RED).save(store / 'icon_512.png')
    print('icons written')


if __name__ == '__main__':
    main()
