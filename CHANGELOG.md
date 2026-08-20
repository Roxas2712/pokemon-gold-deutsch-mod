# Changelog

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
