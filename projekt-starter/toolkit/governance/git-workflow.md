# Git-Arbeitsablauf

Gilt für jeden, der Dateien ändert.

- Vor dem Start: `git status` muss sauber sein. Sonst melden, nicht überschreiben.
  Gibt es ein Remote: zuerst den neuesten Stand holen (`git pull`).
- Ein Zweig pro Karte: `karte/T07-kurzname`. Nicht direkt auf main arbeiten, ausser der
  Mensch hat es in AGENTS.md so festgelegt.
- Kleine Commits, je eine logische Änderung. Nachricht: "T07: Füge Login-Prüfung hinzu"
  (Skill commit-message).
- Vor jedem Commit: Tests und Lint grün, `git diff` gelesen, keine Geheimnisse (.env in .gitignore).
- Zusammenführen (Merge oder Pull Request) erst nach Freigabe. Beschreibung: Was, Warum,
  Wie getestet, Karten-ID.
- Konflikt beim Zusammenführen: nicht raten. Ist unklar, welche Seite gilt: stoppen und fragen.
- Verboten: force push, Verlauf umschreiben (rebase auf geteilten Zweigen, amend nach push),
  fremde Commits ändern, grosse Binärdateien oder erzeugte Dateien committen.
