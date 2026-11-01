# toolkit/templates/

Vorlagen für Dateien, die pro Durchlauf neu entstehen. Die Rolle kopiert die Vorlage,
füllt sie aus und speichert sie unter dem angegebenen Namen.

| Vorlage        | Wird zu                                         | Rolle     |
|----------------|-------------------------------------------------|-----------|
| review.md      | docs/reviews/review-0001-<blickwinkel>.md       | Reviewer  |
| ui-review.md   | docs/reviews/ui-review-0001.md                  | UI-Judge  |
| change.md      | docs/changes/<name>/CHANGE.md (bin/new-change)  | Architect |
| bestand.md     | docs/architecture/BESTAND.md                    | Architect |

Nummern vierstellig, fortlaufend. Nächste Nummer: höchste vorhandene + 1.
