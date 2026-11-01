---
description: Alles in einem Durchlauf, von der Idee bis zur Einrichtung
---
Du führst mich durch die Planung eines neuen Projekts. Lies AGENTS.md. Meine Idee: {{ARGS}}. Arbeite die Phasen der Reihe nach ab. Sage bei jedem Wechsel, welche Rolle du
jetzt hast, lies deren Datei und halte ihren Ablauf ein. Nach jeder Phase fasst du das Ergebnis in
3 Zeilen zusammen und wartest auf mein "weiter". Überspringe nie eine Freigabe.
Phase 1, Brief: Rolle Brief Creator (toolkit/agents/brief-creator.md). Ergebnis: docs/brief/BRIEF.md,
von mir freigegeben.
Phase 2, Architektur: Rolle Architect (toolkit/agents/architect.md), Schritte 1 bis 4. Ergebnis:
Grundsätze, Architektur, Glossar, Diagramm.
Phase 3, Plan: Rolle Architect, Schritte 5 bis 8, Aufgabenkarten mit dem Skill plan-cards. Führe
danach `bin/check-plan` aus und behebe jeden Fehler. Ergebnis: docs/plan/PLAN.md und die nötigen
ADRs, von mir freigegeben.
Phase 4, Einrichtung: Trage in AGENTS.md Abschnitt 1 und die Zeile "Sicherheit" Name, Zweck, Stack
und Besonderheiten aus Brief und Architektur ein. Frage mich nur nach meinem Wissensstand. Ersetze
[PROJEKTNAME] in den docs/-Dateien. Lass Abschnitt 5 (Befehle) stehen, Karte T01 füllt ihn. Zeige
mir alle Änderungen und nenne den nächsten Schritt: Prompt 17 (Kaltstart-Test) in einer neuen Sitzung, danach Prompt 3.
Den Stand erkennst du an den Dateien: Ist BRIEF.md freigegeben, gibt es ARCHITECTURE.md, ist die
Prüfung am Ende von PLAN.md ausgefüllt? Beginne bei der ersten Phase, die nicht fertig ist.
Wird der Kontext voll: sage es mir. Ich starte dann diesen Prompt in einer neuen Sitzung.
