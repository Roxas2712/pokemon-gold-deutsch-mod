# Deutsch für Pokémon Gold

> **Eingestellt / archiviert:** Diese editionsspezifische Einzel-Mod erhält
> keine weiteren Updates. Die gepflegte Nachfolgeversion ist
> **Translation German Universal**, die Pokémon Rot, Blau, Gelb, Gold und
> Silber in einer einzigen Mod abdeckt.
>
> - [Universal-Repository](https://github.com/Roxas2712/translation-german-universal)
> - [Neueste Universal-Veröffentlichung](https://github.com/Roxas2712/translation-german-universal/releases/latest)

Deutsche Übersetzungs-Mod für die Gold-Unterstützung von Gen1Recomp. Sie
ersetzt die Texte und Namen der importierten US-Version durch die Inhalte der
offiziellen deutschen **Goldenen Edition** und übernimmt die dazugehörige
Schrift, Titelgrafik sowie die übersetzten Außenbeschriftungen von Pokémon-
Center und Markt.

> **Status: Beta.** Alle derzeit inventarisierten normalen Gold-Spieltexte sind
> deutsch abgedeckt. Dazu gehören auch die im Recompiler erzeugten Menü-,
> Kampf-, Telefon-/Radio- und Abspanntexte. Die seltenen Spielpfade werden
> weiter praktisch durchgespielt; technische Fehler- und Entwickleranzeigen
> sind nicht Teil der Spielübersetzung.

![Titelbild der Goldenen Edition](overrides/title/title_screen.png)

## Download

[Deutsch für Pokémon Gold 0.2.2 als ZIP herunterladen](https://github.com/Roxas2712/pokemon-gold-deutsch-mod/releases/download/v0.2.2/deutsch-gold-0.2.2.zip)

## Enthalten

- 3.042 ROM-Dialogtexte sowie zwei leere ROM-Sentinel-Einträge
- deutsche Engine- und Laufzeittexte für Menüs, Kämpfe und Skript-Sonderfälle
- deutsche Pokémon-, Attacken-, Item-, Trainerklassen- und Ortsnamen
- deutsche Attacken- und Itembeschreibungen
- vollständige deutsche Pokédex-Einträge mit metrischen Größenangaben
- Eichs Intro sowie Uhrzeit-, Tageszeit- und Wochentagsabfrage
- Haupt-, Start-, Options-, Party-, PC-, Beutel- und Pokédex-Menüs
- Kampf-, Fang-, EP-, Level-, Attackenlern- und Fluchtmeldungen
- Telefon, Radio und Abspann
- Originalschrift mit Umlauten und `ß`
- Titelbild `GOLDENE EDITION` mit korrigierter Palette am rechten Rand
- deutsche Center-/Markt-Grafiken in Johto und Kanto
- deutsche Beutel-, Pokédex- und PokéCom-Grafiken samt Radio-Kachelbelegung

## Prüfstatus

Automatisierte Katalog-, Platzhalter-, Muster-, Grafik- und Laufzeittests prüfen
die vollständige bekannte Textmenge. Zusätzlich sind Boot, Titel, Menüs,
Uhrzeit/Wochentag und Eichs Intro im laufenden Spiel visuell geprüft. Eine Beta
ersetzt dennoch keinen kompletten Durchspieltest jedes seltenen Ereignisses;
neue Fundstellen bitte mit Screenshot und Spielstand melden.

## Voraussetzung

- Gen1Recomp `0.1.90` oder neuer mit Gold-Unterstützung
- eine vom Spieler selbst importierte, unterstützte US-ROM von Pokémon Gold

Die Mod enthält keine ROM und verändert keine ROM-Datei. Pokémon Silber wird
von einer eigenen Übersetzungs-Mod abgedeckt; große Teile der Texte sind zwar
gleich, die versionsspezifischen Grafiken und einzelne Daten aber nicht.
Version 0.2.2 dieser Mod ist deshalb im Manifest ausschließlich Pokémon Gold
zugeordnet und kann neben der separaten Silber-Mod installiert bleiben.

## Installation

Den Release als ZIP bzw. Mod-Paket über den Mod-Manager installieren und nur
für **Gold** aktivieren.

Bei Gen1Recomp-Versionen mit Silber-Unterstützung ersetzt Version 0.2.2 den
alten, generationsweiten Kompatibilitätsschalter durch die eindeutige
Gold-Auswahl. Dadurch werden die Gold-Texte und -Grafiken bei einem Silber-Start
nicht mehr geladen.

Falls bereits Version 0.2.0 installiert war und das Hauptmenü weiterhin
`NEW GAME` / `EXIT GAME` zeigt, die Mod unter **MODS** einmal für Gold
aktivieren und das Spiel neu starten. Der gespeicherte Aus-Zustand einer alten
Installation wird bei einem Update absichtlich nicht überschrieben. Neue
Installationen ab 0.2.1 sind standardmäßig aktiv.

## Entwicklung

Die Kataloge wurden durch strukturelles Zuordnen der englischen und deutschen
Gold-Daten erstellt. Private ROM-Dateien, Rohdaten und Extraktions-Caches sind
absichtlich nicht Bestandteil dieses Repositorys.
