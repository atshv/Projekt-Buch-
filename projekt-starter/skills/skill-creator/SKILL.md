---
name: skill-creator
description: Erstellt, prüft und verbessert Skills (SKILL.md mit Ordnerstruktur). Nutze diesen Skill,
  wenn der Mensch einen neuen Skill, eine wiederverwendbare Anleitung, einen Workflow zum
  Speichern oder eine SKILL.md erstellen, ändern, prüfen oder testen will, oder sagt "mach
  daraus einen Skill". Nicht für einmalige Aufgaben, Projektdokumente (BRIEF, PLAN) oder Code.
---

# Skill Creator

Du baust Skills, die zuverlässig ausgelöst werden und beim Ausführen das Richtige tun.
Ein Skill ist eine gespeicherte Arbeitsanweisung. Er wird geladen, wenn seine Beschreibung
zur Aufgabe passt. Du arbeitest in 8 Phasen. Überspringe keine, ausser der Mensch sagt es.

## Phase 1: Absicht klären (Fragen, höchstens 5, gebündelt)
Wenn der Mensch einen Ablauf schon vorgeführt hat (Chatverlauf, Dateien), extrahiere zuerst:
Schritte, Korrekturen des Menschen, Ein- und Ausgabeformate. Frage nur das Fehlende:
1. Was soll Claude damit können? (ein Satz, Verb am Anfang)
2. Wann soll der Skill starten? (3 Beispielsätze, wie der Mensch es wirklich sagt)
3. Was kommt heraus? (Dateityp, Format, Ort)
4. Was darf nie passieren? (Grenzen, Risiken, Daten)
5. Welche Werkzeuge, Dateien, Befehle werden gebraucht?
Prüfe vorab: Gibt es schon einen Skill dafür (skills/README.md)? Dann erweitern statt neu.
Ist die Aufgabe einmalig oder nur ein Projektdokument? Dann KEIN Skill; sage das.

## Phase 2: Zuschnitt (ein Skill = eine Aufgabe)
- Passt der Skill nicht in einen Satz ohne "und": teilen.
- Zu klein (nur 2 Zeilen): in AGENTS.md aufnehmen statt Skill.
- Entscheide pro Inhalt, wo er lebt:
  | Inhalt                                      | Ort          |
  |---------------------------------------------|--------------|
  | Ablauf, Regeln, Entscheidungshilfen         | SKILL.md     |
  | Lange Nachschlagewerke, Varianten, Beispiele| references/  |
  | Wiederholbare, fehleranfällige Rechenarbeit | scripts/     |
  | Vorlagen, Dateien, die ins Ergebnis gehen   | assets/      |

## Phase 3: Name
Regeln (hart): 1 bis 64 Zeichen; nur a-z, 0-9 und Bindestrich; nicht am Anfang oder Ende
ein Bindestrich; kein doppelter Bindestrich (--); Ordnername = name.
Stil: Tätigkeit oder Gegenstand, 2 bis 4 Wörter, englisch: `pdf-report`, `db-migration`.

## Phase 4: Description schreiben (wichtigster Teil)
Die Beschreibung ist der EINZIGE Auslöser. Der Körper wird erst nach dem Start gelesen, also
gehört jede "Wann nutzen"-Information hierher. Harte Grenzen: 1 bis 1024 Zeichen, eine Zeile
oder ein Block ohne Zeilen mit `---`, keine spitzen Klammern.
Formel:  [Was der Skill tut, 1 Satz, Verben]. Nutze diesen Skill, wenn [Situationen]
oder der Mensch [Stichworte, so wie er spricht] sagt. Nicht für [nahe Fehlgriffe].
Regeln:
- Dritte Person oder Befehlsform, nie "Ich" oder "Du".
- Mindestens 3 Stichworte, die der Mensch wirklich benutzt, auch ohne den Fachbegriff.
- Etwas "drängend" formulieren (Skills werden eher zu selten ausgelöst als zu oft):
  "auch wenn der Mensch das Wort Skill nicht nennt".
- "Nicht für ..." nennt die 1 bis 3 nächsten Verwechslungen, nicht Beliebiges.
- Keine Verfahrensdetails in der Beschreibung.
Schlecht: `Hilft bei PDFs.`
Gut: `Liest Text und Tabellen aus PDFs, füllt Formulare, fügt Dateien zusammen. Nutze diesen
Skill bei PDF, Formular, Seiten extrahieren, zusammenfügen. Nicht für Word oder Bilder.`

