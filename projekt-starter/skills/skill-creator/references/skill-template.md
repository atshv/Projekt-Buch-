# Vorlage: SKILL.md zum Ausfüllen

Kopiere den Block nach `skills/<name>/SKILL.md`, ersetze alles in [ECKIGEN KLAMMERN],
lösche nicht benötigte Abschnitte.

```markdown
---
name: [kleinbuchstaben-mit-bindestrich]
description: [Was der Skill tut, 1 Satz]. Nutze diesen Skill, wenn [Situation 1], [Situation 2]
  oder der Mensch [Stichwort 1], [Stichwort 2], [Stichwort 3] sagt, auch wenn [Sonderfall].
  Nicht für [Fehlgriff 1] oder [Fehlgriff 2].
---

# [Titel]

[Zweck in einem Satz. Warum gibt es diesen Skill?]

## Vorbereitung
1. Lies [Datei/Quelle], damit [Grund].
2. Prüfe, dass [Annahme]. Ist sie falsch: stoppe und frage.

## Ablauf
1. [Verb] [Objekt]. Ergebnis: [überprüfbar].
2. [Verb] [Objekt]. Ergebnis: [überprüfbar].
3. [Verb] [Objekt]. Ergebnis: [überprüfbar].

## Ausgabeformat
```text
[Exakte Vorlage mit Platzhaltern]
```

## Beispiele
**Eingabe:** [realistischer Auftrag]
**Ausgabe:** [erwartetes Ergebnis]

## Regeln
- Tue nie [Verbot], weil [Grund]. Stattdessen: [Alternative].
- Tue nie [Verbot], weil [Grund]. Stattdessen: [Alternative].

## Prüfen
- [ ] [Prüfpunkt 1]
- [ ] [Prüfpunkt 2]

## Weiterführend
- Lies `references/[datei].md`, wenn [Bedingung].
- Führe `scripts/[datei]` aus, um [Zweck]. Aufruf: `[Befehl]`.
```

## Optionale Frontmatter-Felder
| Feld            | Grenze                | Zweck                                          |
|-----------------|-----------------------|------------------------------------------------|
| license         | kurz                  | Lizenzname oder Verweis auf Datei              |
| compatibility   | 1 bis 500 Zeichen     | nur wenn Umgebung nötig (Programme, Netzwerk)  |
| metadata        | Schlüssel: Text       | z. B. author, version                          |
| allowed-tools   | Leerzeichen-getrennt  | vorab erlaubte Werkzeuge (experimentell)       |

## Ordnerstruktur
```text
skills/[name]/
  SKILL.md          Pflicht
  references/       lange Dokumente, nur bei Bedarf gelesen
  scripts/          ausführbare Hilfen
  assets/           Vorlagen und Dateien für das Ergebnis
  tests/            prompts.md, trigger-queries.md
```
