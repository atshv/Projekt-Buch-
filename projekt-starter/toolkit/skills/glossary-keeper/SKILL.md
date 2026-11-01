---
name: glossary-keeper
description: Pflegt das Glossar des Projekts (docs/GLOSSARY.md), damit jeder Begriff genau eine
  Bedeutung und genau einen Namen im Code hat. Nutze diesen Skill, wenn ein neuer Fachbegriff
  auftaucht, zwei Wörter dasselbe meinen, ein Wort Verschiedenes meint, ein Name im Code
  gesucht wird, oder der Mensch Begriffe klären, Glossar, wie heisst das richtig oder
  einheitliche Namen sagt. Nicht für Erklärungen von allgemeinem Fachwissen, Code-Kommentare
  oder Projektentscheidungen (dafür adr-writer).
---

# Glossar pflegen

Ein Begriff, eine Bedeutung, ein Name im Code. Das Glossar ist die wichtigste Waffe gegen
Drift: Wenn alle dieselben Wörter nutzen, passen Plan, Code und Gespräch zusammen.

## Kurzstart
- Wann: Ein Begriff ist neu, mehrdeutig oder hat mehrere Namen.
- Ergebnis: aktualisierte `docs/GLOSSARY.md` und eine kurze Zusammenfassung im Chat.
- Vorlage beim ersten Mal: `templates/glossary.md`.

## Benötigte Eingaben
- Der Begriff und wo er vorkommt (Brief, Gespräch, Code, Karte).
- Bei Unklarheit: was der Mensch damit meint. Dafür gezielt nachfragen, eine Frage pro Begriff.

## Ablauf
1. Gespräch und betroffene Dateien nach Fachbegriffen durchsuchen: Dinge (Nomen), Tätigkeiten
   (Verben), Zustände, beteiligte Systeme und Personen.
2. Probleme finden und benennen:
   - Ein Wort, mehrere Bedeutungen ("Konto" = Kunde oder Login?).
   - Mehrere Wörter, eine Bedeutung ("Auftrag", "Order", "Bestellung").
   - Vage oder überladene Wörter ("Daten", "Info", "Objekt").
   - Wörter, die vermieden werden sollen (Herstellerbegriffe, alte Namen).
3. Pro Begriff einen bevorzugten Namen vorschlagen, mit Begründung in einem Halbsatz.
   Unklare Fälle als Frage an den Menschen, mit Empfehlung.
4. Nach Bestätigung in `docs/GLOSSARY.md` eintragen, im passenden Abschnitt:
   Begriffe · Personen und Rollen · Systeme · Daten · Beziehungen · Zu vermeiden · Offene Unklarheiten.
5. Name im Code festlegen (englisch, wie im Code-Stil): `invoice`, `serviceReport`.
   Er muss mit den Namen in docs/architecture/ARCHITECTURE.md übereinstimmen.
6. Inhaltsverzeichnis unter dem Titel aktuell halten.
7. Prüfen, ob bestehende Dateien den alten Namen nutzen. Nicht still ändern: Liste der
   Fundstellen in HANDOFF.md unter "Drift" eintragen.

## Ausgabe
- `docs/GLOSSARY.md` nach `templates/glossary.md`.
- Im Chat: neue Begriffe, geänderte Begriffe, offene Unklarheiten (je 1 Zeile).

## Qualitätstor (vor Abgabe)
- [ ] Jeder Begriff hat Bedeutung, Namen im Code und "zu vermeiden"
- [ ] Kein Begriff steht zweimal
- [ ] Keine Technik-Details im Glossar (es ist kein Plan und keine Spezifikation)
- [ ] Bedeutungen in einfacher Sprache, ein Satz
- [ ] Namen im Code stimmen mit ARCHITECTURE.md überein

## Verwandte Skills
- plan-challenge: Begriffe werden oft beim Löchern eines Plans geklärt. Danach hierher.
- adr-writer: wenn eine Begriffswahl eine schwer umkehrbare Entscheidung ist.

## Nicht tun
- Begriffe nicht erfinden, um Lücken zu füllen. Stattdessen: "Offene Unklarheiten".
- Kein Glossar als Notizblock nutzen. Stattdessen: HANDOFF.md.
- Alte Namen im Code nicht ohne Karte umbenennen. Stattdessen: Drift melden.

## Weiterführend
- `templates/glossary.md` Aufbau mit Beispielzeilen.
