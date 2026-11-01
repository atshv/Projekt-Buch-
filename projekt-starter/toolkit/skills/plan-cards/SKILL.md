---
name: plan-cards
description: Zerlegt Architektur und Anforderungen in kleine, prüfbare Aufgabenkarten (T01, T02 ...)
  in docs/plan/PLAN.md, mit Bezug, Abhängigkeiten, Dateien und Test. Nutze diesen Skill, wenn
  der Architect den Plan schreibt, eine Karte zu gross ist, neue Folgekarten aus einem Review
  entstehen, oder der Mensch Aufgaben aufteilen, Plan machen, Karten, was ist der nächste Schritt
  oder in kleinere Schritte sagt. Nicht für das Umsetzen einer Karte (Rolle Agent) oder für
  Entscheidungen (adr-writer).
---

# Aufgabenkarten schneiden

Eine gute Karte kann ein Agent in einer Sitzung fertig bauen und jeder prüfen.

## Kurzstart
- Wann: Plan erstellen, Karte teilen, Folgekarten aus einem Review aufnehmen.
- Ergebnis: Karten in `docs/plan/PLAN.md` nach `templates/card.md`, Prüftabelle am Ende.
- Grösse: eine Sitzung (ca. 30 bis 90 Minuten), höchstens etwa 5 Dateien.

## Benötigte Eingaben
- docs/brief/BRIEF.md (M.., K..), docs/architecture/ARCHITECTURE.md (Module, Ordner),
  docs/GLOSSARY.md (Namen), docs/adr/_overview.md, bei Folgekarten der Review-Bericht.
- Vor dem Schneiden: Der Mensch bestätigt die Liste der Phasen (Titel und Ziel je Phase).

## Ablauf
1. Phasen festlegen, jede endet mit lauffähiger Software (Meilenstein):
   Phase 0 Gerüst und Test-Setup · Phase 1 dünnster durchgehender Pfad (Kern von A bis Z,
   auch hässlich) · Phase 2 restliche Muss · Phase 3 Kann und Feinschliff · Phase 4 Abschluss.
2. Phasen dem Menschen zeigen und bestätigen lassen. Erst dann Karten schneiden.
3. Pro Phase Karten schneiden. Jede Karte hat genau einen Zweck. Prüffrage: Braucht der Titel
   ein "und"? Dann teilen.
4. Pro Karte ausfüllen (Vorlage): ID, Titel als Ergebnis ("Bericht speichern"), Bezug (M/K,
   adr, Befund R..), Abhängig von, Schreiben (Dateien, die geändert werden dürfen), Lesen (was
   der Agent vorher liest), Beschreibung (max. 5 Zeilen), Nicht Teil der Karte, Abnahme
   (A1, A2 ... je "Wenn ..., dann ..."), Prüfungen (Befehle in Backticks), Status `offen`.
5. IDs fortlaufend (T01, T02 ...). Nie neu nummerieren. Geteilte Karte: T07 wird T07a und T07b.
6. Abhängigkeiten prüfen: keine zeigt nach vorn, keine im Kreis.
7. Namen und Pfade gegen GLOSSARY.md und ARCHITECTURE.md prüfen.
8. `bin/check-plan` ausführen und alle Fehler beheben. Dann Prüftabelle am Ende von PLAN.md
   aktualisieren (Vorlage `templates/plan-check.md`).

## Ausgabe
- `docs/plan/PLAN.md` mit Phasen, Karten und Prüftabelle.
- Im Chat: Anzahl Karten je Phase, erste Karte, offene Fragen.

## Qualitätstor
- [ ] Jede Muss-Anforderung hat mindestens eine Karte
- [ ] Jede Karte hat Bezug, Schreiben, Lesen, nummerierte Abnahme (Wenn/Dann) und Prüfungen
- [ ] `bin/check-plan` meldet keine Fehler
- [ ] Keine Karte grösser als eine Sitzung oder ca. 5 Dateien
- [ ] Keine Vorwärts- oder Kreisabhängigkeit
- [ ] Nicht-Ziele aus dem Brief kommen in keiner Karte vor
- [ ] Phasen vom Menschen bestätigt

## Verwandte Skills
- plan-challenge: Plan löchern vor der Freigabe.
- glossary-keeper: wenn eine Karte einen neuen Begriff braucht.

## Nicht tun
- Keine Karte "Aufräumen" oder "Verbessern" ohne messbares Ergebnis.
- Keine Karte, die Architektur ändert, ohne ADR (Skill adr-writer).
- Keine geschützten Pfade (AGENTS.md, Zeile "Geschützte Pfade") unter Schreiben.

## Weiterführend
- `templates/card.md` Karte mit Beispiel.
- `templates/plan-check.md` Prüftabelle.
