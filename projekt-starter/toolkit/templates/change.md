# CHANGE: [Name der Änderung]

Status: Entwurf | freigegeben am [DATUM]     Angelegt: [JJJJ-MM-TT]
Karten: [T07, T08]

## 1. Wunsch (wörtlich)
> [Was der Mensch gesagt hat]

## 2. Warum
[Welches Problem löst die Änderung? Bezug zu BRIEF.md (M.., K..), falls vorhanden.]

## 3. Was sich ändert
Jede Zeile beschreibt Verhalten, nicht Code. Form "Wenn ..., dann ...".
- NEU: Wenn [Aktion], dann [Ergebnis].
- GEÄNDERT: Wenn [Aktion], dann [neues Ergebnis] (vorher: [altes Ergebnis]).
- ENTFÄLLT: [Verhalten, das verschwindet].

## 4. Was gleich bleibt
- [Verhalten, das nicht kaputtgehen darf. Wird durch bestehende Tests belegt.]

## 5. Auswirkungen
| Bereich            | Betroffen                  |
|--------------------|----------------------------|
| Module / Dateien   | [..]                       |
| Daten              | [..]                       |
| Bestehende Karten  | [..]                       |

## 6. Offene Fragen
- [UNKLAR: Frage]

## 7. Übernahme (alles abhaken, bevor `bin/finish-change` läuft)
- [ ] Alle Karten oben stehen in PLAN.md mit Status "erledigt"
- [ ] BRIEF.md nachgeführt (neue Version) oder "nicht betroffen"
- [ ] ARCHITECTURE.md und BESTAND.md nachgeführt oder "nicht betroffen"
- [ ] GLOSSARY.md um neue Begriffe ergänzt oder "nicht betroffen"
- [ ] ADR für schwer umkehrbare Entscheidungen oder "nicht betroffen"
- [ ] README oder Doku nachgeführt oder "nicht betroffen"
