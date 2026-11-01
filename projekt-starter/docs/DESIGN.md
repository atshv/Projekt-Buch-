# DESIGN: [PROJEKTNAME]

Massstab für Aussehen und Bedienung. Wird vom UI-Judge gelesen. Prüfbar formulieren:
Zahlen und Namen statt "modern" oder "schön".

## 1. Grundsätze (max. 5 Zeilen)
- [z. B. "Ruhig, dunkel, ein Akzent. Eine Hauptaktion pro Bildschirm."]

## 2. Farben
| Name       | Wert     | Wofür                          |
|------------|----------|--------------------------------|
| hintergrund| [#......] | Seitenhintergrund             |
| text       | [#......] | Fliesstext                    |
| akzent     | [#......] | Hauptknopf, Links, Markierung |
| fehler     | [#......] | Fehlermeldungen               |

## 3. Schrift
| Rolle      | Schrift   | Grösse | Gewicht | Zeilenhöhe |
|------------|-----------|--------|---------|------------|
| Titel      | [..]      | [32px] | [700]   | [1.2]      |
| Text       | [..]      | [16px] | [400]   | [1.6]      |
| Code       | [..]      | [14px] | [400]   | [1.5]      |

## 4. Abstände, Ecken, Rahmen
- Raster: [8 px]. Abstände nur Vielfache davon.
- Ecken: [0 px | 6 px]. Rahmen: [1 px, Farbe ..].

## 5. Komponenten
| Komponente | Varianten            | Zustände                              |
|------------|----------------------|---------------------------------------|
| Knopf      | primär, sekundär     | normal, hover, fokus, deaktiviert, lädt |
| Eingabefeld| [..]                 | leer, gefüllt, fehler, deaktiviert    |

## 6. Aufbau und Breiten
- Handy: [390 px], Tablet: [768 px], Desktop: [1280 px]. Was ändert sich je Breite?

## 7. Texte
- Ton: [du/Sie, kurz, freundlich]. Fehlermeldung sagt immer, was zu tun ist.

## 8. Barrierefreiheit
- Kontrast mindestens [4.5:1]. Alles per Tastatur bedienbar. Fokus sichtbar.
