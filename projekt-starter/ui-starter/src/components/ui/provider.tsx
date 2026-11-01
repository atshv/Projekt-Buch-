"use client"

import { ChakraProvider } from "@chakra-ui/react"
import { system } from "@/theme"
import {
  ColorModeProvider,
  type ColorModeProviderProps,
} from "./color-mode"

// Eigenes System statt defaultSystem: Tokens kommen aus src/theme.ts.
export function Provider(props: ColorModeProviderProps) {
  return (
    <ChakraProvider value={system}>
      <ColorModeProvider {...props} />
    </ChakraProvider>
  )
}
