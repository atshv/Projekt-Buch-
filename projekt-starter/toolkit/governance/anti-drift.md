# Gegen Drift

Drift heisst: Plan, Dokumente und Code laufen auseinander, oder die Arbeit weicht still vom
Auftrag ab. Gegenmittel:
- Vor der Karte: Ziel in einem Satz wiederholen und mit der Karte vergleichen.
- Während der Arbeit: nur das Ziel der Karte. Neue Ideen in HANDOFF.md unter "Fragen".
- Nichts aus dem Gedächtnis behaupten: Datei lesen, bevor du dich auf sie berufst.
- Namen nur aus docs/GLOSSARY.md. Neuer Begriff nötig: in HANDOFF.md vorschlagen.
- Nach der Karte prüfen und bei Abweichung angleichen oder melden:
  - Stimmen Namen und Pfade mit ARCHITECTURE.md?
  - Stimmt der Status in PLAN.md?
  - Stimmen die Befehle in AGENTS.md (Abschnitt Befehle) noch?
  - Hat sich sichtbares Verhalten geändert: README oder docs/ nachführen (Skill pb-writer).
- Abweichung vom Plan nie still anpassen. In HANDOFF.md unter "Drift" melden, mit Vorschlag.
- Lange Sitzung oder wachsende Verwirrung: HANDOFF.md schreiben, Neustart empfehlen.

## Fehlerbehandlung
- Test rot: lies die Fehlermeldung, formuliere eine Ursache, ändere EINE Sache, teste erneut.
- Nach 3 Versuchen ohne Fortschritt: Stopp, schreibe in HANDOFF.md "Blockiert": Fehlertext,
  Versuche, Vermutung. Frage den Menschen.
- Nie Tests löschen, abschwächen oder überspringen, um grün zu werden.
- Nie Fehler verschweigen. "Teilweise fertig" ist eine gültige, ehrliche Meldung.

## Kontextdisziplin
- Lies nur Dateien, die du brauchst. Keine ganzen Verzeichnisse einlesen.
- Lange Ausgaben (Logs) kürzen: letzte 30 Zeilen oder gezielt suchen.
- Merkst du Wiederholungen, Verwirrung oder Vergessenes: HANDOFF.md schreiben und Neustart
  empfehlen, bevor du Fehler machst.

## Fragen statt raten
Ist eine Anforderung unklar oder fehlt eine Entscheidung: Eintrag unter "Fragen" in HANDOFF.md
und im Chat fragen. Gib dabei immer 2 Vorschläge mit deiner Empfehlung an.

## Verboten
- Mehrere Karten in einem Durchlauf.
- Architektur, Brief oder Plan ändern (nur Vorschläge in HANDOFF.md "Fragen").
- Neue Abhängigkeiten, Löschen von Daten, Änderungen an Konfiguration/Secrets ohne Freigabe.
- Behauptungen über Tests, die nicht gelaufen sind.
