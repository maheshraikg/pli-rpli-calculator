#!/usr/bin/env python3
"""Play Store graphics from the rendered screenshots (test_screenshots/out).

- docs/store/screenshots/NN_name.png: 1080x1920 marketing screenshots
  (headline, phone frame with the app screen).
- docs/store/screenshots_tab7|tab10/N_name.png: 7- and 10-inch tablet
  screenshots (1080x1920, 1440x2560) from the tablet renders.
- docs/store/feature_graphic.png: 1024x500.

Usage: python3 -I tools/make_store_assets.py <Roboto-Black.ttf> <Roboto-Medium.ttf>
Render the screenshots first (see test_screenshots/screenshots_test.dart).
"""
import sys
from pathlib import Path

from PIL import Image, ImageDraw, ImageFilter, ImageFont

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / 'test_screenshots/out'
OUT = ROOT / 'docs/store'
# (output name, source render, scroll offset in source px, headline, subline)
SHOTS = [
    ('01_home', '01b_home_full.png', 0,
     'All PLI & RPLI tools', 'Premium, maturity, dues and forms'),
    ('02_premium', '02_premium_full.png', 2380,
     'Premium in seconds', 'Every plan, age and frequency'),
    ('03_maturity', '03_maturity_sumangal_full.png', 2040,
     'Bonus & maturity value', 'With survival benefit dates'),
    ('04_quotation', '05_quotation_full.png', 1050,
     'Share quotations', 'PDF or image on WhatsApp'),
    ('05_compare', '04_compare_full.png', 2550,
     'Compare plans', 'Pick the best plan for your customer'),
    ('06_dues', '18_dues_full.png', 0,
     'Never miss a due', 'Monthly dues and WhatsApp reminders'),
    ('07_forms', '24_form_maturity.png', 0,
     'Claim forms ready', 'Download, share and document checklist'),
    ('08_official_links', '23_links.png', 0,
     'Official links', 'PLI portal, DigiLocker, toll-free helpline'),
    ('09_kannada', '09_home_kannada.png', 0,
     '13 Indian languages', 'Kannada, Hindi, Tamil, Telugu and more'),
]
# Tablet shots: (output name, source suffix, headline, subline); sources are
# tab7_<suffix>.png / tab10_<suffix>.png.
TABLET_SHOTS = [
    ('1_home', '1_home', 'All PLI & RPLI tools', 'Premium, maturity, dues and forms'),
    ('2_premium', '2_premium', 'Premium in seconds', 'Every plan, age and frequency'),
    ('3_dues', '3_dues', 'Never miss a due', 'Monthly dues and WhatsApp reminders'),
    ('4_official_links', '4_links', 'Official links', 'PLI portal, DigiLocker, toll-free helpline'),
]
# Play needs 16:9 or 9:16: (folder tag, canvas size).
TABLETS = [('tab7', (1080, 1920)), ('tab10', (1440, 2560))]
RED, MAROON, WHITE = (200, 16, 46), (110, 6, 24), (255, 255, 255)
PINK = (255, 214, 220)
APP_BAR = 160  # source px of the app bar kept at the top of scrolled shots


def gradient(w, h, a, b):
    img = Image.new('RGB', (w, h))
    d = ImageDraw.Draw(img)
    for y in range(h):
        t = y / h
        d.line([(0, y), (w, y)], fill=tuple(int(a[i] + (b[i] - a[i]) * t) for i in range(3)))
    return img


def decorate(img, circles):
    """Soft translucent circles for depth."""
    layer = Image.new('RGBA', img.size, (0, 0, 0, 0))
    d = ImageDraw.Draw(layer)
    for cx, cy, r, alpha in circles:
        d.ellipse([cx - r, cy - r, cx + r, cy + r], fill=(255, 255, 255, alpha))
    img.paste(layer, (0, 0), layer)


def screen_crop(src, offset, height):
    """App bar + the screen scrolled to offset, height source px tall."""
    im = Image.open(SRC / src).convert('RGB')
    if offset == 0:
        return im.crop((0, 0, 1080, min(height, im.height)))
    out = Image.new('RGB', (1080, height), WHITE)
    out.paste(im.crop((0, 0, 1080, APP_BAR)), (0, 0))
    out.paste(im.crop((0, offset, 1080, min(im.height, offset + height - APP_BAR))), (0, APP_BAR))
    return out


