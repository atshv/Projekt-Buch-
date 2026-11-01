---
name: principle-writer
description: Formuliert prüfbare Grundsätze (P01, P02 ...) für das Projekt in
  docs/principles/PRINCIPLES.md, je mit Begründung, Folgen und Prüfung. Nutze diesen Skill, wenn
  der Architect Grundsätze festlegt, eine Regel für alle Entscheidungen gelten soll, oder der
  Mensch Grundsatz, Prinzip, Leitlinie, das muss immer gelten oder daran wollen wir uns halten
  sagt. Nicht für Code-Stil-Regeln (toolkit/governance/code-style.md) und nicht für einzelne
  Entscheidungen (adr-writer).
---

# Grundsätze schreiben

Grundsätze sind der Massstab für alle Entscheidungen. Wenige, klare, prüfbare Sätze.

## Kurzstart
- Wann: zu Projektbeginn (Architect, Schritt 2) oder wenn eine neue Regel für alles gelten soll.
- Ergebnis: Eintrag in `docs/principles/PRINCIPLES.md` nach `templates/principle.md`.
- Anzahl: 5 bis 10 für das ganze Projekt. Mehr verwässert.

## Benötigte Eingaben
- docs/brief/BRIEF.md: Ziele, Muss-Anforderungen, Grenzen, Nicht-Ziele.
- Bestehende Grundsätze (keine Doppelungen).

## Ablauf
1. Aus Brief und Gespräch Kandidaten sammeln: Was soll bei JEDER Entscheidung gelten?
   Quellen: Muss-Anforderungen, Grenzen (Datenschutz, Kosten, Offline), Werte des Menschen.
2. Jeden Kandidaten als einen Satz formulieren, positiv, als Vorgabe:
   gut "Daten bleiben auf dem Gerät, bis der Nutzer teilt", schlecht "Datenschutz ist wichtig".
3. Pro Grundsatz ausfüllen: Begründung (mit Bezug M..), Folgen (was wird leichter, was
   schwerer, was ausgeschlossen), Prüfung (woran ein Reviewer Einhaltung erkennt).
4. Gegenprobe: Würde der Grundsatz eine echte Option ausschliessen? Wenn nein, ist er zu
   allgemein. Schärfen oder streichen.
5. Widersprüche zwischen Grundsätzen suchen. Gefunden: Rangfolge festlegen lassen.
6. Nummern fortlaufend (P01 ...), nie neu vergeben. Gestrichen: Status "aufgehoben", bleibt stehen.
7. Dem Menschen zur Freigabe vorlegen. Erst freigegebene Grundsätze gelten.
8. Lesbarkeit mit dem Skill plain-language prüfen.

## Ausgabe
- `docs/principles/PRINCIPLES.md` mit Einträgen nach `templates/principle.md`.
- Im Chat: Liste der Grundsätze (Nummer + Satz), Frage nach Freigabe.

## Qualitätstor
- [ ] Jeder Grundsatz ein Satz, positiv, prüfbar
- [ ] Jeder hat Begründung mit Bezug, Folgen und Prüfung
- [ ] Jeder schliesst mindestens eine denkbare Option aus
- [ ] Keine Widersprüche oder Rangfolge festgelegt
- [ ] Vom Menschen freigegeben

## Verwandte Skills
- plan-challenge: Grundsätze löchern. adr-writer: Ausnahmen von Grundsätzen festhalten.

## Nicht tun
- Keine Selbstverständlichkeiten ("Der Code soll funktionieren").
- Keine Technik-Wahl als Grundsatz ("Wir nutzen React"). Stattdessen: ADR.

## Weiterführend
- `templates/principle.md` Aufbau mit Beispiel.
