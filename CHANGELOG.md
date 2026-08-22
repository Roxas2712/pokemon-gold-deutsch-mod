# Changelog

## Unveröffentlicht – Stilllegung

- Diese editionsspezifische Einzel-Mod wird nicht mehr weiterentwickelt; das
  Repository bleibt als Archiv der bisherigen Veröffentlichungen erhalten.
- Die gepflegte Nachfolgeversion ist
  [Translation German Universal](https://github.com/Roxas2712/translation-german-universal).
  Die jeweils neueste Veröffentlichung ist über
  [GitHub Releases](https://github.com/Roxas2712/translation-german-universal/releases/latest)
  verfügbar.

## 0.2.2

- Den veralteten Manifest-Schalter `gen2compat` entfernt. Seit der
  Silber-Unterstützung würde er zusätzlich zur expliziten Gold-Auswahl alle
  Spiele der zweiten Generation freigeben und dadurch Gold-Grafiken auch in
  Pokémon Silber einblenden.
- Der Zielumfang ist nun eindeutig auf `games: ["gold"]` begrenzt; ein
  Regressionstest schützt diese Einstellung und das parallele Installieren
  editionsspezifischer Sprachmods.

## 0.2.1

- Die Mod wird bei einer frischen Installation nicht mehr wegen eines
  irrtümlichen `experimental`-Flags still deaktiviert. Dadurch ist die gesamte
  deutsche Übersetzung einschließlich Haupt- und Startmenü sofort aktiv.
- Die Mod ist nun ausdrücklich als Sprachmod gekennzeichnet.
- Regressionstest für Manifest-Aktivierung und die deutschen Hauptmenüeinträge
  ergänzt.

## 0.2.0

- Eichs vollständiges Intro mit den Textblöcken der deutschen Gold-ROM
  übernommen.
- Uhrzeit, Tageszeit, Wochentage und JA/NEIN-Abfragen vollständig lokalisiert.
- Im Recompiler erzeugte Menü-, Kampf-, Telefon-/Radio-, Minispiel- und
  Abspanntexte über geprüfte Laufzeitkataloge übersetzt.
- Beutel-, Pokédex- und PokéCom-Grafiken aus der deutschen Gold-ROM ergänzt;
  die breitere PokéCom-Radiobeschriftung erhält ihre passende Kachelbelegung.
- Indirekte und zusammengesetzte Texte ergänzt, die der ursprüngliche
  String-Harvester nicht erfassen konnte.
- Falsche Palettenzuordnung am letzten `N` von `EDITION` behoben, ohne die
  originale deutsche Pixelkontur zu verändern.
- Regressionstests für Textmenge, Platzhalter, Muster, Eich, PokéCom und
  Grafikabmessungen erweitert.

## 0.1.0

- Erste technische Gold-Vorschau auf Basis der offiziellen deutschen Edition.
- ROM-Dialoge, Namen, Beschreibungen, Pokédex, Schrift und erste relevante
  Grafiken übertragen.
- Titelbild der deutschen ROM übernommen; der Palettenrand am letzten `N` von
  `EDITION` war in dieser Vorschau noch fehlerhaft.
- Bekannte englische Engine-Texte und UI-Grafiken werden ausdrücklich noch
  nicht als vollständig übersetzt geführt.
