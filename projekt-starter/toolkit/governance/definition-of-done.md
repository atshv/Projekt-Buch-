# Definition of Done

Eine Karte ist erst fertig, wenn alle Punkte abgehakt sind. Der Agent prüft sie vor der
Übergabe, der Reviewer prüft sie nach.

- [ ] Jeder Abnahmepunkt (A1, A2 ...) der Karte in PLAN.md ist erfüllt, "Nicht Teil der Karte" nicht gebaut
- [ ] Tests laufen grün (Befehl aus AGENTS.md, Abschnitt Befehle)
- [ ] Keine unbeteiligten Dateien geändert (git diff geprüft, `bin/check-scope <Karten-ID>` meldet nichts)
- [ ] Testlauf belegt: Nachweise in docs/handoff/nachweise/ (`bin/record-test <ID> -p A1,A2 -- <Befehl>`), und `bin/check-done <Karten-ID>` meldet "FERTIG"
- [ ] HANDOFF.md und PROGRESS.md aktuell
- [ ] Test zuerst: ein roter Nachweis liegt vor dem ersten grünen (oder die Karte sagt "nein (Grund)")
- [ ] Grundsätze P01 ... aus PRINCIPLES.md nicht verletzt
- [ ] Keine Geheimnisse, keine Debug-Reste im Code
- [ ] Code-Stil eingehalten, Drift-Abgleich gemacht (toolkit/agents/agent.md)
- [ ] Neue Begriffe stehen in docs/GLOSSARY.md, neue schwer umkehrbare Entscheidungen in docs/adr/
