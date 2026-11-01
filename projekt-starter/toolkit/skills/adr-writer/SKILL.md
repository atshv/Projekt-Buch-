---
name: adr-writer
description: Hält schwer umkehrbare Entscheidungen als kurze, nummerierte ADR-Dateien fest
  (docs/adr/adr-0001-titel.md) und pflegt die Übersicht. Nutze diesen Skill, wenn eine
  Entscheidung zu Technik, Datenhaltung, Schnittstellen, Grenzen oder einer bewussten
  Abweichung gefallen ist, oder der Mensch Entscheidung festhalten, ADR, warum haben wir das
  so gemacht oder dokumentiere die Wahl sagt. Nicht für kleine, leicht änderbare Entscheide,
  Aufgabenkarten oder Optionsvergleiche ohne Entscheidung (dafür decision-brief).
---

# ADR schreiben

Ein ADR (Architecture Decision Record, Entscheidungsprotokoll) hält fest, DASS etwas
entschieden wurde und WARUM. Es verhindert, dass später jemand das Bewusste "repariert".

## Kurzstart
- Wann: Eine Entscheidung ist gefallen und erfüllt alle drei Bedingungen (unten).
- Ergebnis: `docs/adr/adr-<4 Ziffern>-<kurzer-titel>.md` und eine Zeile in `docs/adr/_overview.md`.
- Schnellweg: `python3 toolkit/skills/adr-writer/scripts/new_adr.py "Titel der Entscheidung"`
  legt die Datei mit der nächsten Nummer an und trägt sie in die Übersicht ein.

## Die drei Bedingungen (alle müssen erfüllt sein)
1. **Schwer umkehrbar:** Eine spätere Änderung kostet spürbar Zeit oder Geld.
2. **Überraschend ohne Zusammenhang:** Ein späterer Leser würde fragen "Warum so?".
3. **Echte Abwägung:** Es gab ernsthafte Alternativen, und eine wurde aus Gründen gewählt.
Fehlt eine Bedingung: kein ADR. Fasse die Entscheidung in einem Satz im Chat oder in HANDOFF.md zusammen.

Typische ADR-Fälle: Grundaufbau (z. B. eine App statt mehrerer Dienste), Datenhaltung,
Verbindung zu fremden Systemen, Technik mit Bindung (Datenbank, Anmeldung, Hosting),
Grenzen ("Kundendaten nur im Modul X"), bewusste Abweichung vom Üblichen, unsichtbare
Vorgaben ("Antwort unter 200 ms wegen Vertrag").

## Benötigte Eingaben
- Die Entscheidung in einem Satz und der Zusammenhang (Problem, Anforderung M.., Grundsatz P..).
- Die ernsthaft geprüften Alternativen.
- Wer entschieden hat (Mensch oder Architect, vom Menschen bestätigt).
Fehlt etwas: gebündelt fragen. Nichts erfinden.

## Ablauf
1. Drei Bedingungen prüfen. Ergebnis: "ADR ja" oder "kein ADR, weil ...".
2. Nächste Nummer bestimmen: höchste vorhandene `adr-NNNN` in `docs/adr/` plus 1, beginnend
   bei 0001. Lücken bleiben bestehen, nie umnummerieren.
3. Dateiname bilden: `adr-NNNN-<titel>.md`, Titel in Kleinbuchstaben, Wörter mit Bindestrich,
   höchstens 6 Wörter, ohne Umlaute (ä→ae, ö→oe, ü→ue, ß→ss).
4. Vorlage `templates/adr.md` füllen. Zusammenfassung zuerst: höchstens zwei kurze Absätze,
   Wirkung für Nutzer oder Betrieb vor Technik.
5. Abschnitt "Entscheidung" direkt danach: gewählte Lösung und ihre Grenzen, klar und kurz.
6. Alternativen nur, wenn ihre Ablehnung nicht offensichtlich ist: erst als Liste, dann
   Vergleichstabelle mit den Zeilen Passt zur Architektur, Passt zu uns, Aufwand,
   Komplexität. Jede Zelle ein Satz, höchstens etwa 15 Wörter.
7. "Folgen": 3 bis 6 Punkte, nur nicht offensichtliche.
8. Bezüge eintragen: Anforderungen (M..), Grundsätze (P..), Karten (T..), ersetzte ADRs.
9. Zeile in `docs/adr/_overview.md` ergänzen (Nr, Titel als Link, Status, Bezug, Datum),
   sortiert nach Nummer.
10. Ersetzt das ADR ein älteres: im alten Status auf `ersetzt durch adr-NNNN` setzen, Inhalt
    des alten nie löschen.
11. Lesbarkeit prüfen mit dem Skill plain-language (Ziel: Lesewert 50 oder mehr).
12. Begriffe mit docs/GLOSSARY.md abgleichen. Neuer Begriff: Skill glossary-keeper.

## Status-Werte
`vorgeschlagen` · `angenommen` · `abgelöst` · `ersetzt durch adr-NNNN`

## Ausgabe
- Datei: `docs/adr/adr-NNNN-<titel>.md` nach `templates/adr.md`
- Übersicht: `docs/adr/_overview.md` (Format siehe `templates/overview-row.md`)
- Im Chat: Nummer, Titel, Status, 1 Satz Entscheidung.

## Qualitätstor (vor Abgabe)
- [ ] Alle drei Bedingungen erfüllt und kurz begründet
- [ ] Zusammenfassung höchstens zwei Absätze, ohne Technik-Details, die nichts entscheiden
- [ ] Abschnitt "Entscheidung" vorhanden und eindeutig
- [ ] Bezüge (M, P, T) eingetragen
- [ ] Zeile in der Übersicht, Status korrekt, Nummer eindeutig
- [ ] Lesewert geprüft, Begriffe stimmen mit GLOSSARY.md

## Verwandte Skills
- decision-brief: wenn noch keine Entscheidung gefallen ist (Optionen vergleichen). Danach hierher.
- glossary-keeper: wenn ein Begriff neu oder unklar ist.
- plain-language: Lesbarkeit prüfen.
Diese Abläufe nicht hier nachbauen, sondern den Skill nutzen und zurückkehren.

## Nicht tun
- Kein ADR für leicht änderbare Dinge (z. B. eine Hilfsbibliothek), weil die Übersicht sonst
  wertlos wird. Stattdessen: Satz in HANDOFF.md.
- Nie ein angenommenes ADR inhaltlich umschreiben. Stattdessen: neues ADR, altes ersetzen.
- Keine Geheimnisse, Zugangsdaten oder Kundennamen.

## Weiterführend
- `templates/adr.md` Vorlage mit Beispiel.
- `templates/overview-row.md` Format der Übersicht.
- `scripts/new_adr.py` legt Datei und Übersichtszeile an. Hilfe: `--help`.
