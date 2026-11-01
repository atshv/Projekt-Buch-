---
name: plan-challenge
description: Löchert einen Plan, Brief oder Entwurf mit gezielten Fragen, eine nach der anderen,
  jeweils mit empfohlener Antwort, bis alles geklärt ist. Nutze diesen Skill, wenn der Mensch
  prüf meinen Plan, stell mir Fragen, hinterfrage das, was habe ich vergessen, Stresstest oder
  ist das durchdacht sagt, oder bevor Brief, Architektur oder eine grosse Karte freigegeben
  wird. Nicht für Code-Reviews (dafür Rolle Reviewer) oder reine Faktenfragen.
---

# Plan löchern

Ziel ist ein gemeinsames Verständnis, bevor gebaut wird. Jede offene Frage, die jetzt
geklärt wird, spart später eine falsche Karte.

## Kurzstart
- Wann: vor der Freigabe von Brief, Architektur, Grundsätzen oder grossen Änderungen.
- Ergebnis: geklärte Punkte direkt in den betroffenen Dateien, offene Punkte als [UNKLAR].
- Arbeitsweise: EINE Frage pro Nachricht, immer mit Empfehlung, auf Antwort warten.

## Benötigte Eingaben
- Der Plan oder Pfad zur Datei (z. B. docs/brief/BRIEF.md).
- docs/GLOSSARY.md, docs/principles/PRINCIPLES.md, docs/adr/_overview.md, falls vorhanden.

## Ablauf
1. Plan lesen und einen Entscheidungsbaum bilden: Welche Fragen hängen von welchen ab?
   Grundlegende zuerst (Ziel, Nutzer, Grenzen), Details zuletzt.
2. Was im Code oder in den Dateien steht, selbst nachsehen statt fragen.
3. Eine Frage stellen. Format:
   ```text
   Frage 3 von ca. 8: [Frage in einem Satz]
   Warum wichtig: [ein Halbsatz]
   Meine Empfehlung: [Antwort] , weil [Grund]
   ```
4. Antwort abwarten. Antwort sofort einarbeiten (Datei aktualisieren), dann nächste Frage.
5. Dabei laufend prüfen:
   - Begriff widerspricht dem Glossar? Sofort ansprechen: "Im Glossar heisst X ..., du meinst Y?"
   - Vages Wort ("Konto", "Daten")? Genauen Begriff vorschlagen, dann Skill glossary-keeper.
   - Behauptung widerspricht Code oder ADR? Widerspruch zeigen und fragen, was gilt.
   - Abstrakte Aussage? Mit einem konkreten Fall testen ("Was passiert, wenn der Techniker
     offline speichert und ein Kollege denselben Bericht ändert?").
6. Entscheidung gefallen, die schwer umkehrbar ist? ADR anbieten (Skill adr-writer), nur wenn
   alle drei ADR-Bedingungen erfüllt sind.
7. Abschluss: Liste "Geklärt" (mit Datei, in die es eingetragen wurde) und "Offen" (als
   [UNKLAR] im Dokument markiert).

## Ausgabe
- Aktualisierte Dateien (Brief, Architektur, Glossar, ADR).
- Abschlussliste im Chat: Geklärt, Offen, Nächster Schritt.

## Qualitätstor
- [ ] Jede Frage hatte eine Empfehlung
- [ ] Jede Antwort ist in einer Datei angekommen, nicht nur im Chat
- [ ] Keine Frage gestellt, die eine Datei schon beantwortet
- [ ] Offene Punkte sind als [UNKLAR] im Dokument sichtbar

## Verwandte Skills
- glossary-keeper: Begriffe festlegen. adr-writer: Entscheidungen festhalten.
- decision-brief: wenn eine Frage mehrere ernsthafte Lösungen hat.

## Nicht tun
- Nie mehrere Fragen auf einmal, weil der Mensch sonst nur einen Teil beantwortet.
- Nie ohne Empfehlung fragen. Der Mensch soll bestätigen können statt selbst erarbeiten.
- Nicht weiterbohren, wenn der Mensch "reicht" sagt. Stattdessen: Offenes markieren, abschliessen.
