# bin/

Befehle, die man direkt aufruft. Jede Datei ist ausführbar und erklärt sich mit `--help`.

| Befehl            | Was er tut                                   |
|-------------------|----------------------------------------------|
| bin/new-skill     | legt toolkit/skills/<name>/ mit Gerüst und Tests an  |
| bin/new-change    | legt docs/changes/<name>/CHANGE.md für eine Änderung an (`bin/new-change pdf-export`) |
| bin/finish-change | schliesst eine Änderung ab, wenn Karten erledigt und Übernahme abgehakt sind, und archiviert sie |
| bin/check-skills  | prüft alle Skills mit dem Prüfskript         |
| bin/check-plan    | prüft PLAN.md: Felder, Abnahme (Wenn/Dann), Abhängigkeiten, Platzhalter, Umfang der Architektur |
| bin/check-scope   | prüft, ob geänderte Dateien zur Aufgabenkarte passen und keine geschützten Pfade berührt sind (`bin/check-scope T05`) |
| bin/record-test   | führt einen Testbefehl aus und legt den Nachweis mit Arbeitsstand und Prüfsumme in docs/handoff/nachweise/ ab (`bin/record-test T05 -p A1,A2 -- npm test`) |
| bin/check-done    | prüft, ob jede Abnahme und Prüfung einer Karte durch einen gültigen, aktuellen Nachweis belegt ist (`bin/check-done T05`) |

Regeln: kurze Befehle für den Alltag hierher. Längere oder seltene Abläufe gehören in
scripts/. Neue Befehle in dieser Tabelle eintragen.
