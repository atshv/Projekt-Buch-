# Dokumentation schreiben

Inhalt: 1 Vier Textarten, 2 Aufbau je Art, 3 Ordner, 4 Stil, 5 Prüffragen

Ziel: Jede Doku-Seite erfüllt genau einen Zweck. Mischformen verwirren.

## 1. Vier Textarten
| Art          | Leser will ...                 | Beispiel-Titel                     |
|--------------|--------------------------------|------------------------------------|
| Einstieg     | etwas lernen, Schritt für Schritt | "Dein erstes Projekt in 10 Minuten" |
| Anleitung    | ein Ziel erreichen             | "Daten exportieren"                |
| Nachschlagen | eine Angabe finden             | "Alle Einstellungen"               |
| Erklärung    | verstehen, warum               | "Wie die Synchronisation arbeitet" |
Bestimme die Art, bevor du schreibst. Passt ein Abschnitt nicht zur Art: eigene Seite.

## 2. Aufbau je Art
- Einstieg: Ziel, Voraussetzungen, nummerierte Schritte mit sichtbarem Ergebnis, Abschluss
  ("Du hast jetzt ..."), nächster Schritt. Keine Abzweigungen.
- Anleitung: Titel als Ziel ("X tun"), Voraussetzungen, Schritte, Fehlerfälle am Ende.
- Nachschlagen: Tabelle oder Liste, vollständig, alphabetisch oder nach Gruppen, keine Erzählung.
- Erklärung: Frage im Titel, Zusammenhang, Bild/Diagramm, Grenzen und Alternativen.

## 3. Ordner
```text
docs/
  einstieg.md
  anleitungen/   eine Datei pro Ziel
  nachschlagen/  einstellungen.md, befehle.md
  erklaerungen/  eine Datei pro Konzept
```
Kleines Projekt: alles in `docs/` ohne Unterordner. Startseite verlinkt jede Seite.

## 4. Stil
- Du-Form oder Sie-Form, im ganzen Projekt gleich.
- Ein Gedanke pro Absatz, höchstens 4 Sätze.
- Befehle und Dateinamen in `Code`, Knöpfe in **fett**.
- Jede Seite beginnt mit einem Satz: Was lernst/erreichst/findest du hier?

## 5. Prüffragen
- Hat jede Seite genau eine Art?
- Funktionieren alle Schritte, wenn man sie wörtlich befolgt?
- Ist jede Seite von der Startseite aus erreichbar?
