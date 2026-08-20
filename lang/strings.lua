-- German translations for every engine-authored string harvested from the
-- current Gen 2 modules. Keys are the exact English Strings(...) sources.

return {
  -- src/battle/gen2
  ["%s\nused %s!"] = "%s\nsetzt %s ein!",
  ["But nothing\nhappened."] = "Aber nichts\ngeschah.",
  ["%s got %s%d for winning!"] = "%s erhielt %s%d\nfür den Sieg!",
  ["%s got %s%d for winning! Sent some to MOM!"] =
    "%s erhielt %s%d\nfür den Sieg!\fEin Teil ging an\nMAMA!",
  ["Sent half to MOM!"] = "Die Hälfte ging\nan MAMA!",
  ["Sent all to MOM!"] = "Alles ging an\nMAMA!",

  -- src/ui/gen2/BattleState.lua
  ["Which move should\nbe forgotten?"] = "Welche Attacke\nvergessen?",
  ["HM moves can't be\nforgotten now."] =
    "VM-Attacken können\njetzt nicht ver-\vgessen werden.",
  ["Stop learning\n%s?"] = "%s nicht\nerlernen?",
  ["%s\nis about to use\v%s.\fWill %s\nchange POKéMON?"] =
    "%s\nwird gleich %s\veinsetzen.\fWechselt %s\ndas POKéMON?",

  -- src/ui/gen2/DecorationMenu.lua
  ["EXIT"] = "ENDE",
  ["RIGHT SIDE"] = "RECHTE SEITE",
  ["LEFT SIDE"] = "LINKE SEITE",

  -- src/ui/gen2/Diploma.lua
  ["This certifies"] = "Hiermit wird",
  ["that you have"] = "bestätigt: Du hast",
  ["completed the"] = "den neuen #DEX",
  ["new #DEX."] = "vervollständigt.",
  ["Congratulations!"] = "Glückwunsch!",

  -- src/ui/gen2/ElevatorMenu.lua
  ["Now on:"] = "Derzeit:",

  -- src/ui/gen2/InitClock.lua (official German Gold cartridge wording)
  ["What time is it?"] = "Wie spät ist es?",
  ["What?\n%s?"] = "Was?\n%s?",
  ["How many minutes?"] = "Wie viele Minuten?",
  ["Whoa!\n%d min.?"] = "Wow!\n%d min.?",
  ["%s!\nIt's so dark!"] =
    "%s!\nKein Wunder, dass\ves so dunkel ist!",
  ["%s!\nI overslept!"] = "%s!\nIch habe\vverschlafen!",
  ["%s!\nYikes! I over-\nslept!"] =
    "%s!\nUah! Ich habe\vverschlafen!",
  ["What day is it?"] = "Welcher Tag ist\nheute?",
  ["%s, is that right?"] = "%s, oder?",

  -- src/ui/gen2/OakSpeech.lua (official German Gold cartridge wording)
  ["Hello! Sorry to\nkeep you waiting!\fWelcome to the\nworld of POKéMON!\fMy name is OAK.\fPeople call me the\nPOKéMON PROF."] =
    "Hi! Entschuldige\ndie Verspätung!\fWillkommen in der\nWelt der POKéMON!\fMein Name ist\nEICH!\vMan nennt mich\fden POKéMON-\nPROFESSOR.",
  ["This world is in-\nhabited by crea-\vtures that we call\vPOKéMON."] =
    "Diese Welt wird\nvon Wesen\vbewohnt, die man\vPOKéMON nennt.",
  ["People and POKéMON\nlive together by\fsupporting each\nother.\fSome people play\nwith POKéMON, some\vbattle with them."] =
    "Menschen und\nPOKéMON leben\fzusammen und\nhelfen einander.\fFür manche Leute\nsind POKéMON\vHaustiere, andere\vtragen Kämpfe mit\vihnen aus.",
  ["But we don't know\neverything about\vPOKéMON yet.\fThere are still\nmany mysteries to\vsolve.\fThat's why I study\nPOKéMON every day."] =
    "Leider wissen wir\nnoch nicht alles\vüber POKéMON.\fEs gibt noch\nviele Geheimnisse\vzu lüften.\fDarum studiere\nich POKéMON\vtagaus, tagein!",
  ["Now, what did you\nsay your name was?"] = "Wie lautet dein\nName?",
  ["{PLAYER}, are you\nready?\fYour very own\nPOKéMON story is\vabout to unfold.\fYou'll face fun\ntimes and tough\vchallenges.\fA world of dreams\nand adventures\fwith POKéMON\nawaits! Let's go!\fI'll be seeing you\nlater!"] =
    "{PLAYER}, bist du\nbereit?\fDein eigenes\nPOKéMON-Abenteuer\verwartet dich.\fDich erwarten tol-\nle Dinge, aber\vauch harte Zeiten.\fEine Welt voller\nTräume und aufre-\fgender POKéMON-\nAbenteuer erwar-\vtet dich! Mach\vdich bereit!\fIch treffe dich\nspäter!",

  -- src/ui/gen2/PackMenu.lua and PcMenu.lua
  ["{PLAYER} used the"] = "{PLAYER} benutzt",
  ["Registered the"] = "Registriert:",
  ["You can't register"] = "Dieses Item nicht",
  ["that item."] = "registrierbar.",
  ["There is a POKéMON\nholding MAIL."] =
    "Ein POKéMON trägt\neinen BRIEF.",
  ["Please remove the\nMAIL."] = "Entferne bitte den\nBRIEF.",

  -- src/ui/gen2/PhotoStudio.lua
  ["№."] = "Nr.",
  ["<LV>"] = "<LV>",
  ["HP"] = "KP",
  ["♂"] = "♂",
  ["♀"] = "♀",
  ["⁂"] = "⁂",
  ["/"] = "/",
  ["<ID>№"] = "<ID>Nr.",
  ["MOVE"] = "ATTACKE",

  -- src/ui/gen2/TradeAnim.lua
  ["{STRBUF} was\nsent to {STRBUF}."] =
    "{STRBUF} wurde\nzu {STRBUF} gesandt.",
  ["For {STRBUF}'s\n{STRBUF},"] = "Für {STRBUF}s\n{STRBUF},",
  ["{STRBUF} sends\n{STRBUF}."] = "{STRBUF} schickt\n{STRBUF}.",
  ["{STRBUF} bids\nfarewell to"] = "{STRBUF} nimmt\nAbschied von",
  ["{STRBUF}."] = "{STRBUF}.",
  ["Take good care of\n{STRBUF}."] = "Kümmere dich gut\num {STRBUF}.",

  -- src/ui/gen2/TradeMenu.lua
  ["I collect #MON.\nDo you have\v{STRBUF}?\fWant to trade it\nfor my {STRBUF}?"] =
    "Ich sammle\n#MON. Hast du\v{STRBUF}?\fWillst du es gegen\nmein {STRBUF}\vtauschen?",
  ["You don't want to\ntrade? Aww…"] =
    "Du willst nicht\ntauschen? Schade…",
  ["Huh? That's not\n{STRBUF}. What a letdown…"] =
    "Hm? Das ist nicht\n{STRBUF}. Schade…",
  ["Yay! I got myself\n{STRBUF}!\vThanks!"] =
    "Juhu! Ich habe\n{STRBUF}!\vDanke!",
  ["Hi, how's my old\n{STRBUF} doing?"] =
    "Hi! Wie geht es\nmeinem {STRBUF}?",
  ["OK, connect the\nGame Link Cable."] =
    "O.K., benutze das\nGame Link-Kabel.",
  ["{PLAYER} traded\n{STRBUF} for\v{STRBUF}."] =
    "{PLAYER} tauscht\n{STRBUF} gegen\v{STRBUF}.",

  -- src/ui/gen2/UnownPrinter.lua and UnownPuzzle.lua
  [" ALPH RUINS STAMP"] = " ALPH-RUINEN-STEMPEL",
  ["Do what?"] = "Was tun?",
  ["VACANT"] = "FREI",
  ["A▶PRINT"] = "A▶DRUCKEN",
  ["B▶CANCEL"] = "B▶ZURÜCK",
  ["L▶BEFORE"] = "L▶ZURÜCK",
  ["R▶NEXT"] = "R▶WEITER",
  ["START>CANCEL"] = "START>ZURÜCK",

  -- src/core/gen2/Decorations.lua
  ["Set up the\n%s."] = "%s\naufstellen.",
  ["Put away the\n%s."] = "%s\nwegräumen.",
  ["There's nothing to\nput away."] = "Es gibt nichts\nwegzuräumen.",
  ["That's already set\nup."] = "Das steht bereits\nhier.",
  ["There's nothing to\nchoose."] = "Es gibt nichts\nauszuwählen.",
  ["Put away the\n%s"] = "%s\nwegräumen",
  ["and set up the\n%s."] = "und %s\naufstellen.",

  -- src/core/gen2/MomShopping.lua
  ["Hi, {PLAYER}!\nHow are you?"] = "Hi, {PLAYER}!\nWie geht es dir?",
  ["I found a useful\nitem shopping, so"] =
    "Beim Einkauf fand\nich ein nützliches\vItem, also",
  ["While shopping\ntoday, I saw this\nadorable doll, so"] =
    "Heute sah ich beim\nEinkaufen diese\vsüße Puppe, also",
  ["I bought it with\nyour money. Sorry!"] =
    "kaufte ich sie von\ndeinem Geld.\vTut mir leid!",
  ["It's in your PC.\nYou'll like it!"] =
    "Es ist in deinem\nPC. Du magst es!",
  ["It's in your room.\nYou'll love it!"] =
    "Es ist in deinem\nZimmer.\vDu liebst es!",

  -- src/core/gen2/PhoneRing.lua
  ["RING!…RING!…\n%s"] = "KLINGEL!…KLINGEL!…\n%s",

  -- src/world/gen2/Bike.lua and CmdQueue.lua
  ["{PLAYER} got on the\n{STRBUF}."] =
    "{PLAYER} steigt auf\ndas {STRBUF}.",
  ["{PLAYER} got off\nthe {STRBUF}."] =
    "{PLAYER} steigt vom\n{STRBUF} ab.",
  ["You can't get off\nhere!"] = "Du kannst hier\nnicht absteigen!",
  ["The boulder fell\nthrough."] = "Der Fels fiel\nhinunter.",
  ["The boulder fell\nthrough!"] = "Der Fels fiel\nhinunter!",

  -- src/world/gen2/FieldMoves.lua
  ["Sorry! A new BADGE\nis required."] =
    "Du benötigst einen\nneuen ORDEN.",
  ["Can't use that\nhere."] = "Du kannst das hier\nnicht benutzen.",
  ["{STRBUF} used\nCUT!"] =
    "{STRBUF} setzt\nden ZERSCHNEIDER\vein!",
  ["There's nothing to\nCUT here."] =
    "Hier kann\nman nichts\vzerschneiden.",
  ["This tree can be\nCUT!"] =
    "Der ZERSCHNEIDER\nkann hier\veingesetzt werden!",
  ["{STRBUF} used\nSURF!"] = "{STRBUF} setzt\nSURFER ein!",
  ["You can't SURF\nhere."] =
    "SURFER kann hier\nnicht eingesetzt\vwerden.",
  ["You're already\nSURFING."] = "SURFER ist bereits\neingesetzt.",
  ["The water is calm.\nWant to SURF?"] =
    "Die See ist ruhig.\nMöchtest du SURFER\veinsetzen?",
  ["{STRBUF} used\nWATERFALL!"] = "{STRBUF} setzt\nKASKADE ein!",
  ["Wow, it's a huge\nwaterfall."] = "Wow, das ist ein\ngroßer Wasserfall.",
  ["Do you want to use\nWATERFALL?"] =
    "Möchtest du\nKASKADE einsetzen?",
  ["{STRBUF} used\nSTRENGTH!"] = "{STRBUF} setzt\nSTÄRKE ein!",
  ["{STRBUF} can\nmove boulders."] = "{STRBUF} kann\nFelsen bewegen.",
  ["Boulders may now\nbe moved!"] = "Du kannst jetzt\nFelsen bewegen!",
  ["A #MON may be\nable to move this."] =
    "Ein POKéMON könnte\ndas vielleicht\vbewegen.",
  ["{STRBUF} used\nDIG!"] = "{STRBUF} setzt\nSCHAUFLER ein!",
  ["{PLAYER} used an\nESCAPE ROPE."] =
    "{PLAYER} setzt\nFLUCHTSEIL ein.",
  ["Return to the last\n#MON CENTER."] =
    "Bringt dich zum\nletzten POKéMON-\vCENTER.",
  ["{STRBUF} used\nWHIRLPOOL!"] = "{STRBUF} setzt\nWHIRLPOOL ein!",
  ["Fly to %s?"] = "Nach %s\nfliegen?",

  -- src/world/gen2/HiddenItems.lua
  ["{PLAYER} found\n{STRBUF}."] = "{PLAYER} findet\n{STRBUF}.",
  ["But {PLAYER} has\nno space left…"] =
    "{PLAYER} kann keine\nweiteren Items\vmehr tragen!",
  ["{PLAYER} found\n{STRBUF}!"] = "{PLAYER} findet\n{STRBUF}!",
  ["But {PLAYER} can't\ncarry any more\vitems!"] =
    "{PLAYER} kann keine\nweiteren Items\vmehr tragen!",

  -- src/world/gen2/World.lua
  ["A POKéMON could be\nin this tree.\fWant to HEADBUTT\nit?"] =
    "Vielleicht steckt\nein POKéMON in\vdiesem Baum.\fMöchtest du KOPF-\nNUSS einsetzen?",
  ["{STRBUF} did a\nHEADBUTT!"] = "{STRBUF} setzt\nKOPFNUSS ein!",
  ["Nope. Nothing…"] = "Nein. Nichts…",
  ["Oh!\nA bite!"] = "Uah!\nDa hat etwas\vangebissen!",
  ["Not even a nibble!"] = "Nicht einmal\nangeknabbert!",
  ["{STRBUF} used\nSWEET SCENT!"] = "{STRBUF} setzt\nLOCKDUFT ein!",
  ["Looks like there's\nnothing here…"] = "Hier scheint\nnichts zu sein.",
  ["{PLAYER}'s POKéMON\nwere all healed!"] =
    "Die POKéMON\nvon {PLAYER}\vwurden geheilt!",
  ["Gold cache incomplete:\n%s"] = "Gold-Cache\nunvollständig:\n%s",
  ["Font load failed:\n%s"] = "Schriftladen\nfehlgeschlagen:\n%s",
  ["%s is missing.\nRe-import the Gold ROM."] =
    "%s fehlt.\nGold-ROM erneut\nimportieren.",
  ["Failed to boot %s:\n%s"] = "Start von %s\nfehlgeschlagen:\n%s",
  ["ANNOUNCER: BEEEP!\fTime's up!"] =
    "SPRECHER: BIIIEP!\fDie Zeit ist um!",
  ["ANNOUNCER: The\nContest is over!"] =
    "SPRECHER: Das\nKÄFERTURNIER ist\vvorbei!",
  ["{PLAYER} sprinkled\nwater.\fBut nothing\nhappened…"] =
    "{PLAYER}\nverspritzt Wasser.\fNichts geschieht…",
  ["REPEL's effect\nwore off."] = "Der SCHUTZ wirkt\nnicht mehr.",
  ["%s came\nout of its EGG!"] = "%s ist\naus dem EI\vgeschlüpft!",
  ["Give a nickname to\n%s?"] = "%s einen\nSpitznamen geben?",

  -- src/script/gen2/Specials.lua: contest and Day Care
  ["Give a nickname to\nthe {STRBUF} you\nreceived?"] =
    "Dem erhaltenen\n{STRBUF} einen\vSpitznamen geben?",
  ["Placing third was\n%s,\fwho caught a\n%s!"] =
    "Den dritten Platz\nbelegte %s,\fmit einem\n%s!",
  ["Placing second was\n%s,\fwho caught a\n%s!"] =
    "Den zweiten Platz\nbelegte %s,\fmit einem\n%s!",
  ["This Bug-Catching\nContest winner is\f%s,\nwho caught a\n%s!"] =
    "Der Sieger des\nKÄFERTURNIERS ist\f%s,\nmit einem\n%s!",
  ["The score was\n%d points!"] = "Die Punktzahl war\n%d Punkte!",
  ["The winning score\nwas %d points!"] = "Siegerpunktzahl:\n%d Punkte!",
  ["It's {STRBUF}\nthat was left with\nthe DAY-CARE MAN."] =
    "{STRBUF} hast du\ndem PENSIONSLEITER\vanvertraut.",
  ["It's {STRBUF}\nthat was left with\nthe DAY-CARE LADY."] =
    "{STRBUF} hast du\nder PENSIONSLEI-\vTERIN anvertraut.",
  ["It's brimming with\nenergy."] = "Es strotzt vor\nEnergie.",
  ["It has no interest\nin {STRBUF}."] =
    "{STRBUF}\nist uninteressant.",
  ["It appears to care\nfor {STRBUF}."] =
    "Es kümmert sich um\n{STRBUF}.",
  ["It's friendly with\n{STRBUF}."] =
    "Es ist freundlich\ngegenüber\f{STRBUF}.",
  ["It shows interest\nin {STRBUF}."] =
    "Es zeigt Interesse\nan {STRBUF}.",

  -- src/script/gen2/Specials.lua: Move Deleter and Name Rater
  ["No? Come visit me\nagain."] = "Nein? Besuch mich\nwieder.",
  ["Which #MON?"] = "Welches #MON?",
  ["An EGG doesn't\nknow any moves!"] = "Ein EI kennt keine\nAttacken!",
  ["That #MON knows\nonly one move."] =
    "Das #MON kennt\nnur eine Attacke.",
  ["Which move should\nit forget, then?"] =
    "Welche Attacke\nsoll es vergessen?",
  ["Oh, make it forget\n{STRBUF}?"] = "Soll es {STRBUF}\nvergessen?",
  ["Done! Your #MON\nforgot the move."] =
    "Fertig!\nDein #MON hat\vdie Attacke\nvergessen.",
  ["OK, then. Come\nagain sometime."] =
    "O.K. Du kannst\nmich immer be-\vsuchen.",
  ["Which #MON's\nnickname should I\nrate for you?"] =
    "Welchen POKéMON-\nSpitznamen soll\vich bewerten?",
  ["Whoa… That's just\nan EGG."] = "Wow… Das ist nur\nein EI.",
  ["All right. What\nname should we\ngive it, then?"] =
    "O.K. Welchen\nNamen möchtest\vdu haben?",
  ["That's a better\nname than before!\n\nWell done!"] =
    "Dieser Name\nist besser!\fGut gemacht!",
  ["All right. This\n#MON is now\nnamed {STRBUF}."] =
    "O.K. Der neue Name\ndieses POKéMON\vist {STRBUF}.",

  -- src/script/gen2/Specials.lua: clock and Pokédex ratings
  ["%s DST,\nis that OK?"] = "%s SOMMERZEIT,\nist das richtig?",
  ["%s,\nis that OK?"] = "%s,\nist das richtig?",
  ["You don't have a\nCOIN CASE."] = "Du hast keinen\nMÜNZKORB.",
  ["Current #DEX\ncompletion level:"] = "Aktueller #DEX-\nFortschritt:",
  ["%d #MON seen\n%d #MON owned\n\nPROF.OAK's\nRating:"] =
    "%d #MON gesehen\n%d #MON gefangen\fPROF. EICHS\nBewertung:",
  ["Look for #MON\nin grassy areas!"] =
    "Suche in hohem\nGras nach #MON!",
  ["Good. I see you\nunderstand how to\nuse # BALLS."] =
    "Gut. Du weißt,\nwie man #BÄLLE\vbenutzt.",
  ["You're getting\ngood at this.\n\nBut you have a\nlong way to go."] =
    "Du wirst immer\nbesser.\fAber der Weg ist\nnoch weit.",
  ["You need to fill\nup the #DEX.\n\nCatch different\nkinds of #MON!"] =
    "Fülle den #DEX.\fFange verschiedene\n#MON!",
  ["You're trying--I\ncan see that.\n\nYour #DEX is\ncoming together."] =
    "Du bemühst dich,\ndas sehe ich.\fDein #DEX nimmt\nForm an.",
  ["To evolve, some\n#MON grow,\n\nothers use the\neffects of STONES."] =
    "Manche #MON\nentwickeln sich\vdurch Wachstum,\fandere durch die\nWirkung von\vSTEINEN.",
  ["Have you gotten a\nfishing ROD? You\n\ncan catch #MON\nby fishing."] =
    "Hast du eine\nANGEL?\fBeim Angeln kannst\ndu #MON fangen.",
  ["Excellent! You\nseem to like col-\nlecting things!"] =
    "Ausgezeichnet!\nDu sammelst\voffenbar gern!",
  ["Some #MON only\nappear during\n\ncertain times of\nthe day."] =
    "Manche #MON\nerscheinen nur\fzu bestimmten\nTageszeiten.",
  ["Your #DEX is\nfilling up. Keep\nup the good work!"] =
    "Dein #DEX füllt\nsich. Weiter so!",
  ["I'm impressed.\nYou're evolving\n\n#MON, not just\ncatching them."] =
    "Beeindruckend!\nDu entwickelst\f#MON, statt sie\nnur zu fangen.",
  ["Have you met KURT?\nHis custom #\nBALLS should help."] =
    "Kennst du KURT?\nSeine besonderen\v#BÄLLE helfen\ndir.",
  ["Wow. You've found\nmore #MON than\n\nthe last #DEX\nresearch project."] =
    "Wow. Du hast mehr\n#MON gefunden\fals beim letzten\n#DEX-Projekt.",
  ["Are you trading\nyour #MON?\n\nIt's tough to do\nthis alone!"] =
    "Tauschst du deine\n#MON?\fAllein ist das\nschwierig!",
  ["Wow! You've hit\n200! Your #DEX\nis looking great!"] =
    "Wow! Du hast 200!\nDein #DEX sieht\vtoll aus!",
  ["You've found so\nmany #MON!\n\nYou've really\nhelped my studies!"] =
    "So viele #MON!\fDu hast meiner\nForschung sehr\vgeholfen!",
  ["Magnificent! You\ncould become a\n\n#MON professor\nright now!"] =
    "Großartig! Du\nkönntest sofort\f#MON-PROFESSOR\nwerden!",
  ["Your #DEX is\namazing! You're\n\nready to turn\nprofessional!"] =
    "Dein #DEX ist\nfantastisch!\fDu bist bereit,\nProfi zu werden!",
  ["Whoa! A perfect\n#DEX! I've\n\ndreamt about this!\nCongratulations!"] =
    "Wow! Ein perfekter\n#DEX!\fDavon habe ich\ngeträumt!\fGlückwunsch!",

  -- src/script/gen2/Specials.lua: Bank of Mom and Photo Studio
  ["OK, I'll take care\nof your money.\f…"] =
    "O.K., ich verwalte\ndeine Ersparnisse.\f………………",
  ["What do you want\nto do?"] = "Was wirst du\ntun?",
  ["How much do you\nwant to save?"] = "Wie viel möchtest\ndu sparen?",
  ["How much do you\nwant to take?"] = "Wie viel möchtest\ndu mitnehmen?",
  ["Do you want to\nsave some money?"] = "Möchtest du weiter\nGeld sparen?",
  ["You haven't saved\nthat much."] = "So viel hast du\nnicht gespart.",
  ["You can't take\nthat much."] = "So viel kannst du\nnicht mitnehmen.",
  ["You don't have\nthat much."] = "So viel hast\ndu nicht.",
  ["You can't save\nthat much."] = "So viel kannst du\nnicht sparen.",
  ["OK, I'll save your\nmoney. Trust me!\f{PLAYER}, stick\nwith it!"] =
    "O.K., ich spare\nfür dich! Traue\vmir!\f{PLAYER}, bleib\ndabei!",
  ["Your money's safe\nhere! Get going!"] =
    "Dein Geld ist hier\nsicher! Tschüss!",
  ["{PLAYER}, don't\ngive up!"] = "{PLAYER}, nur nicht\naufgeben!",
  ["Just do what\nyou can."] = "Gib immer dein\nBestes.",
  ["Which #MON\nshould I photo-\ngraph?"] =
    "Welches POKéMON\nsoll ich\vfotografieren?",
  ["All righty. Hold\nstill for a bit."] = "O.K. Beweg dich\nnicht.",
  ["Oh, no picture?\nCome again, OK?"] =
    "Kein Foto? Schau\nmal wieder vorbei!",
  ["An EGG? My talent\nis worth more…"] =
    "Ein EI? Mein\nTalent hat mehr\vverdient…",

  -- src/script/gen2/Vm.lua
  ["{PLAYER} received\n%s."] = "{PLAYER} erhält\n%s.",
  ["{PLAYER} put the\n%s in\nthe %s."] = "{PLAYER} legt\n%s in\v%s.",
  ["The %s\nis full…"] = "%s\nist voll…",
  ["It's a fruit-\nbearing tree."] = "Dieser Baum trägt\nFrüchte.",
  ["There's nothing\nhere…"] = "Hier ist nichts…",
  ["Hey! It's\n%s!"] = "Hey! Das ist\n%s!",
  ["But the PACK is\nfull…"] = "Aber der BEUTEL\nist voll…",
  ["Obtained\n%s!"] = "%s\nerhalten!",
  ["Click!"] = "Klick!",

  -- Literal and indirectly referenced Gen-2 Strings sources that the
  -- mechanical direct-call harvest cannot see.
  ["%s is\ntrying to learn\v%s.\fBut %s\ncan't learn more\vthan four moves.\fDelete an older\nmove to make room\vfor %s?"] =
    "%s versucht,\n%s zu erlernen.\fAber %s kann\nnicht mehr als\vvier Attacken.\fEine alte Attacke\nvergessen, um Platz\vfür %s zu schaffen?",
  ["Zzz... Hm? Wha...?\nYou woke me up!\fWill you check the\nclock for me?"] =
    "Zzz… Hm? Was…?\nDu hast mich auf-\fgeweckt. Kannst du\nmir sagen, wie\vspät es ist?",
  ["This tree can be\nCUT!\fWant to use CUT?"] =
    "Dieser Baum kann\nzerschnitten werden!\fZERSCHNEIDER\neinsetzen?",
  ["A blinding FLASH\nlights the area!"] =
    "Ein greller BLITZ\nerhellt die Gegend!",
  ["A #MON may be\nable to move this.\fWant to use\nSTRENGTH?"] =
    "Ein #MON könnte\ndas bewegen.\fSTÄRKE\neinsetzen?",
  ["It's a vicious\nwhirlpool!\fA #MON may be\nable to pass it."] =
    "Ein reißender\nWHIRLPOOL!\fEin #MON könnte\nihm trotzen.",
  ["A whirlpool is in\nthe way.\fWant to use\nWHIRLPOOL?"] =
    "Ein WHIRLPOOL ist\nim Weg.\fWHIRLPOOL\neinsetzen?",
  ["Yes! ITEMFINDER\nindicates there's\nan item nearby."] =
    "Ja! Der ITEMRADAR\nzeigt ein Item ganz\vin der Nähe an.",
  ["Nope! ITEMFINDER\nisn't responding."] =
    "Nein! Der\nITEMRADAR reagiert\vnicht.",
  ["%s\nfainted!"] = "%s wurde\nbesiegt!",
  ["Um… Oh, yes, I'm\nthe MOVE DELETER.\n\nI can make #MON\nforget moves.\n\nShall I make a\n#MON forget?"] =
    "Äh… Ja, ich kann\n#MON Attacken\fvergessen lassen.\fSoll ein #MON\neine Attacke\vvergessen?",
  ["Hello, hello! I'm\nthe NAME RATER.\n\nI rate the names\nof #MON.\n\nWould you like me\nto rate names?"] =
    "Hallo! Ich bin der\nNAMENSBEWERTER.\fIch bewerte die\nNamen von #MON.\fSoll ich einen\nNamen bewerten?",
  ["Hm… {STRBUF}?\nWhat a great name!\nIt's perfect.\n\nTreat {STRBUF}\nwith loving care."] =
    "Hm… {STRBUF}?\nEin großartiger\vName! Perfekt!\fBehandle {STRBUF}\nmit viel Liebe.",
  ["Hm… {STRBUF}…\nThat's a fairly\ndecent name.\n\nBut, how about a\nslightly better\nnickname?\n\nWant me to give it\na better name?"] =
    "Hm… {STRBUF}…\nEin recht guter\vName.\fAber wie wäre es\nmit einem besseren\vSpitznamen?\fSoll ich ihm einen\nbesseren Namen\vgeben?",
  ["It might look the\nsame as before,\n\nbut this new name\nis much better!\n\nWell done!"] =
    "Er sieht vielleicht\ngleich aus wie zuvor,\faber dieser neue\nName ist viel besser!\fGut gemacht!",
  ["Wow, that's a cute\n#MON.\fWhere did you get\nit?\f…\fSo, you're leaving\non an adventure…\fOK!\nI'll help too.\fBut what can I do\nfor you?\fI know! I'll save\nmoney for you.\fOn a long journey,\nmoney's important.\fDo you want me to\nsave your money?"] =
    "Wow, ein süßes\n#MON!\fWoher hast du es?\f…\fDu gehst also auf\nAbenteuerreise…\fOK! Ich helfe dir.\fAber was kann ich\nfür dich tun?\fIch weiß! Ich spare\ndein Geld.\fAuf einer langen\nReise ist Geld\vwichtig.\fSoll ich dein Geld\nsparen?",
  ["Be careful.\f#MON are your\nfriends. You need\vto work as a team.\fNow, go on!"] =
    "Pass auf dich auf.\f#MON sind deine\nFreunde. Ihr müsst\vals Team arbeiten.\fNun geh!",
  ["Hi! Welcome home!\nYou're trying very\vhard, I see.\fI've kept your\nroom tidy.\fOr is this about\nyour money?"] =
    "Hi! Willkommen zu\nHause! Du strengst\vdich sehr an.\fIch hielt dein\nZimmer sauber.\fGeht es um dein\nGeld?",
  ["You don't have a\n#MON!"] = "Du hast kein\n#MON!",
  ["An item in your\nPACK may be\fregistered for use\non SELECT Button."] =
    "Ein Item im BEUTEL\nkann für SELECT\fregistriert werden.",
  ["OAK: {PLAYER}!\nThis isn't the\vtime to use that!"] =
    "EICH: {PLAYER}!\nDas ist nicht die\vZeit dafür!",
  ["The REPEL used\nearlier is still\vin effect."] =
    "Der zuvor benutzte\nSCHUTZ wirkt noch.",
  ["{PLAYER} used the\n%s."] = "{PLAYER} benutzt\n%s.",
  ["There was a trophy\ninside!\fThe trophy was\nsent home."] =
    "Darin war eine\nTrophäe!\fDie Trophäe wurde\nnach Hause geschickt.",
  ["You have no coins."] = "Du hast keine Münzen.",
  ["You have no more\nPOKéMON that can\vfight!"] =
    "Du hast kein\nkampffähiges\vPOKéMON mehr!",
}
