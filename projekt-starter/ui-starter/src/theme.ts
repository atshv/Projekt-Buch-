import { createSystem, defaultConfig, defineConfig } from "@chakra-ui/react"

// Farben und Schriften kommen aus docs/design/DESIGN.md.
// Seiten benutzen nur diese Namen, nie feste Farbwerte (Prüfung: docs/design/DESIGN.md).
// Startwerte sind neutral. Ersetze sie durch die Werte deines Projekts.
const systemFont =
  '-apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif'
const monoFont = 'ui-monospace, SFMono-Regular, "SF Mono", Menlo, monospace'

const config = defineConfig({
  theme: {
    tokens: {
      fonts: {
        body: { value: systemFont },
        heading: { value: systemFont },
        mono: { value: monoFont },
      },
    },
    semanticTokens: {
      colors: {
        ui: {
          bg: { value: "#F6F7F5" },
          surface: { value: "#FFFFFF" },
          text: { value: "#1C2320" },
          textMuted: { value: "#5A6660" },
          accent: { value: "#1F5C43" },
          accentHover: { value: "#174732" },
          accentSubtle: { value: "#E3EFE8" },
          border: { value: "#D8DED9" },
          warning: { value: "#8A4B00" },
          danger: { value: "#B3261E" },
        },
      },
    },
  },
})

export const system = createSystem(defaultConfig, config)
