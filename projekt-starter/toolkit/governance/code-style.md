# Code-Stil

Gilt für jeden, der Code schreibt oder prüft (Agent, Reviewer).

Ziel: Ein anderer Mensch versteht deinen Code in möglichst kurzer Zeit. Lesbarkeit geht vor
Kürze und vor Cleverness. Bei Konflikt gilt: einfacher und lesbarer gewinnt.

### Prinzipien des Programmierens (mit Erklärung für Nicht-Programmierer)
- KISS (Keep it simple): Nimm die einfachste Lösung, die funktioniert.
  Wie ein Lichtschalter statt einer Fernbedienung mit 50 Knöpfen.
- YAGNI (You aren't gonna need it): Baue nur, was die Karte verlangt, nichts "für später".
  Keine Garage bauen für ein Auto, das man noch nicht hat.
- DRY (Don't repeat yourself): Jedes Wissen steht an genau einer Stelle.
  Eine Telefonliste statt fünf Zettel, die man alle ändern muss.
- SOLID: Fünf Regeln für Bausteine, die man austauschen kann, ohne alles umzubauen.
  Wie Geräte mit Normanschluss. Kurz:
  S: ein Baustein, eine Aufgabe. O: erweitern statt umbauen. L: ein Ersatzteil passt wie
  das Original. I: kleine, passende Schnittstellen. D: hänge von Absprachen ab, nicht von Details.
- TDD (Test zuerst): Erst festlegen, woran man "richtig" erkennt, dann bauen.
  Wie Sollwerte im Messprotokoll, bevor man die Anlage einschaltet.
- Clean Code: Code ist ein Text für Menschen, der zufällig auch vom Computer gelesen wird.

### Lesbarkeit (verbindliche Regeln)
- Namen sagen Zweck oder Wert: `invoiceTotal`, `customerEmail`.
  Verboten sind allgemeine Namen: data, temp, helper, info, stuff, obj, value, x
  (Ausnahme: kurze Schleifenzähler wie i).
- Wahr/falsch-Werte beginnen mit is, has, can, should: `isPaid`, `hasAccess`.
- Grenzen beginnen mit max oder min: `maxRetries`, `minPasswordLength`.
- Positive Bedingungen: `if (isValid)` statt `if (!isInvalid)`.
- Frühe Rückgabe statt tiefer Verschachtelung. Flacher Ablauf gewinnt:
    if (!hasAccess) return error          statt   if (hasAccess) { if (...) { ... } }
- Kommentare erklären das WARUM, nicht das WAS. Wiederhole nie die Funktion in Worten
  ("addiert a und b" über add(a, b) ist verboten).
- Erkläre "Huch?"-Stellen (Überraschendes, Workarounds, Grenzwerte). Lass Offensichtliches weg.
- Eine Funktion, eine Aufgabe. Hat sie ein fremdes Teilproblem: in eigene Funktion auslagern.
  Faustregel: braucht der Name ein "und", ist die Funktion zu gross.
- Weniger Code schreiben: Anforderung hinterfragen, Standardbibliothek nutzen statt selbst
  bauen, ungenutzten Code löschen (mit Test, dass nichts fehlt).
- Gleiche Dinge gleich benennen, im ganzen Projekt (ein Begriff pro Sache).
- Formatierer und Linter des Projekts entscheiden über Einrückung und Stil, nicht du.

## Erklären (für Menschen, die nicht programmieren)
- Beschreibe, was die Änderung für den Nutzer bewirkt, nicht wie der Code aussieht.
- Fachwort nötig? Einmal in Klammern erklären: "Test (ein kleines Programm, das prüft ...)".
- Nutze Vergleiche aus dem Alltag. Kein Code im Bericht, ausser der Mensch fragt danach.
