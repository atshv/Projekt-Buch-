# AGENTS.md

Diese Datei wird in JEDER Sitzung zuerst gelesen. Sie ist kurz (Ziel: unter 100 Zeilen).
Details stehen in docs/ und skills/. Hier steht nur, was immer gelten muss.

## 1. Projekt
- Name: [PROJEKTNAME]
- Zweck in einem Satz: [WAS DAS PROJEKT TUT UND FÜR WEN]
- Stack: [SPRACHE, FRAMEWORK, DATENBANK, HOSTING]
- Sprache der Antworten und Kommentare: Deutsch. Code, Dateinamen, Variablen: Englisch.
- Wissensstand des Menschen: [z. B. "programmiert nicht"]. Erkläre Ergebnisse passend dazu.

## 2. Lies zuerst (in dieser Reihenfolge)
1. docs/HANDOFF.md      aktueller Stand, nächster Schritt (immer)
2. docs/PLAN.md         Aufgabenliste mit IDs (immer)
3. docs/ARCHITECTURE.md Struktur und Regeln (bei Struktur- oder Designfragen)
4. docs/DECISIONS.md    warum etwas so entschieden wurde (vor jeder Änderung an Grundlagen)
5. docs/BRIEF.md        Anforderungen, nur bei Unklarheit über das Ziel

## 3. Rollen (eine Sitzung = eine Rolle)
| Rolle     | Datei                  | Schreibt                            |
|-----------|------------------------|-------------------------------------|
| Brief     | roles/brief-creator.md | docs/BRIEF.md                       |
| Architect | roles/architect.md     | ARCHITECTURE, PLAN, DECISIONS       |
| Agent     | roles/agent.md         | Code, Tests, HANDOFF, PROGRESS      |
| Reviewer  | roles/reviewer.md      | docs/REVIEW.md (ändert keinen Code) |
Starte eine Sitzung mit: "Du bist <Rolle>. Lies roles/<datei> und AGENTS.md."

## 4. Befehle (trägt der Agent in Karte T01 ein und hält sie aktuell)
- Installieren: [BEFEHL]
- Starten:      [BEFEHL]
- Tests:        [BEFEHL]
- Lint/Format:  [BEFEHL]
- Build:        [BEFEHL]
Ist ein Befehl unbekannt, trage "[UNKLAR]" ein und frage den Menschen. Rate nie.

## 5. Regeln (Verbot + Alternative)
- Ändere nie Dateien ausserhalb der Aufgabe. Alternative: schreibe den Fund in HANDOFF.md.
- Füge nie neue Abhängigkeiten ohne Rückfrage hinzu. Alternative: nenne 2 Optionen im Chat.
- Schreibe nie Passwörter, Schlüssel oder Tokens in Dateien. Alternative: .env + .env.example.
- Lösche nie Daten oder Dateien ohne ausdrückliche Freigabe. Alternative: verschiebe nach _archiv/.
- Überspringe nie Tests, um "fertig" zu melden. Alternative: melde den Fehler ehrlich.
- Erfinde nie Fakten über Code, den du nicht gelesen hast. Alternative: lies die Datei.
- Ändere nie ARCHITECTURE.md als Agent. Alternative: Vorschlag in HANDOFF.md unter "Fragen".
- Mache nie mehrere Aufgaben gleichzeitig. Eine Aufgaben-ID pro Durchlauf.

## 6. Skills
- Skills liegen in skills/<name>/SKILL.md. Lade einen Skill nur, wenn seine Beschreibung passt.
- Verzeichnis: skills/README.md (Liste mit einem Satz pro Skill).
- Neuer Skill gewünscht? Nutze skills/skill-creator/SKILL.md.

## 7. Arbeitsablauf pro Aufgabe
1. Aufgabe aus PLAN.md wählen (erste mit Status "offen" und erfüllten Abhängigkeiten).
2. Kurz bestätigen: ID, Ziel, betroffene Dateien.
3. Test zuerst oder zugleich schreiben.
4. Umsetzen, Tests und Lint laufen lassen.
5. PLAN.md Status auf "erledigt" setzen, HANDOFF.md und PROGRESS.md aktualisieren.
6. Stoppen und dem Menschen in 3 Sätzen berichten.

## 8. Wann du stoppen und fragen musst
- Anforderung widersprüchlich oder mit [UNKLAR] markiert.
- Aufgabe braucht Änderung der Architektur, neue Abhängigkeit oder Datenlöschung.
- Test schlägt nach 3 ehrlichen Versuchen weiter fehl.
- Kontext wird voll (siehe Abschnitt 9).

## 9. Kontext und Übergabe
- Arbeite in kleinen Abschnitten. Nach jeder Aufgabe wird HANDOFF.md aktualisiert.
- Wird die Sitzung lang oder ungenau: HANDOFF.md schreiben, dem Menschen sagen
  "Bitte neue Sitzung starten", nicht weiterarbeiten.
- Wichtiges lebt in Dateien, nicht im Chat.

## 10. Definition of Done (für jede Aufgabe)
- [ ] Verhalten entspricht der Aufgabenkarte in PLAN.md
- [ ] Tests laufen grün (Befehl aus Abschnitt 4)
- [ ] Keine unbeteiligten Dateien geändert (git diff geprüft)
- [ ] HANDOFF.md und PROGRESS.md aktuell
- [ ] Keine Geheimnisse, keine Debug-Reste im Code
