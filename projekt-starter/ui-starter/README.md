# UI-Starter (Oberfläche mit Chakra UI)

Fertige Oberfläche für Projekte aus dem KI-Projekt-Buch: **Next.js 16 + Chakra UI 3**.
Kein eigener Baustein für Knöpfe, Formulare und Dialoge – dafür Tastaturbedienung und Kontrast
von Chakra UI. Anleitung, nach der diese Vorlage gebaut ist:
[chakra-ui.com/docs/get-started/installation](https://chakra-ui.com/docs/get-started/installation)
und der Next.js-Teil davon
([Next.js App](https://chakra-ui.com/docs/get-started/frameworks/next-app)).

Warum ein eigener Unterordner: Das Gerüst `projekt-starter/` bleibt ohne Framework, damit auch
Projekte ohne Oberfläche (Skript, CLI, Dienst) damit arbeiten können. Wer eine Oberfläche braucht,
kopiert diesen Ordner dazu.

## In 4 Schritten starten

1. Ordner in dein Projekt kopieren (oder laden, siehe unten). Der Inhalt kommt ins Projekt-Hauptverzeichnis,
   `src/` und `package.json` also neben `AGENTS.md`.
2. `npm install`
3. `npm run dev` → [http://localhost:3000](http://localhost:3000)
4. `src/theme.ts` öffnen und Farben und Schriften aus `docs/design/DESIGN.md` eintragen.

```console
# Nur diesen Ordner laden (in den aktuellen Projektordner):
curl -fsSL https://raw.githubusercontent.com/atshv/Projekt-Buch-/main/install.sh | bash -s -- --ui
```

Node.js 20 oder neuer wird gebraucht (Vorgabe von Chakra UI).

## Was drin ist

| Pfad                          | Aufgabe                                                          |
|-------------------------------|------------------------------------------------------------------|
| `src/app/layout.tsx`          | Grundgerüst der Seite, `Provider` liegt um alles herum           |
| `src/app/page.tsx`            | Beispielseite mit Knopf, Eingabefeld und Farbnamen               |
| `src/theme.ts`                | Farbsystem: einzige Stelle mit Farbwerten                         |
| `src/components/ui/provider.tsx`     | Chakra-System + hell/dunkel (aus `snippet add`)           |
| `src/components/ui/color-mode.tsx`   | Hell/dunkel umschalten (aus `snippet add`)                |
| `src/components/ui/toaster.tsx`      | Meldungen oben/unten; `<Toaster />` liegt in `layout.tsx`  |
| `src/components/ui/tooltip.tsx`      | kurzer Hinweis beim Überfahren oder Fokussieren            |
| `src/components/ui/field.tsx`        | Feld mit Beschriftung, Hilfetext und Fehlertext            |
| `src/components/toast-demo.tsx`      | Beispiel: Client-Komponente, die einen Toast auslöst       |
| `next.config.ts`              | lädt nur benutzte Chakra-Bausteine (`optimizePackageImports`)     |
| `tsconfig.json`               | Pfad `@/*` → `src/*`, wie in der Anleitung verlangt               |

## Regeln für dieses Gerüst

- **Farben nur über `src/theme.ts`.** Seiten benutzen `ui.bg`, `ui.text`, `ui.accent` usw., nie `#1F5C43`.
- **Neue Bausteine holen, nicht nachbauen:** Toaster, Tooltip und Feld sind schon da. Weitere
  holst du mit `npx @chakra-ui/cli snippet add <name>` – sie landen in `src/components/ui/`.
- **`dev` und `build` laufen mit `--webpack`.** Turbopack setzt das CSS von Emotion (Chakra UI)
  im Browser falsch zusammen; die Anleitung nennt das „Hydration errors (Turbopack)“.
- **Kein Streaming in Phase 1.** Wer `<Suspense>` nutzt, braucht zusätzlich die
  `EmotionRegistry` aus der Anleitung.
- **Sprache:** Oberfläche deutsch, Code und Dateinamen englisch (siehe `AGENTS.md`).
- **Abhängigkeiten bewusst:** Nur was hier steht. Wer mehr braucht, fragt zuerst (siehe `AGENTS.md`).

## Prüfen

```console
npm run build     # muss ohne Fehler durchlaufen
```

Danach die Beispielseite im Browser prüfen: Knopf, Eingabefeld, hell/dunkel-Umschalter.
Das ist der manuelle Prüfschritt, wenn es noch keine Tests gibt.

## Stand

Anleitung und Versionen: 02.11.2026 · Chakra UI 3.37 · Next.js 16.4 · React 19.3.
Beim Aktualisieren: `npm outdated` und die Anleitung erneut lesen. Die Bausteine unter
`src/components/ui/` sind Kopien; bei einem Chakra-Update neu erzeugen.
