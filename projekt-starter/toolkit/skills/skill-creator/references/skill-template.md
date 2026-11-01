# Vorlage: SKILL.md im Standard-Gerüst

Kopiere den Block nach `toolkit/skills/<name>/SKILL.md` (oder nutze `bin/new-skill <name>`),
ersetze alles in [ECKIGEN KLAMMERN]. Abschnitte nie umbenennen, damit alle Skills gleich
aufgebaut sind und das Prüfskript sie erkennt.

```markdown
---
name: [kleinbuchstaben-mit-bindestrich]
description: [Was der Skill tut, 1 Satz, mit Ergebnis und Ort]. Nutze diesen Skill, wenn
  [Situation 1], [Situation 2] oder der Mensch [Stichwort 1], [Stichwort 2], [Stichwort 3]
  sagt, auch wenn [Sonderfall]. Nicht für [Fehlgriff 1] oder [Fehlgriff 2] (dafür [Skill]).
---

# [Titel]

[1 bis 2 Sätze: Zweck und warum es den Skill gibt.]

## Kurzstart
- Wann: [Auslöser]
- Ergebnis: `[docs/bereich/datei-NNNN-titel.md]` [und was im Chat gemeldet wird]
- Schnellweg: `[Befehl oder Beispielauftrag]`

## Benötigte Eingaben
- [Datei/Angabe] [wozu]
Fehlt etwas: gebündelt fragen. Nie erfinden.

## Ablauf
1. [Verb] [Objekt]. Ergebnis: [überprüfbar].
2. [Verb] [Objekt]. Ergebnis: [überprüfbar].
3. [Verb] [Objekt]. Ergebnis: [überprüfbar].

## Ausgabe
- Datei: `[Ort/Name]` nach `templates/[vorlage].md`
- Nummerierung: [4 Ziffern, höchste vorhandene + 1, nie umnummerieren]
- Im Chat: [was in 1 bis 3 Zeilen gemeldet wird]

## Beispiele
**Auftrag:** [realistischer Satz des Menschen]
**Ergebnis:** [kurz]

## Qualitätstor
- [ ] [Prüfpunkt]
- [ ] [Prüfpunkt]

## Verwandte Skills
- [skill]: [wann übergeben]

## Nicht tun
- Nie [Verbot], weil [Grund]. Stattdessen: [Alternative].

## Weiterführend
- `templates/[vorlage].md` [wofür]
- `scripts/[skript].py` [wofür]. Hilfe: `--help`.
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
toolkit/skills/[name]/
  SKILL.md          Pflicht, Standard-Gerüst
  templates/        Vorlagen, die ausgefüllt werden
  references/       Nachschlagen, nur bei Bedarf gelesen
  scripts/          ausführbare Hilfen mit --help
  assets/           Bilder, Schriften, feste Dateien
  tests/            prompts.md, trigger-queries.md
```
