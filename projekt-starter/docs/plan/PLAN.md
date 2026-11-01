# PLAN: [PROJEKTNAME]

Basis: ARCHITECTURE.md   Statuswerte: offen | in Arbeit | erledigt | blockiert
Regel: Eine Karte pro Agent-Durchlauf. Reihenfolge einhalten. Abhängigkeiten zuerst.

## Phase 0: Gerüst  (Meilenstein: Projekt startet, Test läuft grün mit leerem Test)

### T01: Projektgerüst und Test-Setup
- Bezug: Architektur Abschnitt 3
- Abhängig von: -
- Betrifft: Ordnerstruktur, Konfiguration, tests/
- Beschreibung: Ordner anlegen, Werkzeuge installieren, Start- und Testbefehl in AGENTS.md
  im Abschnitt Befehle eintragen.
- Test: Fertig, wenn `[Testbefehl]` läuft und "0 Fehler" meldet.
- Status: offen

## Phase 1: Dünnster durchgehender Pfad  (Meilenstein: Kernfunktion läuft einmal komplett)

### T02: [Titel]
- Bezug: M1
- Abhängig von: T01
- Betrifft: [Dateipfade]
- Beschreibung: [max. 5 Zeilen: was entsteht, wie verhält es sich, Randfälle]
- Test: Fertig, wenn [messbares Ergebnis, z. B. Aufruf X liefert Y].
- Status: offen

### T03: [Titel]
- Bezug: M1
- Abhängig von: T02
- Betrifft: [..]
- Beschreibung: [..]
- Test: Fertig, wenn [..].
- Status: offen

## Phase 2: Restliche Muss-Anforderungen
(Karten T04 ... nach gleichem Muster)

## Phase 3: Kann-Anforderungen und Feinschliff
(Karten nach gleichem Muster)

## Phase 4: Abschluss
### Tn: README, Aufräumen, Abschlussprüfung
- Bezug: Brief Abschnitt 14
- Test: Fertig, wenn ein Neuling nach README das Projekt startet und Aufgabe X löst.

## Prüfung (vom Architect ausgefüllt)
| Prüfpunkt                                         | Ergebnis |
|---------------------------------------------------|----------|
| Jede M-Anforderung hat Modul und Karte            | ok       |
| Jede Karte hat Bezug zu M/K                       | ok       |
| Pfade stimmen mit Ordnerstruktur                  | ok       |
| Keine Zyklen/Vorwärtsabhängigkeiten               | ok       |
| Nicht-Ziele nicht enthalten                       | ok       |
