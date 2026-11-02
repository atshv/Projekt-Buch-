"use client"

import { Button } from "@chakra-ui/react"
import { toaster } from "@/components/ui/toaster"

// Client-Komponente: Ein Klick löst einen Toast aus.
// Solche Bausteine brauchen "use client", weil sie auf Klicks reagieren.
export function ToastDemo() {
  return (
    <Button
      bg="ui.accent"
      color="ui.onAccent"
      onClick={() =>
        toaster.create({
          title: "Gespeichert",
          description: "Das Formular ist nur ein Beispiel.",
          type: "success",
        })
      }
    >
      Speichern
    </Button>
  )
}
