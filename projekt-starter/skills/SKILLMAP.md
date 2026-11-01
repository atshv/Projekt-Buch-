# SKILLMAP

Landkarte aller Skills. Der Agent liest diese Datei, um zu entscheiden, welchen Skill er lädt.
Neuer Skill = neue Zeile hier (macht der Skill Creator in Phase 6).

## Nach Aufgabe
| Wenn die Aufgabe ist ...                      | Skill              |
|-----------------------------------------------|--------------------|
| einen Skill bauen, prüfen, verbessern         | skill-creator      |
| README, CONTRIBUTING oder Doku schreiben      | pb-writer          |
| herausfinden, was es schon gibt (Paper, Code) | prior-art-research |
| Commit-Nachricht schreiben                    | commit-message     |

## Referenzen je Skill (nur bei Bedarf lesen)
- skill-creator: skill-template, description-patterns, anti-patterns
- pb-writer: readme-writer, contributing-writer, documentation-writer
- prior-art-research: search-strategy, report-template
- commit-message: keine

## Nach Rolle
| Rolle         | Nutzt typischerweise                              |
|---------------|---------------------------------------------------|
| Brief Creator | prior-art-research (bei neuer Idee)               |
| Architect     | prior-art-research (vor grossen Entscheidungen)   |
| Agent         | commit-message, pb-writer, skill-creator          |
| Reviewer      | -                                                 |
| UI-Judge      | - (bewusst ohne Skills, nur Prototyp + DESIGN.md) |

## Aufbau eines Skills
```text
skills/<name>/
  SKILL.md        Beschreibung (Auslöser) + Ablauf
  references/     Nachschlagen, nur bei Bedarf gelesen
  scripts/        ausführbare Hilfen
  tests/          prompts.md, trigger-queries.md
```

Hinweis: commit-message ist zugleich ein Muster für eigene Skills.
Kopiere den Ordner, benenne ihn um und passe ihn an.
