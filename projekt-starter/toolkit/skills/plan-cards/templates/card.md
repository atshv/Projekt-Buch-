# Vorlage: Aufgabenkarte

```markdown
### T05: [Ergebnis als Titel, z. B. "Bericht speichern"]
- Bezug: [M1 | K2 | adr-0002 | review-0003 R1]
- Abhängig von: [T03, T04 | -]
- Betrifft: [src/reports/save.py, tests/test_save.py]
- Beschreibung: [max. 5 Zeilen: was entsteht, Verhalten, Randfälle, Namen laut Glossar]
- Test: Fertig, wenn [messbar, z. B. "test_save.py grün und gespeicherter Bericht ladbar"].
- Status: offen
```

## Beispiel

```markdown
### T05: Bericht speichern
- Bezug: M1, adr-0002
- Abhängig von: T03, T04
- Betrifft: src/reports/save.py, tests/test_save.py
- Beschreibung: save_report(report) legt den Bericht lokal an und gibt die ID zurück.
  Leere Pflichtfelder lösen einen Fehler mit lesbarer Meldung aus. Ohne Netz wird der
  Bericht als "nicht abgeglichen" markiert (adr-0002).
- Test: Fertig, wenn test_save.py grün ist und ein gespeicherter Bericht wieder ladbar ist.
- Status: offen
```

Statuswerte: `offen` · `in Arbeit` · `erledigt` · `blockiert (Grund)`
