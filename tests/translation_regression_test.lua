local script = arg and arg[0] or "tests/translation_regression_test.lua"
local root = script:match("^(.*)/tests/[^/]+$") or "."

local function loadCatalog(name)
  local chunk, err = loadfile(root .. "/lang/" .. name .. ".lua")
  assert(chunk, err)
  local value = chunk()
  assert(type(value) == "table", name .. " did not return a table")
  return value
end

local manifestHandle = assert(io.open(root .. "/manifest.json", "rb"))
local manifestText = assert(manifestHandle:read("*a"))
manifestHandle:close()
assert(manifestText:match('"version"%s*:%s*"0%.2%.2"'),
  "release version is not 0.2.2")
assert(manifestText:match('"experimental"%s*:%s*false'),
  "translation mod must not default to disabled")
assert(manifestText:match('"language"%s*:%s*true'),
  "translation mod is not marked as a language mod")
local rawGames = assert(manifestText:match('"games"%s*:%s*(%b[])'),
  "translation mod has no raw games scope")
assert(rawGames:gsub("%s+", "") == '["gold"]',
  "translation mod must target exactly Gold")
assert(not manifestText:match('"gen2compat"%s*:'),
  "legacy gen2compat would widen Gold to every Gen-2 game")

local dialogue = loadCatalog("dialogue")
local total, nonempty = 0, 0
for key, value in pairs(dialogue) do
  assert(type(key) == "string" and key:match("^%x%x:%x%x%x%x$"), key)
  assert(type(value) == "string", key)
  total = total + 1
  if value ~= "" then nonempty = nonempty + 1 end
end
assert(total == 3044, "dialogue pointer coverage changed: " .. total)
assert(nonempty == 3042, "nonempty dialogue coverage changed: " .. nonempty)

