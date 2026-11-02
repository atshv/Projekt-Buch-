import type { Metadata } from "next"
import { Provider } from "@/components/ui/provider"
import { Toaster } from "@/components/ui/toaster"

export const metadata: Metadata = {
  title: "UI-Starter",
  description: "Oberfläche mit Next.js und Chakra UI (KI-Projekt-Buch)",
}

// suppressHydrationWarning: next-themes setzt die Klasse für hell/dunkel erst im Browser.
export default function RootLayout({
  children,
}: Readonly<{ children: React.ReactNode }>) {
  return (
    <html lang="de" suppressHydrationWarning>
      <body>
        <Provider>
          <Toaster />
          {children}
        </Provider>
      </body>
    </html>
  )
}
