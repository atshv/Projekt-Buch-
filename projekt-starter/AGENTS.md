# AGENTS.md

Diese Datei wird in JEDER Sitzung zuerst gelesen. Sie ist kurz (Ziel: unter 100 Zeilen).
Details stehen in toolkit/ (gleich in jedem Projekt) und docs/ (nur dieses Projekt).

## 1. Projekt
- Name: [PROJEKTNAME]
- Zweck in einem Satz: [WAS DAS PROJEKT TUT UND FÜR WEN]
- Stack: [SPRACHE, FRAMEWORK, DATENBANK, HOSTING]
- Sprache der Antworten und Kommentare: Deutsch. Code, Dateinamen, Variablen: Englisch.
- Wissensstand des Menschen: [z. B. "programmiert nicht"]. Erkläre Ergebnisse passend dazu.

## 2. Lies zuerst (in dieser Reihenfolge)
1. docs/handoff/HANDOFF.md            aktueller Stand, nächster Schritt (immer)
2. docs/plan/PLAN.md                  Aufgabenkarten mit IDs (immer)
3. docs/GLOSSARY.md                   Begriffe und Namen im Code (bevor du etwas benennst)
4. docs/architecture/ARCHITECTURE.md  Struktur und Regeln (bei Struktur- oder Designfragen)
5. docs/principles/PRINCIPLES.md      Grundsätze, an denen alles gemessen wird
6. docs/adr/_overview.md              getroffene Entscheidungen (vor Änderungen an Grundlagen)
7. docs/brief/BRIEF.md                Anforderungen, nur bei Unklarheit über das Ziel

## 3. Ordner
toolkit/   agents/ (Rollen), skills/ (Skills + SKILLMAP.md), governance/ (Regeln), templates/
docs/      GLOSSARY.md, brief/, principles/, architecture/, adr/, integrations/,
           problem-to-solution/, research/, plan/, design/, handoff/, reviews/
brand/ Marke · bin/ Befehle · scripts/ Hilfsskripte · src/ Code · tests/ Tests
Neue Ordner nur mit Grund in einem ADR (docs/adr/). toolkit/ wird im Projekt nicht verändert.

## 4. Rollen (eine Sitzung = eine Rolle)
| Rolle     | Datei                           | Schreibt                                      |
|-----------|---------------------------------|-----------------------------------------------|
| Brief     | toolkit/agents/brief-creator.md | docs/brief/BRIEF.md                           |
| Architect | toolkit/agents/architect.md     | principles, architecture, GLOSSARY, plan, adr |
| Agent     | toolkit/agents/agent.md         | src/, tests/, docs/handoff/                   |
| Reviewer  | toolkit/agents/reviewer.md      | docs/reviews/review-NNNN-*.md (kein Code)     |
| UI-Judge  | toolkit/agents/ui-judge.md      | docs/reviews/ui-review-NNNN.md                |
Starte eine Sitzung mit: "Du bist <Rolle>. Lies toolkit/agents/<datei> und AGENTS.md."

## 5. Befehle (trägt der Agent in Karte T01 ein und hält sie aktuell)
- Installieren: [BEFEHL]
- Starten:      [BEFEHL]
- Tests:        [BEFEHL]     Einzelner Test: [BEFEHL]
- Lint/Format:  [BEFEHL]
- Build:        [BEFEHL]
- Diagramme:    [BEFEHL, z. B. mmdc -i x.mmd -o x.svg]
- Plan prüfen:     bin/check-plan
- Umfang prüfen:   bin/check-scope <Karten-ID>
- Testlauf belegen: bin/record-test <Karten-ID> -p A1,A2 -- <Testbefehl>
- Fertig prüfen:   bin/check-done <Karten-ID>
Ist ein Befehl unbekannt, trage "[UNKLAR]" ein und frage den Menschen. Rate nie.

## 6. Regeln (Verbot + Alternative)
- Ändere nie Dateien ausserhalb von "Schreiben" der Karte (Prüfung: bin/check-scope). Alternative:
  schreibe den Fund in HANDOFF.md.
- Geschützte Pfade: toolkit/, bin/, .env, docs/brief/, docs/principles/, docs/architecture/
  (bin/check-scope erlaubt sie nie. Nur der Mensch oder der Architect ändert sie.)
- Füge nie neue Abhängigkeiten ohne Rückfrage hinzu. Alternative: nenne 2 Optionen im Chat.
- Schreibe nie Passwörter, Schlüssel oder Tokens in Dateien. Alternative: .env + .env.example.
- Lösche nie Daten oder Dateien ohne Freigabe. Alternative: verschiebe nach _archiv/.
- Überspringe nie Tests, um "fertig" zu melden. Alternative: melde den Fehler ehrlich.
  Belege Testläufe mit bin/record-test. "erledigt" erst, wenn bin/check-done "FERTIG" meldet.
- Erfinde nie Fakten über Code, den du nicht gelesen hast. Alternative: lies die Datei.
- Ändere nie die Architektur als Agent. Alternative: Vorschlag in HANDOFF.md unter "Fragen".
- Mache nie mehrere Aufgaben gleichzeitig. Eine Karten-ID pro Durchlauf.

## 7. Regeln für alle Rollen (toolkit/governance/)
- code-style.md: KISS, YAGNI, DRY, lesbare Namen, frühe Rückgaben, Warum-Kommentare.
- git-workflow.md: ein Zweig pro Karte, kleine Commits "T07: ...", Tests + Lint vorher grün.
- anti-drift.md: nach jeder Karte Plan, Dokumente und Code abgleichen.
- definition-of-done.md: Checkliste vor "fertig".
- Sicherheit: [Projektbesonderheiten, z. B. "Kundendaten nie in Logs schreiben"].
- Unterordner dürfen eine eigene AGENTS.md haben. Es gilt die nächstgelegene Datei.
  Anweisungen des Menschen im Chat gehen allem vor.

## 8. Skills
- Landkarte: toolkit/skills/SKILLMAP.md (welcher Skill für welche Aufgabe und Rolle).
- Lade einen Skill nur, wenn seine Beschreibung passt. Neuer Skill: skill-creator.

## 9. Rückverfolgung (alles hängt über IDs zusammen)
Brief M1 → Grundsatz P01 → Architektur (Modul) → adr-0003 → Karte T05 → Commit "T05: ..."
→ review-0002 Befund R1 → neue Karte T09. Jede Datei nennt die IDs, auf die sie sich bezieht.

## 10. Wann du stoppen und fragen musst
- Anforderung widersprüchlich oder mit [UNKLAR] markiert.
- Aufgabe braucht Änderung der Architektur, neue Abhängigkeit oder Datenlöschung.
- Test schlägt nach 3 ehrlichen Versuchen weiter fehl.
- Kontext wird voll: HANDOFF.md schreiben, "Bitte neue Sitzung starten", nicht weiterarbeiten.
Wichtiges lebt in Dateien, nicht im Chat.
