#!/usr/bin/env bash
# Projekt-Starter laden.
#   Alles:          curl -fsSL https://raw.githubusercontent.com/atshv/Projekt-Buch-/main/install.sh | bash -s mein-projekt
#   Eine Datei:     curl -fsSL https://raw.githubusercontent.com/atshv/Projekt-Buch-/main/install.sh | bash -s -- --datei toolkit/agents/architect.md
#   Mehrere Dateien: ... | bash -s -- --datei AGENTS.md --datei toolkit/agents/agent.md
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
.cursor/rules/projekt.mdc
.github/copilot-instructions.md
AGENTS.md
CLAUDE.md
GEMINI.md
README.md
START-PROMPTS.md
bin/README.md
bin/check-done
bin/check-plan
bin/check-scope
bin/check-skills
bin/finish-change
bin/new-change
bin/new-skill
bin/record-test
brand/BRAND.md
docs/GLOSSARY.md
docs/adr/_overview.md
docs/architecture/ARCHITECTURE.md
docs/architecture/diagrams/README.md
docs/brief/BRIEF.md
docs/changes/README.md
docs/design/DESIGN.md
docs/design/SCENARIOS.md
docs/design/prototype/README.md
docs/handoff/HANDOFF.md
docs/handoff/PROGRESS.md
docs/integrations/README.md
docs/plan/PLAN.md
docs/principles/PRINCIPLES.md
docs/problem-to-solution/README.md
docs/reviews/README.md
scripts/README.md
src/README.md
tests/README.md
toolkit/agents/agent.md
toolkit/agents/architect.md
toolkit/agents/brief-creator.md
toolkit/agents/reviewer.md
toolkit/agents/ui-judge.md
toolkit/governance/README.md
toolkit/governance/anti-drift.md
toolkit/governance/code-style.md
toolkit/governance/definition-of-done.md
toolkit/governance/git-workflow.md
toolkit/skills/SKILLMAP.md
toolkit/skills/adr-writer/SKILL.md
toolkit/skills/adr-writer/scripts/new_adr.py
toolkit/skills/adr-writer/templates/adr.md
toolkit/skills/adr-writer/templates/overview-row.md
toolkit/skills/adr-writer/tests/prompts.md
toolkit/skills/adr-writer/tests/trigger-queries.md
toolkit/skills/commit-message/SKILL.md
toolkit/skills/commit-message/tests/prompts.md
toolkit/skills/commit-message/tests/trigger-queries.md
toolkit/skills/decision-brief/SKILL.md
toolkit/skills/decision-brief/templates/decision-brief.md
toolkit/skills/decision-brief/tests/prompts.md
toolkit/skills/decision-brief/tests/trigger-queries.md
toolkit/skills/glossary-keeper/SKILL.md
toolkit/skills/glossary-keeper/templates/glossary.md
toolkit/skills/glossary-keeper/tests/prompts.md
toolkit/skills/glossary-keeper/tests/trigger-queries.md
toolkit/skills/pb-writer/SKILL.md
toolkit/skills/pb-writer/references/contributing-writer.md
toolkit/skills/pb-writer/references/documentation-writer.md
toolkit/skills/pb-writer/references/readme-writer.md
toolkit/skills/pb-writer/tests/prompts.md
toolkit/skills/pb-writer/tests/trigger-queries.md
toolkit/skills/plain-language/SKILL.md
toolkit/skills/plain-language/scripts/readability.py
toolkit/skills/plain-language/tests/prompts.md
toolkit/skills/plain-language/tests/trigger-queries.md
toolkit/skills/plan-cards/SKILL.md
toolkit/skills/plan-cards/templates/card.md
toolkit/skills/plan-cards/templates/plan-check.md
toolkit/skills/plan-cards/tests/prompts.md
toolkit/skills/plan-cards/tests/trigger-queries.md
toolkit/skills/plan-challenge/SKILL.md
toolkit/skills/plan-challenge/tests/prompts.md
toolkit/skills/plan-challenge/tests/trigger-queries.md
toolkit/skills/principle-writer/SKILL.md
toolkit/skills/principle-writer/templates/principle.md
toolkit/skills/principle-writer/tests/prompts.md
toolkit/skills/principle-writer/tests/trigger-queries.md
toolkit/skills/prior-art-research/SKILL.md
toolkit/skills/prior-art-research/references/report-template.md
toolkit/skills/prior-art-research/references/search-strategy.md
toolkit/skills/prior-art-research/tests/prompts.md
toolkit/skills/prior-art-research/tests/trigger-queries.md
toolkit/skills/skill-creator/SKILL.md
toolkit/skills/skill-creator/references/anti-patterns.md
toolkit/skills/skill-creator/references/description-patterns.md
toolkit/skills/skill-creator/references/skill-template.md
toolkit/skills/skill-creator/scripts/validate_skill.py
toolkit/skills/skill-creator/tests/prompts.md
toolkit/skills/skill-creator/tests/trigger-queries.md
toolkit/templates/README.md
toolkit/templates/bestand.md
toolkit/templates/change.md
toolkit/templates/review.md
toolkit/templates/ui-review.md
LISTE
      exit 0 ;;
    -h|--help)
      cat <<'HILFE'
Projekt-Starter laden
  bash -s mein-projekt                 alle Dateien in den Ordner mein-projekt
  bash -s -- --datei toolkit/agents/agent.md    eine Datei (mehrfach möglich)
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
    case "$d" in bin/*) chmod +x "$d" ;; esac
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
printf '  %s→ Prompt 1 (Schritt für Schritt) oder Prompt 16 (alles in einem Durchlauf)%s\n' "$D" "$N"
printf '  %s  aus START-PROMPTS.md in dein KI-Programm einfügen%s\n\n' "$D" "$N"
