# bin/

Befehle, die man direkt aufruft. Jede Datei ist ausführbar und erklärt sich mit `--help`.

| Befehl            | Was er tut                                   |
|-------------------|----------------------------------------------|
| bin/new-skill     | legt toolkit/skills/<name>/ mit Gerüst und Tests an  |
| bin/check-skills  | prüft alle Skills mit dem Prüfskript         |
| bin/check-scope   | prüft, ob geänderte Dateien zur Aufgabenkarte passen (`bin/check-scope T05`) |
| bin/record-test   | führt einen Testbefehl aus und legt den Nachweis in docs/handoff/nachweise/ ab (`bin/record-test T05 -- npm test`) |

Regeln: kurze Befehle für den Alltag hierher. Längere oder seltene Abläufe gehören in
scripts/. Neue Befehle in dieser Tabelle eintragen.
