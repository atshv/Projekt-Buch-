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

## Kurzstart
- Wann: Eine Anleitung wird zum dritten Mal getippt, oder der Mensch will einen Skill.
- Ergebnis: `toolkit/skills/<name>/` mit SKILL.md im Standard-Gerüst (Phase 5), tests/,
  bei Bedarf templates/, references/, scripts/; Zeile in toolkit/skills/SKILLMAP.md.
- Schnellweg: `bin/new-skill <name>` legt das Gerüst an, `bin/check-skills` prüft alle.

## Benötigte Eingaben
- Zweck, Auslöser (Sätze des Menschen), Ergebnisformat, Grenzen, Werkzeuge (Phase 1).
- toolkit/skills/SKILLMAP.md (gibt es den Skill schon?).

## Phase 1: Absicht klären (Fragen, höchstens 5, gebündelt)
Wenn der Mensch einen Ablauf schon vorgeführt hat (Chatverlauf, Dateien), extrahiere zuerst:
Schritte, Korrekturen des Menschen, Ein- und Ausgabeformate. Frage nur das Fehlende:
1. Was soll Claude damit können? (ein Satz, Verb am Anfang)
2. Wann soll der Skill starten? (3 Beispielsätze, wie der Mensch es wirklich sagt)
3. Was kommt heraus? (Dateityp, Format, Ort)
4. Was darf nie passieren? (Grenzen, Risiken, Daten)
5. Welche Werkzeuge, Dateien, Befehle werden gebraucht?
Prüfe vorab: Gibt es schon einen Skill dafür (toolkit/skills/SKILLMAP.md)? Dann erweitern statt neu.
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
  | Vorlagen, die ausgefüllt werden             | templates/   |
  | Bilder, Schriften, feste Dateien            | assets/      |

## Phase 3: Name
Regeln (hart): 1 bis 64 Zeichen; nur a-z, 0-9 und Bindestrich; nicht am Anfang oder Ende
ein Bindestrich; kein doppelter Bindestrich (--); Ordnername = name.
Stil: Tätigkeit oder Gegenstand, 2 bis 4 Wörter, englisch: `pdf-report`, `db-migration`.
Gerüst anlegen: `bin/new-skill <name>` (erstellt SKILL.md und tests/).

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
Standard-Gerüst für ALLE Skills im Toolkit (in dieser Reihenfolge, gleiche Überschriften):
1. `# Titel` und 1 bis 2 Sätze Zweck (warum gibt es den Skill?)
2. `## Kurzstart` 3 Punkte: Wann · Ergebnis (Datei, Ort, Dateiname-Schema) · Schnellweg/Befehl
3. `## Benötigte Eingaben` welche Dateien/Angaben; was tun, wenn etwas fehlt (fragen, nie erfinden)
4. `## Ablauf` nummerierte Schritte, jeder: Verb + Objekt + erwartetes Ergebnis
5. `## Ausgabe` Ort, Dateiname, Nummerierung, Übersichten, was im Chat gemeldet wird
6. `## Beispiele` 1 bis 2 mit Eingabe und Ausgabe (oder Beispiel in der Vorlage)
7. `## Qualitätstor` Checkliste, die vor der Abgabe vollständig erfüllt sein muss
8. `## Verwandte Skills` an wen übergeben und wann. Abläufe anderer Skills nie nachbauen.
9. `## Nicht tun` Verbot + Grund + Alternative
10. `## Weiterführend` Verweise: "Lies templates/X.md, wenn Y" (nur eine Ebene tief)
Stilregeln:
- Befehlsform. "Lies die Datei", nicht "Es wäre gut, die Datei zu lesen".
- Erkläre das WARUM in einem Halbsatz bei jeder wichtigen Regel. Das Modell handelt besser,
  wenn es den Zweck kennt. GROSSBUCHSTABEN-Verbote nur für echte Gefahr (Datenverlust, Geheimnisse).
