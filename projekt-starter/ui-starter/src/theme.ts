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
        // Jeder Wert hat zwei Fassungen: base (hell) und _dark (dunkel).
        ui: {
          bg: { value: { base: "#F6F7F5", _dark: "#0F1713" } },
          surface: { value: { base: "#FFFFFF", _dark: "#17211C" } },
          text: { value: { base: "#1C2320", _dark: "#E8EEEA" } },
          textMuted: { value: { base: "#5A6660", _dark: "#A3B0A9" } },
          accent: { value: { base: "#1F5C43", _dark: "#4FA37C" } },
          accentHover: { value: { base: "#174732", _dark: "#68B894" } },
          accentSubtle: { value: { base: "#E3EFE8", _dark: "#1B2C24" } },
          onAccent: { value: { base: "#FFFFFF", _dark: "#0C1410" } },
          border: { value: { base: "#D8DED9", _dark: "#2A3730" } },
          warning: { value: { base: "#8A4B00", _dark: "#E0A458" } },
          danger: { value: { base: "#B3261E", _dark: "#F07A72" } },
        },
      },
    },
  },
})

export const system = createSystem(defaultConfig, config)
