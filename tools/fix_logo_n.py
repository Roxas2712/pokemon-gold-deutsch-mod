"""Make the tiny GOLDENE title-strip N read cleanly at native resolution."""

from pathlib import Path
from PIL import Image

ROOT = Path(__file__).resolve().parents[1] / "overrides" / "title"
MASK = (
    "110011",
    "111011",
    "111011",
    "110111",
    "110111",
    "110011",
)


def patch(path: Path) -> None:
    image = Image.open(path)
    mode = "L" if image.mode == "L" else "RGB"
    image = image.convert(mode)
    background = image.getpixel((72, 50))
    for row, mask in enumerate(MASK):
        y = 49 + row
        ink = image.getpixel((73, y))
        for column, bit in enumerate(mask):
            image.putpixel((73 + column, y), ink if bit == "1" else background)

    # The original five-pixel cell is too narrow for a clear diagonal at
    # native resolution. Move the final E one pixel right, leaving x=79 as
    # the separator, and use the freed pixel for a six-pixel N.
    for y in range(49, 55):
        final_e = [image.getpixel((x, y)) for x in range(79, 83)]
        image.putpixel((79, y), background)
        for column, pixel in enumerate(final_e):
            image.putpixel((80 + column, y), pixel)
        image.putpixel((84, y), background)
    image.putpixel((84, 48), background)
    image.putpixel((84, 55), background)
    image.save(path, optimize=True)


for filename in ("pokemon_logo.png", "title_screen.png", "title_screen_gray.png"):
    patch(ROOT / filename)
