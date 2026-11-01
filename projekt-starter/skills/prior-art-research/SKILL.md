---
name: prior-art-research
description: Sucht gründlich, was es zu einer Idee schon gibt, in Fachartikeln (arXiv und
  andere), Open-Source-Projekten und Werkzeugen, bevor gebaut oder entschieden wird. Nutze
  diesen Skill, wenn der Mensch Stand der Technik, gibt es das schon, Forschung, Paper,
  arXiv, Vorbilder, bestehende Lösungen oder "bevor wir das selbst bauen" sagt, oder wenn der
  Architect eine grosse Technikentscheidung vorbereitet. Nicht für schnelle Faktenfragen,
  Produktvergleiche zum Kaufen oder das Schreiben von Doku.
---

# Prior-Art-Recherche

Bevor man etwas Neues baut, prüft man, was es schon gibt. Das spart Arbeit, zeigt bewährte
Lösungen und verhindert, dass man bekannte Fehler wiederholt.

## Ablauf (Phasen strikt nacheinander, jede liefert eine Datei)
Arbeitsordner: `research/<thema-in-kleinbuchstaben>/`

1. **Frage schärfen** → `00-frage.md`
   Eine Kernfrage, 3 bis 6 Teilfragen, Ein- und Ausschlusskriterien (Zeitraum, Sprache,
   Anwendungsfeld). Dem Menschen zeigen und bestätigen lassen.
2. **Breit suchen** → `01-treffer.md`
   Suche nach `references/search-strategy.md`. 20 bis 60 Kandidaten mit Titel, Jahr, Quelle,
   Link, einem Satz Inhalt. Jeder Eintrag mit Link, sonst weglassen.
3. **Sichten** → `02-auswahl.md`
   Nach Relevanz zur Kernfrage bewerten (hoch/mittel/niedrig) mit Begründung in einer Zeile.
   8 bis 15 Treffer für die Tiefe wählen. Begutachtete Arbeiten vor Vorabdrucken.
4. **Tief lesen** → `03-notizen.md`
   Pro gewählter Arbeit: Problem, Ansatz, Ergebnis mit Zahlen, Grenzen, Bezug zu unserer Frage.
   Nur aus dem Volltext, nicht aus der Zusammenfassung. Nicht lesbar? Als "nur Abstract" markieren.
5. **Code und Werkzeuge** → `04-code.md`
   Umsetzungen auf GitHub und Werkzeuge: Link, Sprache, letzte Aktivität, Lizenz, Reife.
6. **Verdichten** → `05-synthese.md`
   Ansätze in Gruppen ordnen, Vergleichstabelle, Lücken, was für unser Projekt passt.
7. **Bericht** → `PRIOR-ART.md` (im Arbeitsordner) nach `references/report-template.md`,
   danach Zusammenfassung von 5 Zeilen an den Architect bzw. Menschen.

## Regeln
- Behaupte nie etwas ohne Quelle. Stattdessen: "Keine Quelle gefunden" schreiben.
- Kennzeichne Vorabdrucke (nicht begutachtet) immer als solche.
- Übernimm keinen Code ohne Lizenzprüfung. Stattdessen: Lizenz in `04-code.md` notieren.
- Bleib bei der Kernfrage. Interessantes Nebenthema: unter "Später" notieren.

## Prüfen
- [ ] Jede Aussage im Bericht hat einen Link
- [ ] Vorabdrucke sind markiert
- [ ] Empfehlung für unser Projekt in 3 bis 5 Sätzen vorhanden
- [ ] Offene Fragen und Lücken sind genannt

## Weiterführend
- Lies `references/search-strategy.md` vor Phase 2.
- Lies `references/report-template.md` vor Phase 7.
