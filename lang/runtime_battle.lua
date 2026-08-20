-- Directly visible Gen 2 battle text still authored by src/battle/gen2 and
-- src/ui/gen2/BattleState.lua rather than routed through Strings(...).
-- Dynamic/composed messages live in runtime_patterns.lua.
-- Audited catalog: 59 exact keys. Strings-backed text, engine ids, logs,
-- animation/sound names and renderer-only glyphs are deliberately excluded.
return {
  ["A critical hit!"] = "Volltreffer!",
  ["It's super effective!"] = "Das ist sehr effektiv!",
  ["It's not very effective..."] = "Das ist nicht sehr effektiv…",
  ["It's a one-hit KO!"] = "K.O.-Treffer!",
  ["But it failed!"] = "Aber es schlug fehl!",
  ["No PP left for this move!"] = "Nicht genügend AP!",
  ["Spikes were scattered all around!"] = "STACHLER wurden überall verstreut!",
  ["All POKéMON hearing the song will faint in three turns!"] =
    "Alle POKéMON, die das Lied hören, werden in 3 Runden besiegt!",
  ["It hurt itself in its confusion!"] =
    "Es verletzt sich selbst in seiner Verwirrung!",
  ["Can't escape!"] = "Flucht unmöglich!",
  ["Got away safely!"] = "Flucht geglückt!",
  ["You have no more POKéMON!"] = "Du hast kein kampffähiges POKéMON mehr!",
  ["The trainer blocked the BALL!"] = "Der TRAINER blockt den BALL!",
  ["Don't be a thief!"] = "Sei kein Dieb!",
  ["Choose a POKéMON."] = "Wähle ein POKéMON.",
  ["There's no will to battle!"] = "Es kann nicht mehr kämpfen!",
  ["An EGG can't battle!"] = "Ein EI kann nicht kämpfen!",
  ["Use next POKéMON?"] = "Nächstes POKéMON einsetzen?",
  ["There's no PP left for this move!"] =
    "Diese Attacke hat keine AP mehr!",
  ["The move is DISABLED!"] = "Die Attacke ist blockiert!",
  ["Oh no! The POKéMON broke free!"] =
    "Mist! Das POKéMON hat sich befreit!",
  ["Aww! It appeared to be caught!"] =
    "Oh! Fast wäre es gefangen gewesen!",
  ["Aargh! Almost had it!"] = "Aaargh! Fast hätte es geklappt!",
  ["Shoot! It was so close too!"] = "Schade! Es war so knapp!",
  ["The POKéMON BOX is full. That can't be used now."] =
    "Die POKéMON-BOX ist voll. Das geht jetzt nicht.",
  ["That isn't going to help here."] = "Das hilft hier nicht.",
  ["NO BATTLE"] = "KEIN KAMPF",
  ["FIGHT"] = "KAMPF",
  ["PACK"] = "BEUTEL",
  ["RUN"] = "FLUCHT",
  ["CANCEL"] = "ZURÜCK",
  ["MOVE"] = "ATTACKE",
  ["STATS"] = "STATUS",
  ["ATTACK"] = "ANGRIFF",
  ["DEFENSE"] = "VERT.",
  ["SPCL.ATK"] = "SPEZ.ANG",
  ["SPCL.DEF"] = "SPEZ.VER",
  ["SPEED"] = "INIT.",
  ["ACCURACY"] = "GENAUIGK.",
  ["EVASION"] = "FLUCHTW.",
  ["PSN"] = "GIF",
  ["BRN"] = "BRT",
  ["FRZ"] = "GEF",
  ["PAR"] = "PAR",
  ["SLP"] = "SLF",
  ["CONFUSED"] = "VERWIRRT",
  ["It started to rain!"] = "Es beginnt zu regnen!",
  ["The sunlight got bright!"] = "Das Sonnenlicht wird stärker!",
  ["A sandstorm brewed!"] = "Ein Sandsturm kommt auf!",
  ["Rain continues to fall."] = "Der Regen hält an.",
  ["The sunlight is strong."] = "Das Sonnenlicht ist stark.",
  ["The sandstorm rages."] = "Der Sandsturm tobt.",
  ["The rain stopped."] = "Der Regen hört auf.",
  ["The sunlight faded."] = "Das Sonnenlicht lässt nach.",
  ["The sandstorm subsided."] = "Der Sandsturm legt sich.",
  ["Your POKéMON's LIGHT SCREEN fell!"] =
    "Der LICHTSCHILD deines POKéMON lässt nach!",
  ["Your POKéMON's REFLECT faded!"] =
    "Der REFLEKTOR deines POKéMON lässt nach!",
  ["Enemy POKéMON's LIGHT SCREEN fell!"] =
    "Der LICHTSCHILD des Gegners lässt nach!",
  ["Enemy POKéMON's REFLECT faded!"] =
    "Der REFLEKTOR des Gegners lässt nach!",
}
