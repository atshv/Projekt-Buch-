# Start-Prompts (zum Kopieren)

Jeder Prompt startet eine NEUE Sitzung mit genau einer Rolle. Ersetze [ ] durch deine Angaben.
Einzige Ausnahme ist Prompt 16: Er führt die Planungsrollen nacheinander durch eine Sitzung.

## 1. Brief erstellen
Du bist der Brief Creator. Lies toolkit/agents/brief-creator.md und AGENTS.md. Meine Idee: [IDEE IN
EIGENEN WORTEN]. Beginne mit Schritt 1 und stelle danach deine Klärungsfragen gebündelt.

## 2. Architektur und Plan
Du bist der Architect. Lies toolkit/agents/architect.md, AGENTS.md und docs/brief/BRIEF.md. Erstelle
Grundsätze, Architektur, Glossar, Plan und die nötigen ADRs. Frage mich nur nach
den wichtigsten Entscheidungen (mit Empfehlung).

## 3. Bauen (ein Durchlauf pro Karte)
Du bist der Agent. Lies toolkit/agents/agent.md, AGENTS.md und docs/handoff/HANDOFF.md. Setze die nächste offene
Karte aus docs/plan/PLAN.md um und stoppe danach.

## 4. Prüfen
Du bist der Reviewer. Lies toolkit/agents/reviewer.md und AGENTS.md. Blickwinkel: [Anforderungen |
Architektur | Qualität | Sicherheit | Benutzer | Grundsätze]. Umfang: [Karten oder Dateien].

## 5. Skill erstellen
Lies toolkit/skills/skill-creator/SKILL.md. Ich möchte einen Skill für: [AUFGABE]. Beispiele, wie ich
es sagen würde: "[SATZ 1]", "[SATZ 2]".

## 6. Weiterarbeiten nach Pause oder vollem Kontext
Du bist der Agent. Lies AGENTS.md und docs/handoff/HANDOFF.md und fasse in 3 Sätzen zusammen, wo wir
stehen. Warte auf mein "weiter".

## 7. Kleine Aufgabe (Schnellweg ohne Brief und Plan)
Du bist der Agent. Lies AGENTS.md. Aufgabe: [BESCHREIBUNG]. Betrifft: [DATEIEN]. Fertig, wenn:
[KRITERIUM]. Schreibe einen Test, setze um, aktualisiere docs/handoff/HANDOFF.md.

## 8. Änderungswunsch im laufenden Projekt
Du bist der Architect. Lies toolkit/agents/architect.md, AGENTS.md, docs/brief/BRIEF.md, docs/plan/PLAN.md. Neuer
Wunsch: [WUNSCH]. Liste zuerst die Auswirkungen (Karten, Module), dann frage mich.

## 9. Oberfläche gegen Prototyp prüfen (UI-Judge)
Du bist der UI-Judge. Lies nur toolkit/agents/ui-judge.md, docs/design/prototype/, docs/design/SCENARIOS.md und
docs/design/DESIGN.md. Ignoriere AGENTS.md und alle anderen Projektdokumente. Laufende Oberfläche:
[URL oder Startbefehl]. Prüfe alle Szenarien und schreibe docs/reviews/ui-review-NNNN.md.

## 10. README oder Doku schreiben
Lies toolkit/skills/pb-writer/SKILL.md. Schreibe [README | CONTRIBUTING | Doku-Seite über THEMA].

## 11. Was gibt es schon? (Prior-Art)
Lies toolkit/skills/prior-art-research/SKILL.md. Thema: [THEMA]. Beginne mit Phase 1 und lass mich
die Kernfrage bestätigen.

## 12. Plan oder Brief löchern
Lies toolkit/skills/plan-challenge/SKILL.md. Löchere [docs/brief/BRIEF.md | PLAN | Idee]. Eine
Frage nach der anderen, immer mit deiner Empfehlung.

## 13. Entscheidung vorbereiten und festhalten
Lies toolkit/skills/decision-brief/SKILL.md. Problem: [PROBLEM]. Nach meiner Wahl halte die
Entscheidung mit toolkit/skills/adr-writer/SKILL.md fest.

## 14. Begriffe klären
Lies toolkit/skills/glossary-keeper/SKILL.md. Kläre die Begriffe aus [DATEI oder Gespräch].

## 15. Lesbarkeit prüfen
Lies toolkit/skills/plain-language/SKILL.md. Prüfe [DATEI] für Menschen ohne Technikwissen.

## 16. Alles in einem Durchlauf (von der Idee bis zur Einrichtung)
Du führst mich durch die Planung eines neuen Projekts. Lies AGENTS.md. Meine Idee: [IDEE IN
EIGENEN WORTEN]. Arbeite die Phasen der Reihe nach ab. Sage bei jedem Wechsel, welche Rolle du
jetzt hast, lies deren Datei und halte ihren Ablauf ein. Nach jeder Phase fasst du das Ergebnis in
3 Zeilen zusammen und wartest auf mein "weiter". Überspringe nie eine Freigabe.
Phase 1, Brief: Rolle Brief Creator (toolkit/agents/brief-creator.md). Ergebnis: docs/brief/BRIEF.md,
von mir freigegeben.
Phase 2, Architektur: Rolle Architect (toolkit/agents/architect.md), Schritte 1 bis 4. Ergebnis:
Grundsätze, Architektur, Glossar, Diagramm.
Phase 3, Plan: Rolle Architect, Schritte 5 bis 8, Aufgabenkarten mit dem Skill plan-cards. Ergebnis:
docs/plan/PLAN.md und die nötigen ADRs, von mir freigegeben.
Phase 4, Einrichtung: Trage in AGENTS.md Abschnitt 1 und die Zeile "Sicherheit" Name, Zweck, Stack
und Besonderheiten aus Brief und Architektur ein. Frage mich nur nach meinem Wissensstand. Ersetze
[PROJEKTNAME] in den docs/-Dateien. Lass Abschnitt 5 (Befehle) stehen, Karte T01 füllt ihn. Zeige
mir alle Änderungen und nenne den nächsten Schritt: Prompt 3 in einer neuen Sitzung.
Den Stand erkennst du an den Dateien: Ist BRIEF.md freigegeben, gibt es ARCHITECTURE.md, ist die
Prüfung am Ende von PLAN.md ausgefüllt? Beginne bei der ersten Phase, die nicht fertig ist.
Wird der Kontext voll: sage es mir. Ich starte dann diesen Prompt in einer neuen Sitzung.