- Strenge nach Fragilität: fragile, unumkehrbare Schritte = exakte Befehle und feste Reihenfolge.
  Robuste Schritte = Ziel + Kriterien, Weg offen lassen.
- Ein Standardweg statt vieler Optionen. Nenne Alternativen nur mit Auswahlregel.
- Verweise auf Dateien relativ zum Skill-Ordner, nur eine Ebene tief.
- references/-Dateien über 100 Zeilen bekommen oben ein Inhaltsverzeichnis.
- Ausgabeorte folgen der Projektstruktur (docs/<bereich>/, nummeriert mit 4 Ziffern, wenn
  pro Durchlauf eine neue Datei entsteht). Ordner erst anlegen, wenn die erste Datei kommt.
- Keine Zeitangaben ("bis August 2026"), keine Geheimnisse, keine absoluten Pfade.
- Konsistente Begriffe: ein Ding hat einen Namen im ganzen Skill.
- Skripte: werden ausgeführt, nicht abgeschrieben. Sie brauchen Hilfetext, klare Fehlermeldungen.

## Phase 6: Prüfen (automatisch + Checkliste)
1. Führe aus: `python3 toolkit/skills/skill-creator/scripts/validate_skill.py toolkit/skills/<name>`
   (oder `bin/check-skills` für alle Skills und den Abgleich mit SKILLMAP.md)
   Behebe jede Meldung. Das Skript prüft Name, Beschreibung, Länge, Struktur, Verweise.
2. Checkliste (alle abhaken, sonst zurück zu Phase 4/5):
   - [ ] Beschreibung enthält "Nutze diesen Skill, wenn" und "Nicht für"
   - [ ] Jeder Schritt hat ein überprüfbares Ergebnis
   - [ ] Ausgabeformat ist als Vorlage vorhanden
   - [ ] Jedes Verbot hat eine Alternative
   - [ ] Jede Datei in references/ wird im Körper mit Bedingung verlinkt
   - [ ] Kein Inhalt doppelt (Körper vs. references/)
   - [ ] Keine Geheimnisse, keine überraschenden Nebenwirkungen
   - [ ] Eintrag in toolkit/skills/SKILLMAP.md ergänzt (Aufgabe, Skill, Referenzen, Rolle)

## Phase 7: Testen (nie ohne Test abgeben)
A. Ausführungstest: formuliere 3 realistische Aufträge (wie der Mensch wirklich schreibt, mit
   Details, Tippfehlern, Kontext). Speichere sie in `toolkit/skills/<name>/tests/prompts.md`.
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

## Qualitätstor
- [ ] Prüfskript: 0 Fehler (Hinweise geprüft)
- [ ] Standard-Gerüst vollständig (Kurzstart bis Weiterführend)
- [ ] Ausgabeort und Dateiname eindeutig, passend zur Projektstruktur
- [ ] 3 Testaufträge bestehen, Auslösetest 10 von 10 JA und 0 von 10 NEIN
- [ ] Zeile in SKILLMAP.md (Aufgabe, Skill, Referenzen, Rolle)

## Verwandte Skills
- plain-language: Beschreibung und Körper verständlich halten.
- glossary-keeper: Begriffe im Skill einheitlich halten.

## Nicht tun
- Keinen Skill für eine einmalige Aufgabe. Stattdessen: direkt im Chat erledigen.
- Keinen Ablauf eines anderen Skills kopieren. Stattdessen: unter "Verwandte Skills" verweisen.
- Keinen Skill ohne Test abgeben, weil ungetestete Skills oft gar nicht auslösen.

## Abgabe
Berichte in 5 Zeilen: Pfad, Name + Beschreibung, was der Skill tut, Testergebnis (x von 3
Aufträgen, y von 20 Auslösesätzen), offene Punkte.

## Weiterführend
- Lies `references/skill-template.md`, wenn du eine Vorlage zum Ausfüllen brauchst.
- Lies `references/description-patterns.md`, wenn die Beschreibung schlecht auslöst.
- Lies `references/anti-patterns.md` vor Phase 6, um typische Fehler auszuschliessen.
