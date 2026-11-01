#!/usr/bin/env python3
"""Prüft einen Skill-Ordner.  Aufruf: python validate_skill.py skills/<name>

Exit-Code 0 = keine Fehler, 1 = Fehler gefunden. Nur Standardbibliothek nötig.
"""
import re
import sys
from pathlib import Path

NAME_RE = re.compile(r"^[a-z0-9]+(-[a-z0-9]+)*$")
ALLOWED = {"name", "description", "license", "compatibility", "metadata", "allowed-tools"}


def parse_frontmatter(text):
    m = re.match(r"^---\n(.*?)\n---\n", text, re.S)
    if not m:
        return None, text
    fields, key = {}, None
    for line in m.group(1).split("\n"):
        mk = re.match(r"^([A-Za-z][\w-]*):\s*(.*)$", line)
        if mk and not line.startswith(" "):
            key = mk.group(1)
            fields[key] = mk.group(2).strip()
        elif key and line.startswith(" "):
            fields[key] = (fields[key] + " " + line.strip()).strip()
    return fields, text[m.end():]


def main(path):
    root = Path(path)
    errors, warnings = [], []
    skill = root / "SKILL.md"
    if not skill.is_file():
        print(f"FEHLER: {skill} fehlt")
        return 1
    text = skill.read_text(encoding="utf-8")
    fm, body = parse_frontmatter(text)
    if fm is None:
        print("FEHLER: Frontmatter fehlt (Datei muss mit --- beginnen und mit --- enden)")
        return 1

    name = fm.get("name", "")
    desc = fm.get("description", "").strip('"\'')
    if not name:
        errors.append("name fehlt")
    else:
        if len(name) > 64:
            errors.append(f"name hat {len(name)} Zeichen (max. 64)")
        if not NAME_RE.match(name):
            errors.append("name: nur a-z, 0-9, Bindestrich; kein Bindestrich am Rand; kein '--'")
        if name != root.name:
            errors.append(f"name '{name}' passt nicht zum Ordner '{root.name}'")
    if not desc:
        errors.append("description fehlt oder ist leer")
    else:
        if len(desc) > 1024:
            errors.append(f"description hat {len(desc)} Zeichen (max. 1024)")
        if "<" in desc or ">" in desc:
            errors.append("description enthält spitze Klammern")
        if "nutze" not in desc.lower() and "use " not in desc.lower():
            warnings.append("description enthält kein 'Nutze diesen Skill, wenn ...'")
        if "nicht für" not in desc.lower() and "not for" not in desc.lower():
            warnings.append("description enthält kein 'Nicht für ...' (Abgrenzung)")
        if len(desc) < 80:
            warnings.append("description sehr kurz (unter 80 Zeichen): Stichworte ergänzen")
    for key in fm:
        if key not in ALLOWED:
            errors.append(f"unbekanntes Frontmatter-Feld: {key}")
    if "compatibility" in fm and len(fm["compatibility"]) > 500:
        errors.append("compatibility über 500 Zeichen")

    lines = body.count("\n") + 1
    if lines > 500:
        errors.append(f"SKILL.md hat {lines} Zeilen (max. 500): Teile nach references/ aus")
    elif lines > 300:
        warnings.append(f"SKILL.md hat {lines} Zeilen: prüfe, ob Teile nach references/ gehören")

    # Verweise prüfen
    for ref in set(re.findall(r"`((?:references|scripts|assets)/[^`\s]+)`", body)):
        if not (root / ref).exists():
            errors.append(f"Verweis auf fehlende Datei: {ref}")
    for sub in ("references", "scripts", "assets"):
        d = root / sub
        if d.is_dir():
            for f in d.rglob("*"):
                if f.is_file() and f.name not in body and f.suffix in {".md", ".py", ".sh"}:
                    warnings.append(f"{sub}/{f.name} wird in SKILL.md nicht erwähnt")
                if f.suffix == ".md" and f.stat().st_size > 0:
                    n = f.read_text(encoding="utf-8").count("\n")
                    if n > 100 and "inhalt" not in f.read_text(encoding="utf-8")[:600].lower():
                        warnings.append(f"{sub}/{f.name}: über 100 Zeilen ohne Inhaltsverzeichnis")

    if not re.search(r"^## .*(Ablauf|Schritte|Workflow|Phase)", body, re.M | re.I):
        warnings.append("kein Abschnitt 'Ablauf' gefunden")
    if re.search(r"(api[_-]?key|passwort|password|secret|token)\s*[:=]\s*\S{8,}", text, re.I):
        errors.append("mögliches Geheimnis im Text")
    if re.search(r"(/home/|/Users/|C:\\\\)", text):
        warnings.append("absoluter Pfad im Text: verwende relative Pfade")
    if not (root / "tests").exists():
        warnings.append("tests/ fehlt (prompts.md, trigger-queries.md)")

    for e in errors:
        print("FEHLER:", e)
    for w in warnings:
        print("HINWEIS:", w)
    print(f"Ergebnis: {len(errors)} Fehler, {len(warnings)} Hinweise ({lines} Zeilen Körper)")
    return 1 if errors else 0


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print(__doc__)
        sys.exit(2)
    sys.exit(main(sys.argv[1]))
