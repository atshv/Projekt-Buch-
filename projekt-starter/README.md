# Projekt-Starter

Ein leeres, wiederverwendbares Gerüst für Projekte mit KI-Unterstützung.

## So startest du (7 Schritte)
1. Kopiere diesen Ordner als Basis deines neuen Projekts.
2. Öffne AGENTS.md und ersetze die Angaben in [ECKIGEN KLAMMERN] (Abschnitt 1).
3. Starte eine Sitzung mit dem Prompt "1. Brief erstellen" aus START-PROMPTS.md. Oder nimm
   Prompt 16 und lass dich in einer Sitzung von der Idee bis zur Einrichtung führen.
4. Danach: Architect (Prompt 2), dann Agent (Prompt 3) Karte für Karte, dazwischen Reviewer.
   Nach Prompt 16 folgt Prompt 17 (Kaltstart-Test), dann geht es mit dem Agent (Prompt 3) weiter.
5. Brauchst du eine wiederkehrende Fähigkeit: Prompt 5 (Skill erstellen).
6. Befehle statt Kopieren: `bin/link-commands claude` (oder cursor, copilot, gemini). Dann tippst du /pb-bauen.
7. Gibt es das Projekt schon: Prompt 18 (Bestandsaufnahme), danach Prompt 8 für jeden Änderungswunsch.

## Inhalt
AGENTS.md            immer geladene Grundregeln (gilt für jedes KI-Programm)
CLAUDE.md, GEMINI.md, .cursor/rules/, .github/   verweisen nur auf AGENTS.md
START-PROMPTS.md     fertige Startsätze
toolkit/             in jedem Projekt gleich, nicht verändern
  agents/            brief-creator, architect, agent, reviewer, ui-judge
  skills/            SKILLMAP.md und alle Skills
  commands/          die Start-Prompts als Befehle /pb-* (bin/link-commands)
  governance/        code-style, git-workflow, anti-drift, definition-of-done
  templates/         Vorlagen für Prüfberichte, Änderungen und Bestandsaufnahme
docs/                nur dieses Projekt
  GLOSSARY.md        ein Begriff, ein Name im Code
  brief/ principles/ architecture/ adr/ integrations/ problem-to-solution/
  plan/ changes/ design/ handoff/ reviews/
brand/ bin/ scripts/ src/ tests/

Die Dateien sind projektunabhängig. Passe nur die eckigen Klammern an.
Update des Werkzeugs: toolkit/ ersetzen, docs/ bleibt unberührt.
