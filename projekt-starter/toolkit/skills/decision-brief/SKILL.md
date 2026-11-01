---
name: decision-brief
description: Macht aus einem Problem mit mehreren möglichen Lösungen eine kurze
  Entscheidungsvorlage mit Problem, Kriterien, 2 bis 5 Optionen, Vor- und Nachteilen und
  Empfehlung. Nutze diesen Skill, wenn der Mensch welche Möglichkeiten gibt es, was ist besser,
  vergleiche, Entscheidungshilfe, A oder B oder wir haben ein Problem mit sagt, oder der
  Architect vor einer grossen Wahl steht. Nicht für bereits gefallene Entscheidungen (dafür
  adr-writer) und nicht für Produktkäufe ohne Projektbezug.
---

# Entscheidungsvorlage

Eine faire Gegenüberstellung, die auch ein Mensch ohne Technikwissen in 5 Minuten versteht
und entscheiden kann.

## Kurzstart
- Wann: Ein Problem hat mehrere ernsthafte Lösungen, und jemand muss wählen.
- Ergebnis: `docs/problem-to-solution/<problem-kurz>.md` nach `templates/decision-brief.md`.
- Nach der Entscheidung: ADR mit dem Skill adr-writer, Vorlage verlinkt darauf.

## Benötigte Eingaben
- Problem in eigenen Worten, warum es jetzt wichtig ist.
- Wer entscheidet und bis wann.
- Grenzen, Annahmen, Nicht-Ziele, bekannte Risiken.
- Bewertungskriterien (sonst vorschlagen: Nutzen, Aufwand, Risiko, Passt zu Grundsätzen).
Fehlt etwas: gebündelt fragen. Kosten, Zeiten und Meinungen nie erfinden.

## Ablauf
1. Problem in 2 bis 3 Sätzen klären, mit Wirkung für Nutzer oder Betrieb.
2. Begriffe gegen docs/GLOSSARY.md prüfen. Unklar: Skill glossary-keeper.
3. Annahmen und Kriterien mit dem Skill plan-challenge kurz löchern (höchstens 5 Fragen).
4. 2 bis 5 realistische Optionen sammeln. "Nichts tun" oder "später" nur, wenn das ein
   echter Weg ist. Keine Strohmann-Optionen, die nur zum Verlieren da sind.
5. Jede Option gegen dieselben Kriterien bewerten. Tabelle: Optionen als Spalten, Kriterien
   als Zeilen, jede Zelle ein Satz.
6. Vor- und Nachteile je Option, ausgewogen, 2 bis 4 Punkte.
7. Grundsätze aus docs/principles/PRINCIPLES.md prüfen: verletzt eine Option einen? Markieren.
8. Erst jetzt Empfehlung: eine Option (oder gestaffelte Kombination) mit Begründung,
   Bedingungen für Erfolg und dem, was man aufgibt.
9. Offene Fragen als Liste, mit Eigentümer.
10. Lesbarkeit mit dem Skill plain-language prüfen (Ziel: Lesewert 50 oder mehr).

## Ausgabe
- Datei `docs/problem-to-solution/<problem-kurz>.md` (Kleinbuchstaben, Bindestriche).
- Im Chat: Empfehlung in einem Satz und die Frage, wer bis wann entscheidet.

## Qualitätstor
- [ ] Zusammenfassung oben, verständlich ohne Technikwissen
- [ ] Alle Optionen gegen dieselben Kriterien bewertet
- [ ] Keine erfundenen Zahlen, Unbekanntes als offene Frage
- [ ] Grundsätze geprüft
- [ ] Empfehlung mit Begründung und Bedingungen

## Verwandte Skills
- plan-challenge, glossary-keeper, plain-language (unterwegs), adr-writer (danach).
- prior-art-research: wenn unklar ist, welche Lösungen es überhaupt gibt.

## Nicht tun
- Empfehlung nie vor dem Vergleich schreiben, weil sie sonst den Vergleich färbt.
- Keine Technik-Details, die die Wahl nicht beeinflussen.

## Weiterführend
- `templates/decision-brief.md` Aufbau der Vorlage.