def phone(screen_w, screen_h, screen, bezel=20, radius=70):
    """A phone body with the screen inset; returns RGBA."""
    w, h = screen_w + 2 * bezel, screen_h + 2 * bezel
    body = Image.new('RGBA', (w, h), (0, 0, 0, 0))
    d = ImageDraw.Draw(body)
    d.rounded_rectangle([0, 0, w - 1, h - 1], radius=radius, fill=(24, 24, 28, 255))
    d.rounded_rectangle([3, 3, w - 4, h - 4], radius=radius - 3, outline=(70, 70, 78, 255), width=2)
    scr = screen.resize((screen_w, screen_h), Image.LANCZOS).convert('RGBA')
    m = Image.new('L', scr.size, 0)
    ImageDraw.Draw(m).rounded_rectangle([0, 0, screen_w - 1, screen_h - 1], radius=radius - bezel, fill=255)
    body.paste(scr, (bezel, bezel), m)
    # Camera hole.
    cx = w // 2
    r = max(4, bezel // 2)
    d.ellipse([cx - r, bezel + r, cx + r, bezel + 3 * r], fill=(10, 10, 12, 255))
    return body


def place_with_shadow(canvas, item, x, y, blur=30, alpha=130):
    shadow = Image.new('RGBA', canvas.size, (0, 0, 0, 0))
    a = item.split()[3].point(lambda v: alpha if v else 0)
    shadow.paste((0, 0, 0, 255), (x, y + 24), a)
    shadow = shadow.filter(ImageFilter.GaussianBlur(blur))
    canvas.paste(shadow, (0, 0), shadow)
    canvas.paste(item, (x, y), item)


def centered(d, y, text, font, fill, w):
    tw = d.textlength(text, font=font)
    d.text(((w - tw) / 2, y), text, font=font, fill=fill)


def screenshots(black, medium):
    (OUT / 'screenshots').mkdir(parents=True, exist_ok=True)
    W, H = 1080, 1920
    head, sub = ImageFont.truetype(black, 84), ImageFont.truetype(medium, 44)
    screen_w = 840
    scale = screen_w / 1080
    top = 430
    screen_h = H - top  # the phone runs off the bottom edge
    for name, src, offset, title, line in SHOTS:
        img = gradient(W, H, RED, MAROON).convert('RGBA')
        decorate(img, [(980, 120, 260, 22), (60, 700, 200, 14), (1040, 1500, 320, 12)])
        d = ImageDraw.Draw(img)
        centered(d, 130, title, head, WHITE, W)
        centered(d, 245, line, sub, PINK, W)
        d.rounded_rectangle([W / 2 - 50, 330, W / 2 + 50, 338], radius=4, fill=(255, 255, 255, 180))
        screen = screen_crop(src, offset, int(screen_h / scale) + 40)
        ph = phone(screen_w, screen_h + 60, screen)
        place_with_shadow(img, ph, (W - ph.width) // 2, top)
        img.convert('RGB').save(OUT / 'screenshots' / f'{name}.png', optimize=True)


def tablet_screenshots(black, medium):
    for tag, (W, H) in TABLETS:
        out = OUT / f'screenshots_{tag}'
        out.mkdir(parents=True, exist_ok=True)
        k = W / 1080  # type scale relative to the phone canvas
        head, sub = ImageFont.truetype(black, int(84 * k)), ImageFont.truetype(medium, int(44 * k))
        for name, src, title, line in TABLET_SHOTS:
            img = gradient(W, H, RED, MAROON).convert('RGBA')
            decorate(img, [(int(980 * k), int(120 * k), int(260 * k), 22), (int(60 * k), int(700 * k), int(200 * k), 14)])
            d = ImageDraw.Draw(img)
            centered(d, int(130 * k), title, head, WHITE, W)
            centered(d, int(245 * k), line, sub, PINK, W)
            d.rounded_rectangle([W / 2 - 50 * k, 330 * k, W / 2 + 50 * k, 338 * k], radius=4, fill=(255, 255, 255, 180))
            screen = Image.open(SRC / f'{tag}_{src}.png').convert('RGB')
            top, bezel = int(420 * k), int(26 * k)
            screen_h = H - top - int(70 * k) - 2 * bezel
            screen_w = int(screen_h * screen.width / screen.height)
            tab = phone(screen_w, screen_h, screen, bezel=bezel, radius=int(56 * k))
            place_with_shadow(img, tab, (W - tab.width) // 2, top)
            img.convert('RGB').save(out / f'{name}.png', optimize=True)


def feature_graphic(black, medium):
    w, h = 1024, 500
    img = gradient(w, h, RED, MAROON).convert('RGBA')
    decorate(img, [(900, 40, 220, 20), (120, 520, 200, 14), (560, -40, 120, 12)])
    d = ImageDraw.Draw(img)
    # Icon, highlighted with a soft white glow.
    size, x0, y0 = 150, 56, 60
    glow = Image.new('L', (w, h), 0)
    ImageDraw.Draw(glow).rounded_rectangle([x0 - 6, y0 - 6, x0 + size + 6, y0 + size + 6], radius=40, fill=190)
    glow = glow.filter(ImageFilter.GaussianBlur(16))
    img.paste((255, 255, 255, 255), (0, 0), glow)
    d.rounded_rectangle([x0 - 4, y0 - 4, x0 + size + 4, y0 + size + 4], radius=38, fill=WHITE)
    art = Image.open(OUT / 'icon_512.png').convert('RGBA').resize((size, size), Image.LANCZOS)
    m = Image.new('L', art.size, 0)
    ImageDraw.Draw(m).rounded_rectangle([0, 0, size - 1, size - 1], radius=34, fill=255)
    img.paste(art, (x0, y0), m)
    title = ImageFont.truetype(black, 58)
    d.text((56, 238), 'PLI & RPLI', font=title, fill=WHITE)
    d.text((56, 300), 'Calculator', font=title, fill=WHITE)
    chip = ImageFont.truetype(medium, 20)
    x = 56
    for label in ['Premium', 'Maturity', '13 languages']:
        tw = d.textlength(label, font=chip)
        d.rounded_rectangle([x, 394, x + tw + 28, 430], radius=18, fill=(255, 255, 255, 235))
        d.text((x + 14, 400), label, font=chip, fill=RED)
        x += tw + 38
    d.text((58, 448), 'Works offline  •  No ads', font=ImageFont.truetype(medium, 20), fill=PINK)
    # Two phones on the right: premium result in front, home behind.
    back = phone(210, 430, screen_crop('01b_home_full.png', 0, 2210), bezel=8, radius=30)
    front = phone(230, 470, screen_crop('02_premium_full.png', 3020, 2060), bezel=9, radius=32)
    place_with_shadow(img, back, 555, 70, blur=14, alpha=110)
    place_with_shadow(img, front, 760, 34, blur=16, alpha=140)
    img.convert('RGB').save(OUT / 'feature_graphic.png', optimize=True)


if __name__ == '__main__':
    screenshots(sys.argv[1], sys.argv[2])
    tablet_screenshots(sys.argv[1], sys.argv[2])
    feature_graphic(sys.argv[1], sys.argv[2])
    print('store assets written')
