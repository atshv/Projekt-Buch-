---
name: commit-message
description: Schreibt klare Commit-Nachrichten aus den aktuellen Änderungen (git diff) im Format "T07:
  Kurzbeschreibung". Nutze diesen Skill, wenn der Mensch commit, Commit-Nachricht, einchecken,
  speichern in git oder "schreib mir die Nachricht" sagt, auch ohne das Wort Skill. Nicht für
  Pull-Request-Texte, Changelogs oder das Lösen von Merge-Konflikten.
---

# Commit Message

Gute Commit-Nachrichten machen die Geschichte des Projekts lesbar, auch für eine neue Sitzung.

## Vorbereitung
1. Führe `git status` und `git diff --staged` aus. Ist nichts vorgemerkt, nimm `git diff`.
2. Lies die aktive Karte in docs/PLAN.md, damit die Karten-ID stimmt.

## Ablauf
1. Fasse zusammen, WAS sich geändert hat und WARUM (nicht Zeile für Zeile). Ergebnis: 1 Satz.
2. Schreibe die Betreffzeile: `<ID>: <Verb im Imperativ> <Objekt>`, höchstens 60 Zeichen.
3. Füge einen Textkörper nur hinzu, wenn das Warum nicht offensichtlich ist (max. 3 Zeilen).
4. Zeige dem Menschen die Nachricht. Committe erst nach "ja".

## Ausgabeformat
```text
T07: Füge Login-Validierung hinzu

Leere Passwörter wurden bisher akzeptiert. Prüfung in auth/validate.py,
Test in tests/test_validate.py.
```

## Beispiele
**Eingabe:** Diff ändert 2 Dateien, neue Prüfung für leere E-Mail, Karte T12.
**Ausgabe:** `T12: Prüfe leere E-Mail im Formular`

## Regeln
- Schreibe nie "Änderungen" oder "Update" als Betreff, weil das später nichts aussagt.
  Stattdessen: konkretes Verb und Objekt.
- Mische nie zwei Aufgaben in einem Commit. Stattdessen: schlage zwei Commits vor.
- Schreibe nie Geheimnisse oder Dateiinhalte in die Nachricht.

## Prüfen
- [ ] Betreff unter 60 Zeichen und beginnt mit der Karten-ID
- [ ] Imperativ ("Füge hinzu"), nicht Vergangenheit
- [ ] Nachricht passt zum Diff, nicht zu etwas anderem