local strings = loadCatalog("strings")
local stringCount = 0
local function formatKinds(text)
  local kinds = {}
  for kind in text:gmatch("%%[-+ #0]*%d*%.?%d*([cdiouxXeEfgGqs])") do
    kinds[#kinds + 1] = kind
  end
  return table.concat(kinds, ",")
end
for source, translated in pairs(strings) do
  assert(type(source) == "string" and source ~= "", "empty engine source")
  assert(type(translated) == "string" and translated ~= "", source)
  assert(formatKinds(source) == formatKinds(translated),
    source .. " format directive mismatch")
  stringCount = stringCount + 1
end
assert(stringCount == 234,
  "engine-string coverage changed: " .. stringCount)
assert(strings["Zzz... Hm? Wha...?\nYou woke me up!\fWill you check the\nclock for me?"]
  :find("Du hast mich auf%-"), "clock wake-up text is not German")
assert(strings["You have no more\nPOKéMON that can\vfight!"]
  :find("kampffähiges", 1, true), "whiteout text uses the wrong control key")

local function validateRuntimeExact(name, expected)
  local entries = loadCatalog(name)
  local count = 0
  for source, translated in pairs(entries) do
    assert(type(source) == "string" and source ~= "", name .. " empty source")
    assert(type(translated) == "string" and translated ~= "", source)
    assert(formatKinds(source) == formatKinds(translated),
      name .. " format mismatch: " .. source)
    count = count + 1
  end
  if expected then
    assert(count == expected, name .. " coverage changed: " .. count)
  end
  return count
end

local runtimeUiCount = validateRuntimeExact("runtime_ui", 872)
local runtimeBattleCount = validateRuntimeExact("runtime_battle")
local runtimeSystemCount = validateRuntimeExact("runtime_system", 12)
local runtimeUi = loadCatalog("runtime_ui")
assert(runtimeUi["CONTINUE"] == "WEITER"
    and runtimeUi["NEW GAME"] == "NEUES SPIEL"
    and runtimeUi["EXIT GAME"] == "SPIEL ENDE",
  "Gold main-menu labels are not German")
assert(runtimeUi["Today's WEDNESDAY,"] == "Es ist MITTWOCH!",
  "composed radio weekday is not German")
assert(runtimeUi["“OAK's <PK><MN> Talk”"] == "“EICHs <PK><MN>-Talk”",
  "quoted map-radio station is not German")
assert(runtimeUi["KEY POCKET"] == "BASIS-ITEMS",
  "German pocket name changed")
assert(runtimeUi["B4F"] == "U4S" and runtimeUi["11F"] == "10S",
  "German elevator labels changed")

local function validatePatterns(name)
  local entries = loadCatalog(name)
  local seen = {}
  for index, rule in ipairs(entries) do
    assert(type(rule) == "table" and type(rule[1]) == "string"
      and type(rule[2]) == "string", name .. " rule " .. index)
    assert(not seen[rule[1]], name .. " duplicate pattern: " .. rule[1])
    seen[rule[1]] = true
    local ok, err = pcall(string.find, "", rule[1])
    assert(ok, name .. " invalid pattern " .. rule[1] .. ": " .. tostring(err))
  end
  return #entries
end

local runtimePatternCount = validatePatterns("runtime_patterns")
local runtimeSystemPatternCount = validatePatterns("runtime_system_patterns")
assert(runtimePatternCount > 0 and runtimeSystemPatternCount == 13,
  "runtime pattern coverage missing")

local oak = loadCatalog("oak_speech")
local oakCount = 0
for key, value in pairs(oak) do
  assert(key:match("^_OakText[124567]$"), "unexpected Oak key: " .. key)
  assert(type(value) == "string" and value ~= "", key)
  oakCount = oakCount + 1
end
assert(oakCount == 6, "Oak intro coverage changed: " .. oakCount)
assert(oak._OakText1:find("EICH", 1, true), "Oak intro is not German")
assert(oak._OakText7:find("POKéMON%-Abenteuer"), "Oak ending is incomplete")

local radio = loadCatalog("pokegear_radio_tilemap")
assert(radio.width == 20 and radio.height == 18 and radio.coordinateBase == 0)
assert(#radio.cells == 8, "radio tilemap delta changed")
for offset, cell in ipairs(radio.cells) do
  assert(cell.x == 9 + offset and cell.y == 4 and cell.tile == 0x57 + offset,
    "radio tilemap cell " .. offset)
end

local function pngSize(rel)
  local handle = assert(io.open(root .. "/" .. rel, "rb"), rel)
  local head = assert(handle:read(24), rel .. " truncated")
  handle:close()
  assert(head:sub(1, 8) == "\137PNG\r\n\26\n", rel .. " is not PNG")
  local function be32(at)
    local a, b, c, d = head:byte(at, at + 3)
    return ((a * 256 + b) * 256 + c) * 256 + d
  end
  return be32(17), be32(21)
end

local assetSizes = {
  ["overrides/fonts/font.png"] = { 128, 64 },
  ["overrides/fonts/font_battle_extra.png"] = { 128, 16 },
  ["overrides/tilesets/johto.png"] = { 128, 48 },
  ["overrides/tilesets/johto_modern.png"] = { 128, 48 },
  ["overrides/tilesets/kanto.png"] = { 128, 48 },
  ["overrides/pack/menu.png"] = { 128, 48 },
  ["overrides/pokedex/dex.png"] = { 128, 32 },
  ["overrides/pokegear/gear.png"] = { 128, 48 },
  ["overrides/title/pokemon_logo.png"] = { 160, 56 },
  ["overrides/title/title_screen.png"] = { 160, 144 },
}
for rel, expected in pairs(assetSizes) do
  local width, height = pngSize(rel)
  assert(width == expected[1] and height == expected[2],
    ("%s size %dx%d"):format(rel, width, height))
end

local dex = loadCatalog("dex_entries")
local dexCount = 0
for id, row in pairs(dex) do
  assert(type(row.kind) == "string" and row.kind ~= "", id .. " kind")
  assert(type(row.text) == "string" and row.text ~= "", id .. " text")
  assert(type(row.text2) == "string" and row.text2 ~= "", id .. " text2")
  assert(type(row.height) == "number" and row.height > 0, id .. " height")
  assert(type(row.weight) == "number" and row.weight > 0, id .. " weight")
  dexCount = dexCount + 1
end
assert(dexCount == 251, "Pokedex coverage changed: " .. dexCount)

print(("ok: %d dialogue, %d engine, %d UI, %d battle, %d patterns, %d Pokedex")
  :format(nonempty, stringCount, runtimeUiCount, runtimeBattleCount,
    runtimePatternCount + runtimeSystemPatternCount, dexCount))
