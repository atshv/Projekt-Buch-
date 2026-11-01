---
name: plain-language
description: Prüft deutsche Texte auf Lesbarkeit (Lesewert, Satzlänge, Absatzlänge, Passiv,
  Fachwörter) und schlägt einfachere Sätze vor. Nutze diesen Skill, wenn ein Text für Menschen
  ohne Technikwissen bestimmt ist, vor dem Abgeben von Brief, ADR, Entscheidungsvorlage, README
  oder Bericht, oder wenn der Mensch zu kompliziert, verständlicher, einfacher schreiben,
  Lesbarkeit oder versteh ich nicht sagt. Nicht für Code, Code-Kommentare oder Übersetzungen.
---

# Einfache Sprache prüfen

Texte sollen beim ersten Lesen verstanden werden. Dieser Skill misst und verbessert das.

## Kurzstart
- Messen: `python3 toolkit/skills/plain-language/scripts/readability.py <datei.md>`
- Ergebnis: Lesewert, Satzlängen, lange Sätze, Passiv-Kandidaten, Fachwörter, Ampel.
- Ziel für Leser ohne Technikwissen: Lesewert 50 oder mehr, Sätze im Schnitt unter 15 Wörtern.

## Messwerte und Ziele
| Messwert                   | Ziel           | Ampel                         |
|----------------------------|----------------|-------------------------------|
| Lesewert (Flesch, deutsch) | 50 oder mehr   | 🟢 ≥ 50 · 🟡 40–49 · 🔴 < 40   |
| Wörter pro Satz (Schnitt)  | unter 15       | 🟢 < 15 · 🟡 15–20 · 🔴 > 20   |
| Lange Sätze                | keine über 25  | jeder Satz über 25 wird gezeigt |
| Absatzlänge                | 2 bis 4 Sätze  | über 5 Sätze wird gezeigt     |
| Passiv                     | unter 10 %     | Kandidaten werden gezeigt     |
Der Lesewert nach Amstad: 180 − Wörter pro Satz − 58,5 × Silben pro Wort. Das Skript schätzt
Silben; die Zahl ist eine gute Näherung, kein exakter Wert.

## Benötigte Eingaben
- Text oder Datei, Zielgruppe (Standard: Menschen ohne Technikwissen).
- docs/GLOSSARY.md, Abschnitt "Zu vermeiden" (diese Wörter gelten als Fachwörter).

## Ablauf
1. Skript ausführen oder, ohne Python, Sätze und Wörter selbst zählen (Schätzung kennzeichnen).
2. Ergebnis mit Ampel ausgeben.
3. Für jeden langen Satz einen kürzeren Vorschlag schreiben (Bedeutung bleibt gleich).
4. Passiv in Aktiv umschreiben: "Der Bericht wird gespeichert" → "Die App speichert den Bericht".
5. Fachwörter: ersetzen oder beim ersten Vorkommen in Klammern erklären.
6. Wörter aus "Zu vermeiden" im Glossar durch den bevorzugten Begriff ersetzen.
7. Hat das Dokument oben eine Zeile "Lesewert", dort nur die Zahl eintragen (z. B. `54`).
8. Text überarbeiten, wenn der Mensch zustimmt, und erneut messen.

## Ausgabe (Format)
```text
Zielgruppe: Menschen ohne Technikwissen
Lesewert: 47 🟡 [mittelschwer; Ziel 50+]
Wörter pro Satz: 17,2 🟡 [Ziel unter 15]
Lange Sätze: 3  → Vorschläge unten
Passiv: 2 Kandidaten → Vorschläge unten
Fachwörter: Deployment, Endpoint → Vorschläge unten
Gesamt: Für die Zielgruppe noch etwas zu schwer.
```

## Qualitätstor
- [ ] Zielgruppe genannt
- [ ] Lesewert mit Ampel und Worterklärung (nicht nur die Zahl)
- [ ] Zu jedem gezeigten Problem ein konkreter Vorschlag
- [ ] Bedeutung des Textes unverändert

## Verwandte Skills
- glossary-keeper: wenn ein Fachwort im Projekt einen festen Namen braucht.
- pb-writer: beim Schreiben von README und Doku.

## Nicht tun
- Fachbegriffe, die im Glossar festgelegt sind, nicht durch Umschreibungen ersetzen.
- Rechtliche oder zitierte Texte nicht umschreiben. Stattdessen: nur markieren.

## Weiterführend
- `scripts/readability.py` Messung. Hilfe: `--help`.
