#!/usr/bin/env python3
"""Android launcher icons from a finished square artwork (docs/store/icon_source.png).

- Legacy icons: the art with its white outer corners made transparent.
- Adaptive icon: the art scaled into the safe zone on a matching red
  background, so circle/squircle masks never clip the PLI / RPLI lettering.
- assets/images/app_icon.png: the icon shown in the app's home header.
- Play Store icon 512x512: full-bleed square (Play rounds the corners itself).

Usage: python3 -I tools/make_icon_from_art.py
"""
from pathlib import Path

from PIL import Image, ImageDraw

ROOT = Path(__file__).resolve().parents[1]
RES = ROOT / 'android/app/src/main/res'
BG = (176, 6, 14)  # deep red sampled from the art's edges


def art_with_clear_corners():
    rgb = Image.open(ROOT / 'docs/store/icon_source.png').convert('RGB')
    # Flood-fill the near-white background from each corner into a mask.
    mask = Image.new('L', rgb.size, 255)
    probe = rgb.copy()
    w, h = rgb.size
    for corner in [(0, 0), (w - 1, 0), (0, h - 1), (w - 1, h - 1)]:
        ImageDraw.floodfill(probe, corner, (255, 0, 255), thresh=60)
    px, mpx = probe.load(), mask.load()
    for y in range(h):
        for x in range(w):
            if px[x, y] == (255, 0, 255):
                mpx[x, y] = 0
    art = rgb.convert('RGBA')
    art.putalpha(mask)
    return art


def main():
    art = art_with_clear_corners()
    legacy = {'mdpi': 48, 'hdpi': 72, 'xhdpi': 96, 'xxhdpi': 144, 'xxxhdpi': 192}
    for density, px in legacy.items():
        art.resize((px, px), Image.LANCZOS).save(RES / f'mipmap-{density}/ic_launcher.png', optimize=True)
        # Adaptive foreground: 108dp canvas; art at 62% stays inside the
        # visible area of every mask shape.
        canvas = px * 108 // 48
        fg = Image.new('RGBA', (canvas, canvas), (0, 0, 0, 0))
        s = int(canvas * 0.62)
        fg.alpha_composite(art.resize((s, s), Image.LANCZOS), ((canvas - s) // 2, (canvas - s) // 2))
        fg.save(RES / f'mipmap-{density}/ic_launcher_foreground.png', optimize=True)
    (RES / 'mipmap-anydpi-v26/ic_launcher.xml').write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">\n'
        '    <background android:drawable="@color/ic_launcher_background"/>\n'
        '    <foreground android:drawable="@mipmap/ic_launcher_foreground"/>\n'
        '</adaptive-icon>\n')
    (RES / 'values/ic_launcher_background.xml').write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n<resources>\n'
        '    <color name="ic_launcher_background">#%02X%02X%02X</color>\n</resources>\n' % BG)
    # In-app header mark.
    (ROOT / 'assets/images').mkdir(exist_ok=True)
    art.resize((256, 256), Image.LANCZOS).save(ROOT / 'assets/images/app_icon.png', optimize=True)
    store = Image.new('RGBA', art.size, BG + (255,))
    store.alpha_composite(art)
    store.convert('RGB').resize((512, 512), Image.LANCZOS).save(ROOT / 'docs/store/icon_512.png', optimize=True)
    print('launcher icons written from docs/store/icon_source.png')


if __name__ == '__main__':
    main()
