#!/usr/bin/env python3
"""Legt ein neues ADR mit der nächsten Nummer an und trägt es in die Übersicht ein.

Aufruf (aus dem Projektordner):
  python3 toolkit/skills/adr-writer/scripts/new_adr.py "Titel der Entscheidung" [--bezug "M1, P02"]

Schreibt docs/adr/adr-NNNN-<titel>.md (aus templates/adr.md, ohne Beispielteil) und
ergänzt docs/adr/_overview.md. Ändert keine bestehenden ADRs.
"""
import argparse
import datetime
import re
import sys
from pathlib import Path

SKILL_DIR = Path(__file__).resolve().parent.parent
TEMPLATE = SKILL_DIR / "templates" / "adr.md"
OVERVIEW_HEAD = (
    "# Entscheidungen (ADR-Übersicht)\n\n"
    "| Nr       | Titel | Status | Bezug | Zuletzt geändert |\n"
    "|----------|-------|--------|-------|------------------|\n"
)


def make_slug(title):
    text = title.lower()
    for umlaut, plain in (("ä", "ae"), ("ö", "oe"), ("ü", "ue"), ("ß", "ss")):
        text = text.replace(umlaut, plain)
    words = re.findall(r"[a-z0-9]+", text)[:6]
    return "-".join(words) or "entscheidung"


def next_number(adr_dir):
    numbers = [int(m.group(1)) for p in adr_dir.glob("adr-*.md")
               if (m := re.match(r"adr-(\d{4})-", p.name))]
    return max(numbers, default=0) + 1


def main():
    parser = argparse.ArgumentParser(description="Neues ADR anlegen")
    parser.add_argument("title", help="Titel der Entscheidung")
    parser.add_argument("--bezug", default="", help='z. B. "M1, P02, T05"')
    parser.add_argument("--root", default=".", help="Projektordner (Standard: aktueller Ordner)")
    args = parser.parse_args()

    adr_dir = Path(args.root) / "docs" / "adr"
    adr_dir.mkdir(parents=True, exist_ok=True)
    number = f"{next_number(adr_dir):04d}"
    today = datetime.date.today().isoformat()
    file_name = f"adr-{number}-{make_slug(args.title)}.md"
    target = adr_dir / file_name
    if target.exists():
        sys.exit(f"Gibt es schon: {target}")

    template = TEMPLATE.read_text(encoding="utf-8").split("\n---\n")[0]
    content = (template.replace("[Kurzer Titel der Entscheidung]", args.title)
               .replace("adr-NNNN", f"adr-{number}")
               .replace("JJJJ-MM-TT", today))
    if args.bezug:
        content = content.replace("[M1, P02, T05]", args.bezug)
    target.write_text(content.rstrip() + "\n", encoding="utf-8")

    overview = adr_dir / "_overview.md"
    text = overview.read_text(encoding="utf-8") if overview.exists() else OVERVIEW_HEAD
    row = f"| adr-{number} | [{args.title}]({file_name}) | vorgeschlagen | {args.bezug or '-'} | {today} |\n"
    overview.write_text(text.rstrip("\n") + "\n" + row, encoding="utf-8")
    print(f"Angelegt: {target}")
    print("Weiter: Zusammenfassung, Entscheidung und Folgen ausfüllen, Status setzen.")


if __name__ == "__main__":
    main()
