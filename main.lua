-- Official German text and graphics for the imported US Pokemon Gold data.
return function(mod)
  local GameVersion = require("src.core.GameVersion")
  if GameVersion.get() ~= "gold" then
    mod.log:info("Deutsch für Pokémon Gold: in dieser Edition nicht aktiv")
    return
  end

  local function catalog(name)
    local rel = "lang/" .. name .. ".lua"
    local body = mod:read(rel)
    if not body then
      mod.log:warn("%s fehlt", rel)
      return {}
    end
    local chunk, err = loadstring(body, rel)
    if not chunk then
      mod.log:warn("%s hat einen Syntaxfehler: %s", rel, tostring(err))
      return {}
    end
    local ok, result = pcall(chunk)
    if not ok or type(result) ~= "table" then
      mod.log:warn("%s liefert keine Tabelle: %s", rel, tostring(result))
      return {}
    end
    return result
  end

  local function eachString(name, apply)
    local count = 0
    for id, value in pairs(catalog(name)) do
      if type(value) == "string" and value ~= "" then
        apply(id, value)
        count = count + 1
      end
    end
    return count
  end

  for seq, code in pairs(catalog("charmap")) do
    mod.content.font:register("charmap:gold-de:" .. seq,
      { seq = seq, code = code })
  end

  local info = GameVersion.VERSIONS.gold
  info.label = "Gold"
  info.displayName = "Pokémon Goldene Edition"
  info.launcherName = "Goldene Edition (Beta)"

  local data = mod.game and mod.game.data or {}
  local counts = {}
  counts.dialogue = eachString("dialogue", function(id, value)
    mod.content.text:override(id, value)
  end)
  counts.species = eachString("species_names", function(id, value)
    mod.content.pokemon:patch(id, { name = value })
  end)
  counts.moves = eachString("move_names", function(id, value)
    if data.moves and data.moves[id] then data.moves[id].name = value end
  end)
  counts.items = eachString("item_names", function(id, value)
    mod.content.items:patch(id, { name = value })
  end)
  counts.trainerClasses = eachString("trainer_class_names", function(id, value)
    mod.content.trainers:patch(id, { name = value })
  end)
  counts.types = eachString("type_names", function(id, value)
    mod.content.type_chart:patch(id, { name = value })
  end)
  counts.landmarks = eachString("landmark_names", function(id, value)
    mod.content.landmarks:patch(id, { name = value })
  end)

  -- The current Gen 2 registry exposes names but not the cartridge's item /
  -- move descriptions, individual trainer names or Pokedex record. They are
  -- already loaded before mod entry points run, so update only those textual
  -- leaves on the live Gold data. No gameplay values are replaced.
  for id, value in pairs(catalog("move_descriptions")) do
    if data.moves and data.moves[id] and type(value) == "string" then
      data.moves[id].description = value
    end
  end
  for id, value in pairs(catalog("item_descriptions")) do
    if data.items and data.items[id] and type(value) == "string" then
      data.items[id].description = value
    end
  end
  for key, value in pairs(catalog("trainer_names")) do
    local classId, index = tostring(key):match("^(.-):(%d+)$")
    local class = data.gen2Trainers and data.gen2Trainers.classes
      and data.gen2Trainers.classes[classId]
    local trainer = class and class.trainers and class.trainers[tonumber(index)]
    if trainer and type(value) == "string" then trainer.name = value end
  end
  local pokedex = data.gen2Pokedex and data.gen2Pokedex.entries
  for id, translated in pairs(catalog("dex_entries")) do
    local entry = pokedex and pokedex[id]
    if entry and type(translated) == "table" then
      entry.kind = translated.kind or entry.kind
      entry.height = translated.height or entry.height
      entry.weight = translated.weight or entry.weight
      entry.text = translated.text or entry.text
      entry.text2 = translated.text2 or entry.text2
    end
  end

  mod.log:info(
    "Deutsch für Pokémon Gold aktiv: %d Dialoge, %d Pokémon, %d Attacken, %d Items",
    counts.dialogue or 0, counts.species or 0, counts.moves or 0, counts.items or 0)
end
