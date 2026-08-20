"""Correct the German Gold title strip's final tile palette.

The localized ``EDITION`` reaches tile column 15, while the extractor's
English-width palette region ends at column 14.  The grayscale composition
already contains the correct pixels, so use it as the shade source and apply
title palette 3 to that one 8x8 tile in the two color assets.
"""

import argparse
from pathlib import Path
from typing import Tuple

from PIL import Image


TITLE_DIR = Path(__file__).resolve().parents[1] / "overrides" / "title"
GRAY_PATH = TITLE_DIR / "title_screen_gray.png"
COLOR_ASSETS = ("pokemon_logo.png", "title_screen.png")

TILE_LEFT = 120
TILE_TOP = 48
TILE_SIZE = 8

# title_screen_gray.png has already passed through Gold's DMG BGP register.
# These four levels therefore map back to title BG palette 3 as follows.
PALETTE_3_BY_GRAY = {
    0: (140, 82, 8),
    85: (239, 206, 0),
    170: (123, 165, 255),
    255: (255, 255, 255),
}


def expected_color(gray: Image.Image, x: int, y: int) -> Tuple[int, int, int]:
    shade = gray.getpixel((x, y))
    try:
        return PALETTE_3_BY_GRAY[shade]
    except KeyError as error:
        raise ValueError(
            f"unexpected grayscale value {shade} at ({x}, {y})"
        ) from error


def patch(color_path: Path, gray: Image.Image) -> int:
    image = Image.open(color_path).convert("RGB")
    if image.size[0] < TILE_LEFT + TILE_SIZE or image.size[1] < TILE_TOP + TILE_SIZE:
        raise ValueError(f"{color_path} is too small for the title palette tile")

    changed = 0
    for y in range(TILE_TOP, TILE_TOP + TILE_SIZE):
        for x in range(TILE_LEFT, TILE_LEFT + TILE_SIZE):
            color = expected_color(gray, x, y)
            if image.getpixel((x, y)) != color:
                image.putpixel((x, y), color)
                changed += 1

    if changed:
        image.save(color_path, optimize=True)
    return changed


def mismatches(color_path: Path, gray: Image.Image) -> int:
    image = Image.open(color_path).convert("RGB")
    return sum(
        image.getpixel((x, y)) != expected_color(gray, x, y)
        for y in range(TILE_TOP, TILE_TOP + TILE_SIZE)
        for x in range(TILE_LEFT, TILE_LEFT + TILE_SIZE)
    )


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true",
                        help="verify the localized tile without changing files")
    args = parser.parse_args()

    gray = Image.open(GRAY_PATH).convert("L")
    if args.check:
        bad = {name: mismatches(TITLE_DIR / name, gray) for name in COLOR_ASSETS}
        for name, count in bad.items():
            print(f"{name}: {count} palette mismatches")
        return 1 if any(bad.values()) else 0

    for name in COLOR_ASSETS:
        print(f"{name}: corrected {patch(TITLE_DIR / name, gray)} pixels")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
