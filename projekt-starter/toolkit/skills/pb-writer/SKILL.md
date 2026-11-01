---
name: pb-writer
description: Schreibt und überarbeitet Projekttexte für Menschen, die das Projekt nutzen oder
  mitbauen wollen. README, CONTRIBUTING und Dokumentation (Anleitungen, Erklärungen,
  Nachschlageseiten). Nutze diesen Skill, wenn der Mensch README, Readme, Anleitung, Doku,
  Dokumentation, "wie man mitmacht", Beitragsregeln oder "schreib das für GitHub" sagt, auch
  wenn er nur "mach das verständlich" meint. Nicht für Projektdokumente wie BRIEF, PLAN oder
  HANDOFF, nicht für Commit-Nachrichten und nicht für Code-Kommentare.
---

# pb-writer

Ein Skill für alle Texte, die das Projekt nach aussen erklärt. Der Ablauf ist immer gleich;
was je Textart gilt, steht in einer eigenen Referenz.

## Kurzstart
- Wann: README, CONTRIBUTING oder eine Doku-Seite soll entstehen oder besser werden.
- Ergebnis: Markdown-Datei am üblichen Ort (siehe Ausgabe), Bericht in 3 Zeilen.
- Erst die passende Referenz lesen (Tabelle), nie alle.

## Benötigte Eingaben
- Textart und Leser (Standard: Menschen, die das Projekt zum ersten Mal sehen).
- AGENTS.md (Befehle), docs/GLOSSARY.md (Begriffe), Paketdateien, Ordnerstruktur.

## Welche Referenz?
| Auftrag                                         | Lies zuerst                                  |
|-------------------------------------------------|----------------------------------------------|
| README, Projektseite, "Startseite auf GitHub"   | `references/readme-writer.md`                |
| Wie man mitmacht, Beitragsregeln, CONTRIBUTING  | `references/contributing-writer.md`          |
| Anleitung, Erklärung, Nachschlagen, docs/-Ordner| `references/documentation-writer.md`         |
Mehrere Textarten im Auftrag: nacheinander, je mit ihrer Referenz. Lies nur die nötige Referenz.

## Ablauf
1. Textart bestimmen (Tabelle oben). Ergebnis: eine Referenz ist gewählt.
2. Fakten sammeln, nicht erfinden. Lies: vorhandene README und Doku, AGENTS.md (Befehle),
   Paketdateien (Name, Version, Lizenz), Ordnerstruktur. Ergebnis: Faktenliste.
3. Fehlende Fakten als `[UNKLAR: Frage]` sammeln und dem Menschen gebündelt stellen.
   Erfinde nie Befehle, Links, Abzeichen, Versionen oder Namen.
4. Leser bestimmen: Wer liest das, was will er nach 30 Sekunden wissen? Ergebnis: 1 Satz.
5. Gerüst aus der Referenz übernehmen, nur passende Abschnitte. Kleine Projekte = kurze Texte.
6. Schreiben: kurze Sätze, aktive Form, Befehle in Codeblöcken, je ein Beispiel pro Konzept.
7. Prüfen (Checkliste unten), dann Datei schreiben und im Chat 3 Zeilen berichten.

## Ausgabeformat
Markdown-Datei am üblichen Ort: `README.md` und `CONTRIBUTING.md` im Projektordner,
Dokumentation in `docs/` (eine Datei pro Thema). Überschriften mit `#`, Befehle in
bash-Codeblöcken, Tabellen nur für Vergleiche.

## Nicht tun
- Schreibe nie Fülltext ("Willkommen zu diesem tollen Projekt"), weil er Lesezeit kostet.
  Stattdessen: erster Satz sagt, was das Projekt tut und für wen.
- Kopiere nie Befehle ungeprüft. Stattdessen: Befehl aus AGENTS.md oder Paketdatei nehmen,
  bei Zweifel ausführen oder als [UNKLAR] markieren.
- Wiederhole nie dieselbe Information in zwei Dateien. Stattdessen: verlinken.
- Behalte die Sprache des Projekts bei. Gemischte Sprache nur bei Fachwörtern.

## Qualitätstor
- [ ] Kein Platzhalter und kein [UNKLAR] mehr im Text (oder bewusst dem Menschen gemeldet)
- [ ] Jeder Befehl stammt aus dem Projekt und passt zum Betriebssystem/Paketmanager
- [ ] Jeder Link zeigt auf etwas, das existiert
- [ ] Der erste Absatz beantwortet: Was ist das, für wen, warum?
- [ ] Länge passt zur Projektgrösse
- [ ] Begriffe stimmen mit docs/GLOSSARY.md, Lesewert mit plain-language geprüft

## Verwandte Skills
- plain-language: Lesbarkeit messen und verbessern.
- glossary-keeper: wenn ein Begriff fehlt oder unklar ist.
