# PLAN: [PROJEKTNAME]

Basis: ARCHITECTURE.md   Statuswerte: offen | in Arbeit | erledigt | blockiert (Grund)
Regel: Eine Karte pro Agent-Durchlauf. Reihenfolge einhalten. Abhängigkeiten zuerst.
Kartenformat: toolkit/skills/plan-cards/templates/card.md. Prüfen mit: bin/check-plan

## Phase 0: Gerüst  (Meilenstein: Projekt startet, Test läuft grün mit leerem Test)

### T01: Projektgerüst und Test-Setup
- Bezug: Architektur Abschnitt 3
- Abhängig von: -
- Schreiben: AGENTS.md, tests/, [Konfigurationsdatei laut Architektur]
- Lesen: docs/architecture/ARCHITECTURE.md Abschnitt 2, 3 und 10
- Beschreibung: Ordner anlegen, Werkzeuge installieren, Start- und Testbefehl in AGENTS.md
  im Abschnitt Befehle eintragen.
- Nicht Teil der Karte: Fachlicher Code. Nur das Gerüst und ein leerer Test.
- Abnahme:
  - A1: Wenn `[Testbefehl]` läuft, dann meldet er "0 Fehler".
  - A2: Wenn man in AGENTS.md Abschnitt 5 liest, dann stehen dort Installieren, Starten und Tests ohne UNKLAR-Marke.
- Prüfungen: `[Testbefehl]`
- Status: offen

## Phase 1: Dünnster durchgehender Pfad  (Meilenstein: Kernfunktion läuft einmal komplett)

### T02: [Titel]
- Bezug: [M1]
- Abhängig von: T01
- Schreiben: [Dateipfade, höchstens 5]
- Lesen: [Dateien oder Abschnitte, die der Agent kennen muss]
- Beschreibung: [max. 5 Zeilen: was entsteht, wie verhält es sich, Randfälle]
- Nicht Teil der Karte: [was naheliegt, aber hier nicht gebaut wird]
- Abnahme:
  - A1: Wenn [Aktion], dann [messbares Ergebnis].
  - A2: Wenn [Fehlerfall], dann [Meldung oder Verhalten].
- Prüfungen: `[Testbefehl]`
- Status: offen

## Phase 2: Restliche Muss-Anforderungen
(Karten T03 ... nach gleichem Muster)

## Phase 3: Kann-Anforderungen und Feinschliff
(Karten nach gleichem Muster)

## Phase 4: Abschluss
(Letzte Karte nach gleichem Muster: README, Aufräumen, Abschlussprüfung. Bezug: Brief Abschnitt 14.
Abnahme zum Beispiel: Wenn ein Neuling nach der README das Projekt startet, dann löst er Aufgabe X.)

## Prüfung (vom Architect ausgefüllt)
| Prüfpunkt                                         | Ergebnis |
|---------------------------------------------------|----------|
| `bin/check-plan` meldet keine Fehler              | ok       |
| Jede M-Anforderung hat Modul und Karte            | ok       |
| Jede Karte hat Bezug zu M/K                       | ok       |
| Pfade stimmen mit Ordnerstruktur                  | ok       |
| Keine Zyklen/Vorwärtsabhängigkeiten               | ok       |
| Nicht-Ziele nicht enthalten                       | ok       |
