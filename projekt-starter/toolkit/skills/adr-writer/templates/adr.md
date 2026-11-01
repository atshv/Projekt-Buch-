# [Kurzer Titel der Entscheidung]

| Feld          | Wert                                   |
|---------------|----------------------------------------|
| Nummer        | adr-NNNN                               |
| Status        | vorgeschlagen                          |
| Datum         | JJJJ-MM-TT                             |
| Entschieden von | [Mensch oder Architect, vom Menschen bestätigt] |
| Bezug         | [M1, P02, T05]                         |
| Ersetzt       | [alte Nummer oder -]                   |
| Lesewert      | [Zahl, Ziel 50+]                       |

[Zusammenfassung, höchstens zwei kurze Absätze. Was ist das Problem, warum jetzt, welche
Wirkung hat es für Nutzer oder Betrieb? Fachwort nötig: hier kurz erklären.]

## Entscheidung

[Gewählte Lösung und ihre Grenzen in klaren Worten.]

## Geprüfte Alternativen (nur wenn die Ablehnung nicht offensichtlich ist)

- Option 1: [Name]
- Option 2: [Name]

| Kriterium                | Option 1 | Option 2 |
|--------------------------|----------|----------|
| Passt zur Architektur    | [1 Satz] | [1 Satz] |
| Passt zu uns             | [1 Satz] | [1 Satz] |
| Aufwand                  | [1 Satz] | [1 Satz] |
| Komplexität              | [1 Satz] | [1 Satz] |

## Folgen (3 bis 6, nur nicht offensichtliche)

- [..]

---

## Beispiel (zum Löschen)

# Berichte lokal speichern, Abgleich später

| Feld   | Wert |
|--------|------|
| Nummer | adr-0002 |
| Status | angenommen |
| Bezug  | M3, P01, T07 |

Servicetechniker arbeiten oft im Keller ohne Netz. Muss die App online sein, gehen Berichte
verloren oder werden doppelt erfasst.

## Entscheidung

Berichte werden zuerst auf dem Gerät gespeichert und abgeglichen, sobald wieder Netz da ist.
Bei Konflikt gewinnt die neuere Änderung, der Mensch wird informiert.

## Folgen

- Die App braucht eine Anzeige "noch nicht abgeglichen".
- Tests müssen den Fall "kein Netz" abdecken.
