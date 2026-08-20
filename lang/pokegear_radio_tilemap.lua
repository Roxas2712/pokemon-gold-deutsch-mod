-- Minimal delta for the official German SENDERSUCHLAUF graphic.
-- Pokegear uses a 20x18 tilemap. Coordinates here are zero-based; the engine's
-- Lua array index is y * width + x + 1 (Pokegear:drawTilemap).
return {
  width = 20,
  height = 18,
  coordinateBase = 0,
  cells = {
    { x = 10, y = 4, tile = 0x58 },
    { x = 11, y = 4, tile = 0x59 },
    { x = 12, y = 4, tile = 0x5a },
    { x = 13, y = 4, tile = 0x5b },
    { x = 14, y = 4, tile = 0x5c },
    { x = 15, y = 4, tile = 0x5d },
    { x = 16, y = 4, tile = 0x5e },
    { x = 17, y = 4, tile = 0x5f },
  },
}
