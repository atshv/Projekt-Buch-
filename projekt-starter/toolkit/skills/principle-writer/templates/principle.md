# Vorlage: Grundsatz

```markdown
## P01: [Grundsatz in einem Satz, positiv formuliert]
- Status: [vorgeschlagen | gilt | aufgehoben]
- Begründung: [Warum? Bezug zu M.. aus dem Brief]
- Folgen: [Was wird leichter, was schwerer, was ist ausgeschlossen?]
- Prüfung: [Woran erkennt ein Reviewer, dass er eingehalten ist?]
- Ausnahme nur mit: ADR in docs/adr/ und Freigabe des Menschen
```

## Beispiel

```markdown
## P01: Die App funktioniert ohne Internet vollständig
- Status: gilt
- Begründung: Techniker arbeiten oft ohne Netz (M3).
- Folgen: Daten lokal speichern und später abgleichen; Funktionen, die nur online gehen
  (z. B. Live-Karten), sind Kann-Anforderungen.
- Prüfung: Alle Szenarien in docs/design/SCENARIOS.md bestehen im Flugmodus.
- Ausnahme nur mit: ADR in docs/adr/ und Freigabe des Menschen
```
