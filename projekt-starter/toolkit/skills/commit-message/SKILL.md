---
name: commit-message
description: Schreibt klare Commit-Nachrichten aus den aktuellen Änderungen (git diff) im
  Format "T07: Kurzbeschreibung". Nutze diesen Skill, wenn der Mensch commit,
  Commit-Nachricht, einchecken, speichern in git oder "schreib mir die Nachricht" sagt, auch
  ohne das Wort Skill. Nicht für Pull-Request-Texte, Changelogs oder das Lösen von
  Merge-Konflikten.
---

# Commit-Nachricht

Gute Commit-Nachrichten machen die Geschichte des Projekts lesbar, auch für eine neue
Sitzung. Über die Karten-ID führt jede Änderung zurück zu Plan und Anforderung.

## Kurzstart
- Wann: Änderungen sind fertig, Tests und Lint grün, `git diff` gelesen.
- Ergebnis: eine Commit-Nachricht, die der Mensch bestätigt; danach `git commit`.
- Format: `T07: Füge Login-Prüfung hinzu` (Karten-ID, Doppelpunkt, Imperativ).

## Benötigte Eingaben
- `git status` und `git diff --staged` (ist nichts vorgemerkt: `git diff`).
- Die aktive Karte in docs/plan/PLAN.md (für die ID).

## Ablauf
1. Änderungen lesen. Zusammenfassen, WAS sich geändert hat und WARUM. Ergebnis: 1 Satz.
2. Gehören die Änderungen zu zwei Zwecken? Dann zwei Commits vorschlagen und Dateien zuordnen.
3. Betreffzeile: `<ID>: <Verb im Imperativ> <Objekt>`, höchstens 60 Zeichen, ohne Punkt am Ende.
   Ohne Karte (Schnellweg): `fix:` / `docs:` / `chore:` statt ID.
4. Textkörper nur, wenn das Warum nicht offensichtlich ist: Leerzeile, dann höchstens 3 Zeilen.
   Bezug zu ADR oder Befund nennen (`adr-0002`, `review-0003 R1`).
5. Dem Menschen zeigen. Committen erst nach "ja".

## Ausgabe
```text
T07: Füge Login-Prüfung hinzu

Leere Passwörter wurden bisher akzeptiert (review-0003 R1).
Prüfung in auth/validate.py, Test in tests/test_validate.py.
```

## Beispiele
- Diff: neue Prüfung für leere E-Mail, Karte T12 → `T12: Prüfe leere E-Mail im Formular`
- Diff: nur README angepasst, keine Karte → `docs: Ergänze Schnellstart im README`

## Qualitätstor
- [ ] Betreff unter 60 Zeichen, beginnt mit Karten-ID (oder fix/docs/chore)
- [ ] Imperativ ("Füge hinzu"), nicht Vergangenheit
- [ ] Nachricht passt zum Diff, ein Zweck pro Commit
- [ ] Keine Geheimnisse oder Dateiinhalte in der Nachricht

## Verwandte Skills und Regeln
- toolkit/governance/git-workflow.md: Zweige, wann committen, Verbote.

## Nicht tun
- Nie "Änderungen" oder "Update" als Betreff, weil das später nichts aussagt.
  Stattdessen: konkretes Verb und Objekt.
- Nie zwei Aufgaben in einem Commit. Stattdessen: zwei Commits vorschlagen.
