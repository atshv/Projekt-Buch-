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
- Grösse: klein. Ziel 20 bis 60 Minuten, am besten höchstens 3 Dateien und 4 Abnahmepunkte.
- Gewicht: `bin/check-plan --liste` zeigt es je Karte (Dateien + Abnahmen + Beschreibung über 3 Zeilen
  + Abhängigkeiten über 2). Klein bis 6, mittel 7 bis 9, gross ab 10. Gross wird immer geteilt.

## Benötigte Eingaben
- docs/brief/BRIEF.md (M.., K..), docs/architecture/ARCHITECTURE.md (Module, Ordner),
  docs/GLOSSARY.md (Namen), docs/adr/_overview.md, bei Folgekarten der Review-Bericht.
- Vor dem Schneiden: Der Mensch bestätigt die Liste der Phasen (Titel und Ziel je Phase).

## Entwurf aus Brief und Architektur (Prompt 19)
1. Lies Brief und Architektur. Leite die Karten ab: je Modul und je Muss-Anforderung mindestens eine.
2. Zeige eine Tabelle: ID, Titel, Bezug, Dateien, Abnahmepunkte, Gewicht. Schreibe noch nichts.
3. Teile jede grosse Karte schon im Entwurf. Warte auf das "ja" des Menschen.
4. Erst dann PLAN.md schreiben und mit dem Ablauf unten (ab Schritt 4) füllen.

## Zu grosse Karte teilen (Prompt 20)
1. Gruppiere die Abnahmepunkte nach den Dateien, die sie berühren.
2. Jede Gruppe wird eine Karte mit eigenen Dateien. Neue IDs: T07 wird T07a und T07b.
3. Spätere Karten, die von T07 abhingen, hängen von der Karte ab, die sie wirklich brauchen.
4. `bin/check-plan --liste` ausführen. Keine Karte darf mehr gross sein.

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
   (A1, A2 ... je "Wenn ..., dann ..."), Prüfungen (Befehle in Backticks), Test zuerst (`ja`,
   sonst `nein (Grund)`), Status `offen`.
5. IDs fortlaufend (T01, T02 ...). Nie neu nummerieren. Geteilte Karte: T07 wird T07a und T07b.
6. Abhängigkeiten prüfen: keine zeigt nach vorn, keine im Kreis.
7. Namen und Pfade gegen GLOSSARY.md und ARCHITECTURE.md prüfen.
8. `bin/check-plan --liste` ausführen und alle Fehler beheben. Dann Prüftabelle am Ende von PLAN.md
   aktualisieren (Vorlage `templates/plan-check.md`).

## Ausgabe
- `docs/plan/PLAN.md` mit Phasen, Karten und Prüftabelle.
- Im Chat: Anzahl Karten je Phase, erste Karte, offene Fragen.

## Qualitätstor
- [ ] Jede Muss-Anforderung hat mindestens eine Karte
- [ ] Jede Karte hat Bezug, Schreiben, Lesen, nummerierte Abnahme (Wenn/Dann) und Prüfungen
- [ ] `bin/check-plan` meldet keine Fehler
- [ ] Keine Karte grösser als eine Sitzung, am besten höchstens 3 Dateien und 4 Abnahmepunkte
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
