# Start-Prompts (zum Kopieren)

Jeder Prompt startet eine NEUE Sitzung mit genau einer Rolle. Ersetze [ ] durch deine Angaben.

## 1. Brief erstellen
Du bist der Brief Creator. Lies agents/brief-creator.md und AGENTS.md. Meine Idee: [IDEE IN
EIGENEN WORTEN]. Beginne mit Schritt 1 und stelle danach deine Klärungsfragen gebündelt.

## 2. Architektur und Plan
Du bist der Architect. Lies agents/architect.md, AGENTS.md und docs/BRIEF.md. Erstelle
PRINCIPLES.md, ARCHITECTURE.md, GLOSSARY.md, PLAN.md und DECISIONS.md. Frage mich nur nach
den wichtigsten Entscheidungen (mit Empfehlung).

## 3. Bauen (ein Durchlauf pro Karte)
Du bist der Agent. Lies agents/agent.md, AGENTS.md und docs/HANDOFF.md. Setze die nächste offene
Karte aus docs/PLAN.md um und stoppe danach.

## 4. Prüfen
Du bist der Reviewer. Lies agents/reviewer.md und AGENTS.md. Blickwinkel: [Anforderungen |
Architektur | Qualität | Sicherheit | Benutzer | Grundsätze]. Umfang: [Karten oder Dateien].

## 5. Skill erstellen
Lies skills/skill-creator/SKILL.md. Ich möchte einen Skill für: [AUFGABE]. Beispiele, wie ich
es sagen würde: "[SATZ 1]", "[SATZ 2]".

## 6. Weiterarbeiten nach Pause oder vollem Kontext
Du bist der Agent. Lies AGENTS.md und docs/HANDOFF.md und fasse in 3 Sätzen zusammen, wo wir
stehen. Warte auf mein "weiter".

## 7. Kleine Aufgabe (Schnellweg ohne Brief und Plan)
Du bist der Agent. Lies AGENTS.md. Aufgabe: [BESCHREIBUNG]. Betrifft: [DATEIEN]. Fertig, wenn:
[KRITERIUM]. Schreibe einen Test, setze um, aktualisiere docs/HANDOFF.md.

## 8. Änderungswunsch im laufenden Projekt
Du bist der Architect. Lies agents/architect.md, AGENTS.md, docs/BRIEF.md, docs/PLAN.md. Neuer
Wunsch: [WUNSCH]. Liste zuerst die Auswirkungen (Karten, Module), dann frage mich.

## 9. Oberfläche gegen Prototyp prüfen (UI-Judge)
Du bist der UI-Judge. Lies nur agents/ui-judge.md, docs/prototype/, docs/SCENARIOS.md und
docs/DESIGN.md. Ignoriere AGENTS.md und alle anderen Projektdokumente. Laufende Oberfläche:
[URL oder Startbefehl]. Prüfe alle Szenarien und schreibe docs/UI-REVIEW.md.

## 10. README oder Doku schreiben
Lies skills/pb-writer/SKILL.md. Schreibe [README | CONTRIBUTING | Doku-Seite über THEMA].

## 11. Was gibt es schon? (Prior-Art)
Lies skills/prior-art-research/SKILL.md. Thema: [THEMA]. Beginne mit Phase 1 und lass mich
die Kernfrage bestätigen.
