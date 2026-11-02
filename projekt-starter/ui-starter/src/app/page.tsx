import {
  Badge,
  Box,
  Button,
  Container,
  Heading,
  HStack,
  Input,
  Link,
  Separator,
  Stack,
  Text,
} from "@chakra-ui/react"
import { ColorModeButton } from "@/components/ui/color-mode"
import { Field } from "@/components/ui/field"
import { Tooltip } from "@/components/ui/tooltip"
import { ToastDemo } from "@/components/toast-demo"

// Beispielseite: zeigt die Bausteine und die Farbnamen aus src/theme.ts.
// Ersetze den Inhalt durch deine erste Seite (Karte T01 im Plan).
const naechsteSchritte = [
  "Farben und Schriften aus docs/design/DESIGN.md in src/theme.ts eintragen.",
  "Diese Seite ersetzen: src/app/page.tsx.",
  "Weitere Bausteine holen: npx @chakra-ui/cli snippet add <name>.",
]

export default function Home() {
  return (
    <Box bg="ui.bg" color="ui.text" minH="100vh">
      <Container maxW="3xl" py={{ base: "8", md: "16" }}>
        <HStack justify="space-between" align="center">
          <Badge colorPalette="green" variant="surface">
            UI-Starter
          </Badge>
          <ColorModeButton />
        </HStack>

        <Stack gap="6" mt="8">
          <Stack gap="2">
            <Heading as="h1" size="2xl">
              Deine Oberfläche steht.
            </Heading>
            <Text color="ui.textMuted" fontSize="lg">
              Next.js, Chakra UI und ein eigenes Farbsystem. Der Rest ist dein Projekt.
            </Text>
          </Stack>

          <Separator borderColor="ui.border" />

          <Box
            bg="ui.surface"
            borderWidth="1px"
            borderColor="ui.border"
            borderRadius="md"
            p="6"
          >
            <Text fontWeight="600" mb="4">
              Formular (Beispiel)
            </Text>
            <Stack gap="4">
              <Field
                label="Name der Kundin"
                helperText="Erscheint später auf dem Angebot."
                required
              >
                <Input placeholder="z. B. Meier Sanitär AG" />
              </Field>
              <HStack>
                <ToastDemo />
                <Button variant="outline" borderColor="ui.border">
                  Abbrechen
                </Button>
                <Tooltip content="Weitere Aktionen" showArrow>
                  <Button variant="ghost" color="ui.textMuted">
                    Mehr
                  </Button>
                </Tooltip>
              </HStack>
            </Stack>
          </Box>

          <Box>
            <Text fontWeight="600" mb="2">
              Nächste Schritte
            </Text>
            <Stack gap="1">
              {naechsteSchritte.map((schritt) => (
                <Text key={schritt} color="ui.textMuted">
                  • {schritt}
                </Text>
              ))}
            </Stack>
          </Box>

          <Text fontSize="sm" color="ui.textMuted">
            Alle Namen und Varianten der Bausteine:{" "}
            <Link
              href="https://chakra-ui.com/docs/components/concepts/overview"
              target="_blank"
              rel="noreferrer"
              color="ui.accent"
              textDecoration="underline"
            >
              Chakra-UI-Bausteine
            </Link>
            . Grundlage: chakra-ui.com/docs/get-started/installation.
          </Text>
        </Stack>
      </Container>
    </Box>
  )
}
