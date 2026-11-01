# ARCHITECTURE: [PROJEKTNAME]

Status: Entwurf | freigegeben am [DATUM]     Basis: BRIEF.md Version [N]

## 1. Überblick (max. 5 Zeilen)
[Wie funktioniert das System im Grossen? Wer spricht mit wem?]

## 2. Technik-Stack
| Bereich      | Wahl            | Version | Grund (siehe DECISIONS) |
|--------------|-----------------|---------|--------------------------|
| Sprache      | [..]            | [..]    | D01                      |
| Framework    | [..]            | [..]    | D02                      |
| Daten        | [..]            | [..]    | D03                      |
| Tests        | [..]            | [..]    | D04                      |
| Hosting      | [..]            | [..]    | D05                      |

## 3. Ordnerstruktur
```text
[projekt]/
  AGENTS.md
  agents/          Rollen (brief-creator, architect, agent, reviewer, ui-judge)
  skills/          Skills und SKILLMAP.md
  docs/            Projektdokumente, Vorlagen, prototype/
  brand/           Name, Logo, Farben, Ton (BRAND.md)
  bin/             Befehle zum direkten Aufrufen
  scripts/         Hilfsskripte (Build, Daten, Wartung)
  src/
    [modul-a]/     [Verantwortung in 1 Satz]
    [modul-b]/
  tests/
  .env.example
```

## 4. Module
| Modul     | Verantwortung (1 Satz)       | Hängt ab von | Anforderungen |
|-----------|------------------------------|--------------|---------------|
| [modul-a] | [..]                         | -            | M1            |
| [modul-b] | [..]                         | modul-a      | M2, K1        |

## 5. Datenmodell
| Objekt   | Felder (Name: Typ)           | Regeln                       |
|----------|------------------------------|------------------------------|
| [Nutzer] | id: Zahl, name: Text         | name eindeutig, 2-50 Zeichen |

## 6. Schnittstellen
| Name           | Eingabe             | Ausgabe          | Fehler              |
|----------------|---------------------|------------------|---------------------|
| [funktion/api] | [Parameter + Typ]   | [Typ + Beispiel] | [Fall -> Meldung]   |

## 7. Regeln für Code (prüfbar)
- Namen: [Konvention]. Dateien: [Konvention].
- Eine Datei hat eine Aufgabe, höchstens ca. [300] Zeilen.
- Keine Logik in [Oberflächenschicht]; Logik nur in [Modul].
- Jede Funktion mit Fehlerfall hat einen Test.

## 8. Fehlerbehandlung
- Fehler werden [abgefangen in ..], dem Nutzer als [verständlicher Satz] gezeigt, [geloggt in ..].

## 9. Sicherheit und Datenschutz
- Geheimnisse nur in .env (nie im Code). Eingaben werden geprüft in [..].
- Personenbezogene Daten: [welche, wo, wie lange].

## 10. Teststrategie
- Einheit: [..]  Integration: [..]  Manuell: [Szenarien]
- Befehl: [..]  Mindestabdeckung Kernpfad: [..]

## 11. Konfiguration und Betrieb
- Umgebungsvariablen: [NAME: Zweck]  Start: [..]  Deployment: [..]

## 12. Abdeckung der Anforderungen
| Anforderung | Modul        | Karten      |
|-------------|--------------|-------------|
| M1          | [modul-a]    | T02, T03    |

## 13. Grenzen
Nicht gebaut: [..] (siehe Nicht-Ziele im Brief)
