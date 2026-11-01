import type { NextConfig } from "next"

const nextConfig: NextConfig = {
  experimental: {
    // Chakra UI lädt nur die Bausteine, die wirklich benutzt werden.
    // Quelle: chakra-ui.com/docs/get-started/installation ("Optimize Bundle").
    optimizePackageImports: ["@chakra-ui/react"],
  },
}

export default nextConfig
