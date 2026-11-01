# toolkit/commands/

Die Start-Prompts als Befehle für die Oberfläche deines KI-Programms. Der Text ist derselbe wie in
START-PROMPTS.md. Kein Plugin, nur Dateien.

| Befehl          | Wofür                                              | Prompt |
|-----------------|----------------------------------------------------|--------|
| /pb-brief       | Brief erstellen                                    | 1      |
| /pb-plan        | Architektur und Plan                               | 2      |
| /pb-bauen       | nächste Karte bauen, danach Stopp                  | 3      |
| /pb-pruefen     | prüfen, ein Blickwinkel                            | 4      |
| /pb-weiter      | nach Pause weiterarbeiten                          | 6      |
| /pb-aenderung   | Änderungswunsch mit eigenem Änderungsordner        | 8      |
| /pb-alles       | alles in einem Durchlauf                           | 16     |
| /pb-kaltstart   | Kaltstart-Test                                     | 17     |
| /pb-bestand     | Bestandsaufnahme eines vorhandenen Projekts        | 18     |
| /pb-karten      | Kartenvorschlag mit Gewicht                        | 19     |
| /pb-teilen      | zu grosse Karte teilen                             | 20     |

Einrichten: `bin/link-commands claude` (oder cursor, copilot, gemini, alle). Das Skript legt die
Dateien an, die dein Programm erwartet:

| Programm       | Ordner                | Eingabe nach dem Befehl |
|----------------|-----------------------|-------------------------|
| Claude Code    | .claude/commands/     | wird eingesetzt         |
| Cursor         | .cursor/commands/     | als Nachsatz            |
| GitHub Copilot | .github/prompts/      | wird abgefragt          |
| Gemini CLI     | .gemini/commands/     | wird eingesetzt         |

Neuer Befehl: Datei hier anlegen (Kopf mit `description:`, dann der Text, `{{ARGS}}` für die Eingabe des
Menschen), dann `bin/link-commands` erneut ausführen.
