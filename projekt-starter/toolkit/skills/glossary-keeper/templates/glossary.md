# Glossar: [PROJEKTNAME]

## Inhalt
- [Begriffe](#begriffe)
- [Personen und Rollen](#personen-und-rollen)
- [Systeme](#systeme)
- [Daten](#daten)
- [Beziehungen](#beziehungen)
- [Zu vermeiden](#zu-vermeiden)
- [Offene Unklarheiten](#offene-unklarheiten)

## Begriffe
| Begriff         | Bedeutung (ein Satz)                        | Name im Code    | Zu vermeiden        |
|-----------------|---------------------------------------------|-----------------|---------------------|
| **Servicebericht** | Abschluss eines Einsatzes mit Messwerten | `serviceReport` | Protokoll, Rapport  |

## Personen und Rollen
| Begriff        | Bedeutung                                   | Name im Code    | Zu vermeiden        |
|----------------|---------------------------------------------|-----------------|---------------------|
| **Techniker**  | Person, die den Einsatz vor Ort ausführt    | `technician`    | Monteur, User       |

## Systeme
| System         | Wofür                                       | Liefert / nutzt                    |
|----------------|---------------------------------------------|------------------------------------|
| **[System]**   | [..]                                        | [..]                               |

## Daten
| Datenobjekt    | Bedeutung                                   | Wer ist führend (Quelle)           |
|----------------|---------------------------------------------|------------------------------------|
| **[Objekt]**   | [..]                                        | [System oder Modul]                |

## Beziehungen
- Ein **Servicebericht** gehört zu genau einem **Einsatz**.

## Zu vermeiden
| Nicht sagen    | Sondern        | Grund                              |
|----------------|----------------|------------------------------------|
| Daten          | [genauer Name] | zu allgemein                       |

## Offene Unklarheiten
- [Begriff]: meint [A] oder [B]? (Frage an: [Mensch], seit: [Datum])