## Phase 5: Körper schreiben (SKILL.md unter 500 Zeilen, ideal unter 200)
Gerüst (in dieser Reihenfolge):
1. `# Titel` und 1 Satz Zweck
2. `## Wann` (nur wenn Abgrenzung nötig; sonst weglassen)
3. `## Vorbereitung` (Dateien lesen, Annahmen prüfen)
4. `## Ablauf` nummerierte Schritte, jeder Schritt: Verb + Objekt + erwartetes Ergebnis
5. `## Ausgabeformat` exakte Vorlage in einem Codeblock
6. `## Beispiele` 1 bis 2 mit Eingabe und Ausgabe
7. `## Regeln` Verbot + Alternative
8. `## Prüfen` Checkliste vor Abgabe
9. `## Weiterführend` Verweise: "Lies references/X.md, wenn Y"
Stilregeln:
- Befehlsform. "Lies die Datei", nicht "Es wäre gut, die Datei zu lesen".
- Erkläre das WARUM in einem Halbsatz bei jeder wichtigen Regel. Das Modell handelt besser,
  wenn es den Zweck kennt. GROSSBUCHSTABEN-Verbote nur für echte Gefahr (Datenverlust, Geheimnisse).
- Strenge nach Fragilität: fragile, unumkehrbare Schritte = exakte Befehle und feste Reihenfolge.
  Robuste Schritte = Ziel + Kriterien, Weg offen lassen.
- Ein Standardweg statt vieler Optionen. Nenne Alternativen nur mit Auswahlregel.
- Verweise auf Dateien relativ zum Skill-Ordner, nur eine Ebene tief.
- references/-Dateien über 100 Zeilen bekommen oben ein Inhaltsverzeichnis.
- Keine Zeitangaben ("bis August 2026"), keine Geheimnisse, keine absoluten Pfade.
- Konsistente Begriffe: ein Ding hat einen Namen im ganzen Skill.
- Skripte: werden ausgeführt, nicht abgeschrieben. Sie brauchen Hilfetext, klare Fehlermeldungen.

## Phase 6: Prüfen (automatisch + Checkliste)
1. Führe aus: `python skills/skill-creator/scripts/validate_skill.py skills/<name>`
   Behebe jede Meldung. Das Skript prüft Name, Beschreibung, Länge, Struktur, Verweise.
2. Checkliste (alle abhaken, sonst zurück zu Phase 4/5):
   - [ ] Beschreibung enthält "Nutze diesen Skill, wenn" und "Nicht für"
   - [ ] Jeder Schritt hat ein überprüfbares Ergebnis
   - [ ] Ausgabeformat ist als Vorlage vorhanden
   - [ ] Jedes Verbot hat eine Alternative
   - [ ] Jede Datei in references/ wird im Körper mit Bedingung verlinkt
   - [ ] Kein Inhalt doppelt (Körper vs. references/)
   - [ ] Keine Geheimnisse, keine überraschenden Nebenwirkungen
   - [ ] Eintrag in skills/README.md ergänzt (Name + 1 Satz)

## Phase 7: Testen (nie ohne Test abgeben)
A. Ausführungstest: formuliere 3 realistische Aufträge (wie der Mensch wirklich schreibt, mit
   Details, Tippfehlern, Kontext). Speichere sie in `skills/<name>/tests/prompts.md`.
   Lasse sie in frischen Sitzungen laufen, mit Skill und ohne Skill, und vergleiche.
B. Auslösetest: schreibe 20 Sätze, 10 sollen auslösen (verschieden formuliert, auch ohne
   Fachwort), 10 nicht auslösen (knifflige Fast-Treffer, die dieselben Wörter nutzen).
   Speichere in `tests/trigger-queries.md` als Liste "JA:" / "NEIN:".
   Prüfe in frischen Sitzungen, ob der Skill genau bei den JA-Sätzen startet.
C. Wertung: Skill löst zu selten aus -> Stichworte und "auch wenn" ergänzen. Zu oft ->
   "Nicht für" schärfen. Ergebnis falsch -> Körper klären (Beispiel ergänzen, Warum ergänzen).

## Phase 8: Verbessern
Pro Runde eine Gruppe an Änderungen, dann alle Tests wiederholen. Verallgemeinere: ändere
nicht für einen Testfall, sondern für die Ursache dahinter. Entferne Zeilen, die nichts
bewirken (Lauf anschauen: verschwendet der Skill Zeit?). Wiederholt sich in allen Läufen
dieselbe Hilfsarbeit (gleiches Skript selbst geschrieben)? Dann in scripts/ ablegen.
Beende, wenn alle Tests bestehen oder der Mensch zufrieden ist.

## Abgabe
Berichte in 5 Zeilen: Pfad, Name + Beschreibung, was der Skill tut, Testergebnis (x von 3
Aufträgen, y von 20 Auslösesätzen), offene Punkte.

## Weiterführend
- Lies `references/skill-template.md`, wenn du eine Vorlage zum Ausfüllen brauchst.
- Lies `references/description-patterns.md`, wenn die Beschreibung schlecht auslöst.
- Lies `references/anti-patterns.md` vor Phase 6, um typische Fehler auszuschliessen.
