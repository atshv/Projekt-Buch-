# SKILLMAP

Landkarte aller Skills. Lies diese Datei, bevor du einen Skill lädst. Neuer Skill = neue
Zeile hier (macht der Skill Creator). Alle Skills haben dasselbe Gerüst: Kurzstart,
Benötigte Eingaben, Ablauf, Ausgabe, Qualitätstor, Verwandte Skills, Nicht tun.

## Nach Aufgabe
| Wenn die Aufgabe ist ...                      | Skill              | Ergebnis                       |
|-----------------------------------------------|--------------------|--------------------------------|
| Plan, Brief oder Entwurf hinterfragen         | plan-challenge     | geklärte Punkte in den Dateien |
| Grundsätze festlegen                          | principle-writer   | docs/principles/PRINCIPLES.md  |
| Begriffe klären, Namen im Code festlegen      | glossary-keeper    | docs/GLOSSARY.md               |
| herausfinden, was es schon gibt               | prior-art-research | docs/research/<thema>/         |
| mehrere Lösungen vergleichen                  | decision-brief     | docs/problem-to-solution/      |
| schwer umkehrbare Entscheidung festhalten     | adr-writer         | docs/adr/adr-NNNN-<titel>.md   |
| Architektur in Aufgabenkarten zerlegen        | plan-cards         | docs/plan/PLAN.md              |
| Commit-Nachricht schreiben                    | commit-message     | Nachricht "T07: ..."           |
| README, CONTRIBUTING oder Doku schreiben      | pb-writer          | README.md, docs/...            |
| Text verständlicher machen                    | plain-language     | Messwerte + Vorschläge         |
| Skill bauen, prüfen, verbessern               | skill-creator      | toolkit/skills/<name>/         |

## Nach Rolle
| Rolle         | Nutzt typischerweise                                         |
|---------------|--------------------------------------------------------------|
| Brief Creator | plan-challenge, glossary-keeper, prior-art-research,         |
|               | plain-language                                               |
| Architect     | principle-writer, glossary-keeper, decision-brief,           |
|               | adr-writer, plan-cards, plan-challenge, prior-art-research   |
| Agent         | commit-message, pb-writer, skill-creator                     |
| Reviewer      | plain-language (Texte), sonst keine                          |
| UI-Judge      | keine (bewusst nur Prototyp, Szenarien, DESIGN.md)           |

## Referenzen, Vorlagen, Skripte je Skill (nur bei Bedarf lesen)
- adr-writer: templates/adr.md, templates/overview-row.md, scripts/new_adr.py
- decision-brief: templates/decision-brief.md
- glossary-keeper: templates/glossary.md
- plain-language: scripts/readability.py
- plan-cards: templates/card.md, templates/plan-check.md
- principle-writer: templates/principle.md
- prior-art-research: references/search-strategy.md, references/report-template.md
- pb-writer: references/readme-writer.md, contributing-writer.md, documentation-writer.md
- skill-creator: references/skill-template.md, description-patterns.md, anti-patterns.md,
  scripts/validate_skill.py
- plan-challenge, commit-message: keine

## Typische Ketten
- Neue Idee: plan-challenge → prior-art-research → (Brief) → principle-writer
- Grosse Wahl: prior-art-research → decision-brief → adr-writer
- Plan: plan-cards → plan-challenge → Freigabe
- Jeder Text für Menschen: zuletzt plain-language

## Aufbau eines Skills
```text
toolkit/skills/<name>/
  SKILL.md        Beschreibung (Auslöser) + Standard-Gerüst
  templates/      Vorlagen zum Ausfüllen
  references/     Nachschlagen, nur bei Bedarf
  scripts/        ausführbare Hilfen mit --help
  tests/          prompts.md, trigger-queries.md
```
