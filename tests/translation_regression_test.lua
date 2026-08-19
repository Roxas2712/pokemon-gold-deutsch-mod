local script = arg and arg[0] or "tests/translation_regression_test.lua"
local root = script:match("^(.*)/tests/[^/]+$") or "."

local function loadCatalog(name)
  local chunk, err = loadfile(root .. "/lang/" .. name .. ".lua")
  assert(chunk, err)
  local value = chunk()
  assert(type(value) == "table", name .. " did not return a table")
  return value
end

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

print(("ok: %d dialogue (%d nonempty), %d Pokedex entries")
  :format(total, nonempty, dexCount))
