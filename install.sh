#!/usr/bin/env bash
# Projekt-Starter laden.
#   Alles:          curl -fsSL https://raw.githubusercontent.com/atshv/Projekt-Buch-/main/install.sh | bash -s mein-projekt
#   Eine Datei:     curl -fsSL https://raw.githubusercontent.com/atshv/Projekt-Buch-/main/install.sh | bash -s -- --datei agents/architect.md
#   Mehrere Dateien: ... | bash -s -- --datei AGENTS.md --datei agents/agent.md
#   Liste:          ... | bash -s -- --liste
set -euo pipefail

REPO="atshv/Projekt-Buch-"
BRANCH="main"
RAW="https://raw.githubusercontent.com/$REPO/$BRANCH/projekt-starter"
ARCHIV="https://codeload.github.com/$REPO/tar.gz/refs/heads/$BRANCH"

G=$'\033[32m'; C=$'\033[36m'; A=$'\033[33m'; D=$'\033[90m'; N=$'\033[0m'
say() { printf '%s$%s %s\n' "$G" "$N" "$*"; }
fail() { printf '%s! %s%s\n' "$A" "$*" "$N" >&2; exit 1; }
command -v curl >/dev/null || fail "curl fehlt"

DATEIEN=()
ZIEL=""
while [ $# -gt 0 ]; do
  case "$1" in
    --datei) [ $# -ge 2 ] || fail "--datei braucht einen Pfad"; DATEIEN+=("$2"); shift 2 ;;
    --liste)
      cat <<'LISTE'
AGENTS.md
README.md
START-PROMPTS.md
agents/agent.md
agents/architect.md
agents/brief-creator.md
agents/reviewer.md
agents/ui-judge.md
bin/README.md
bin/check-skills
bin/new-skill
brand/BRAND.md
docs/ARCHITECTURE.md
docs/BRIEF.md
docs/DECISIONS.md
docs/DESIGN.md
docs/GLOSSARY.md
docs/HANDOFF.md
docs/PLAN.md
docs/PRINCIPLES.md
docs/PROGRESS.md
docs/REVIEW.md
docs/SCENARIOS.md
docs/UI-REVIEW.md
docs/diagrams/README.md
docs/prototype/README.md
scripts/README.md
skills/SKILLMAP.md
skills/commit-message/SKILL.md
skills/commit-message/tests/prompts.md
skills/commit-message/tests/trigger-queries.md
skills/pb-writer/SKILL.md
skills/pb-writer/references/contributing-writer.md
skills/pb-writer/references/documentation-writer.md
skills/pb-writer/references/readme-writer.md
skills/pb-writer/tests/prompts.md
skills/pb-writer/tests/trigger-queries.md
skills/prior-art-research/SKILL.md
skills/prior-art-research/references/report-template.md
skills/prior-art-research/references/search-strategy.md
skills/prior-art-research/tests/prompts.md
skills/prior-art-research/tests/trigger-queries.md
skills/skill-creator/SKILL.md
skills/skill-creator/references/anti-patterns.md
skills/skill-creator/references/description-patterns.md
skills/skill-creator/references/skill-template.md
skills/skill-creator/scripts/validate_skill.py
skills/skill-creator/tests/prompts.md
skills/skill-creator/tests/trigger-queries.md
src/README.md
LISTE
      exit 0 ;;
    -h|--help)
      cat <<'HILFE'
Projekt-Starter laden
  bash -s mein-projekt                 alle Dateien in den Ordner mein-projekt
  bash -s -- --datei agents/agent.md    eine Datei (mehrfach möglich)
  bash -s -- --liste                   alle ladbaren Dateien anzeigen
HILFE
      exit 0 ;;
    -*) fail "unbekannte Option: $1" ;;
    *) ZIEL="$1"; shift ;;
  esac
done

if [ ${#DATEIEN[@]} -gt 0 ]; then
  for d in "${DATEIEN[@]}"; do
    case "$d" in /*|*..*) fail "ungültiger Pfad: $d" ;; esac
    mkdir -p "$(dirname "$d")"
    say "lade $d"
    curl -fsSL "$RAW/$d" -o "$d" || fail "nicht gefunden: $d (Liste: --liste)"
  done
  printf '%sFertig.%s %s%d Datei(en) im aktuellen Ordner.%s\n' "$G" "$N" "$D" "${#DATEIEN[@]}" "$N"
  exit 0
fi

ZIEL="${ZIEL:-projekt-starter}"
[ -e "$ZIEL" ] && [ -n "$(ls -A "$ZIEL" 2>/dev/null)" ] && fail "Ordner '$ZIEL' existiert und ist nicht leer"
TMP="$(mktemp -d)"; trap 'rm -rf "$TMP"' EXIT
say "lade Projekt-Starter nach ./$ZIEL"
curl -fsSL "$ARCHIV" | tar -xz -C "$TMP" || fail "Download fehlgeschlagen"
QUELLE="$(find "$TMP" -maxdepth 2 -type d -name projekt-starter | head -n1)"
[ -n "$QUELLE" ] || fail "projekt-starter nicht im Archiv gefunden"
mkdir -p "$ZIEL"
cp -R "$QUELLE"/. "$ZIEL"/
N_DATEIEN="$(find "$ZIEL" -type f | wc -l | tr -d ' ')"
printf '\n%s✔ %s Dateien geladen%s\n\n' "$G" "$N_DATEIEN" "$N"
printf '  %scd %s%s\n' "$C" "$ZIEL" "$N"
printf '  %sgit init%s\n' "$C" "$N"
printf '  %sAGENTS.md öffnen%s    %s# Abschnitt 1 ausfüllen%s\n' "$C" "$N" "$D" "$N"
printf '  %s→ Prompt 1 aus START-PROMPTS.md in dein KI-Programm einfügen%s\n\n' "$D" "$N"
