# docs/changes/

Eine Änderung an einem laufenden Projekt bekommt einen eigenen Ordner.

| Ort                          | Inhalt                                           |
|------------------------------|--------------------------------------------------|
| docs/changes/<name>/CHANGE.md | Wunsch, Verhaltensänderung (Wenn/dann), Übernahme |
| docs/changes/archiv/          | abgeschlossene Änderungen mit Datum              |

Ablauf
1. `bin/new-change <name>` legt den Ordner an.
2. Der Architect füllt CHANGE.md aus, schneidet Karten in PLAN.md und trägt sie unter "Karten" ein.
3. Der Mensch gibt frei. Der Agent baut die Karten.
4. Der Architect führt Brief, Architektur, Glossar und Doku nach und hakt die Übernahme ab.
5. `bin/finish-change <name>` prüft alles und legt die Änderung ins Archiv.
