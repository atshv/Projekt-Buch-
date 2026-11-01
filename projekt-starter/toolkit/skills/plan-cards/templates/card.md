# Vorlage: Aufgabenkarte

```markdown
### T05: [Ergebnis als Titel, z. B. "Bericht speichern"]
- Bezug: [M1 | K2 | adr-0002 | review-0003 R1]
- Abhängig von: [T03, T04 | -]
- Schreiben: [Dateien, die der Agent anlegen oder ändern darf, höchstens 5]
- Lesen: [Dateien oder Abschnitte, die der Agent vorher lesen muss]
- Beschreibung: [max. 5 Zeilen: was entsteht, Verhalten, Randfälle, Namen laut Glossar]
- Nicht Teil der Karte: [was naheliegt, aber hier nicht gebaut wird]
- Abnahme:
  - A1: Wenn [Aktion], dann [messbares Ergebnis].
  - A2: Wenn [Fehlerfall], dann [Meldung oder Verhalten].
- Prüfungen: `[Befehl 1]`, `[Befehl 2]`
- Test zuerst: ja
- Status: offen
```

## Beispiel

```markdown
### T05: Bericht speichern
- Bezug: M1, adr-0002
- Abhängig von: T03, T04
- Schreiben: src/reports/save.py, tests/test_save.py
- Lesen: docs/architecture/ARCHITECTURE.md Abschnitt 5, src/reports/model.py
- Beschreibung: save_report(report) legt den Bericht lokal an und gibt die ID zurück.
  Ohne Netz wird der Bericht als "nicht abgeglichen" markiert (adr-0002).
- Nicht Teil der Karte: Anzeige der Berichte, Abgleich mit dem Server.
- Abnahme:
  - A1: Wenn ein gültiger Bericht gespeichert wird, dann gibt save_report eine ID zurück und der Bericht ist ladbar.
  - A2: Wenn ein Pflichtfeld leer ist, dann gibt es einen Fehler mit lesbarer Meldung und nichts wird gespeichert.
  - A3: Wenn kein Netz da ist, dann steht der Bericht als "nicht abgeglichen" in der Liste.
- Prüfungen: `pytest tests/test_save.py`
- Test zuerst: ja
- Status: offen
```

Regeln
- Klein halten: am besten höchstens 3 Dateien und 4 Abnahmepunkte, Ziel 20 bis 60 Minuten.
  `bin/check-plan` warnt darüber. Dann teilen (T07 wird T07a und T07b).
- Schreiben: nur Dateien, die wirklich entstehen oder sich ändern. `bin/check-scope` prüft das.
  Geschützte Pfade aus AGENTS.md dürfen hier nie stehen.
- Lesen: genau das, was der Agent braucht. Alles andere liest er nicht.
- Abnahme: jeder Punkt hat eine Nummer (A1, A2 ...) und die Form "Wenn ..., dann ...".
  `bin/record-test <ID> -p A1,A2 -- <Befehl>` belegt, welche Punkte ein Testlauf abdeckt.
- Prüfungen: die Befehle, die `bin/check-done` als Nachweis verlangt.
- Test zuerst: `ja` (Standard) heisst, der Test scheitert erst und wird dann grün. `bin/check-done`
  verlangt dafür einen roten Nachweis vor dem ersten grünen. Nur für reine Konfiguration oder
  Oberfläche: `nein (Grund)`.
- Statuswerte: `offen` · `in Arbeit` · `erledigt` · `blockiert (Grund)`
- Alte Karten mit "Betrifft" und "Test" werden noch akzeptiert, `bin/check-plan` warnt dann.
