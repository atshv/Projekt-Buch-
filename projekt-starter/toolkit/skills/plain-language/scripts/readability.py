#!/usr/bin/env python3
"""Misst die Lesbarkeit eines deutschen Textes (Markdown oder Text).

Aufruf: python3 readability.py <datei> [--glossar docs/GLOSSARY.md]

Lesewert nach Amstad (Flesch für Deutsch): 180 - Wörter pro Satz - 58.5 * Silben pro Wort.
Silben werden über Vokalgruppen geschätzt. Codeblöcke, Tabellen und Links werden ignoriert.
"""
import argparse
import re
import sys
from pathlib import Path

VOWEL_GROUPS = re.compile(r"[aeiouyäöü]+", re.I)
PASSIVE_HINT = re.compile(r"\b(wird|werden|wurde|wurden|worden)\b[^.!?]*\b\w+(t|en)\b", re.I)


def clean_markdown(text):
    text = re.sub(r"```.*?```", " ", text, flags=re.S)       # Codeblöcke
    text = re.sub(r"^\s*\|.*\|\s*$", " ", text, flags=re.M)  # Tabellen
    text = re.sub(r"`[^`]*`", " ", text)                     # Inline-Code
    text = re.sub(r"\[([^\]]*)\]\([^)]*\)", r"\1", text)      # Links -> Linktext
    text = re.sub(r"^#+\s*(.*)$", r"\n\1\n", text, flags=re.M)  # Überschrift = eigene Einheit
    # Listenpunkt = eigene Einheit
    text = re.sub(r"^\s*(?:[-*]|\d+\.)\s+(?:\[[ x]\]\s*)?", "\n\n", text, flags=re.M)
    return text


def count_syllables(word):
    return max(1, len(VOWEL_GROUPS.findall(word)))


def describe(score):
    if score >= 70:
        return "leicht"
    if score >= 50:
        return "gut lesbar"
    if score >= 40:
        return "mittelschwer"
    if score >= 30:
        return "schwer"
    return "sehr schwer"


def light(value, good, warn, higher_is_better=True):
    if higher_is_better:
        return "🟢" if value >= good else ("🟡" if value >= warn else "🔴")
    return "🟢" if value < good else ("🟡" if value <= warn else "🔴")


def main():
    parser = argparse.ArgumentParser(description="Lesbarkeit messen")
    parser.add_argument("file")
    parser.add_argument("--glossar", default="docs/GLOSSARY.md")
    args = parser.parse_args()

    raw = Path(args.file).read_text(encoding="utf-8")
    text = clean_markdown(raw)
    sentences = [s.strip() for s in re.split(r"(?<=[.!?])\s+|\n{2,}", text) if len(s.split()) >= 3]
    words = re.findall(r"[A-Za-zÄÖÜäöüß]+", " ".join(sentences))
    if not sentences or not words:
        sys.exit("Kein auswertbarer Text gefunden.")

    words_per_sentence = len(words) / len(sentences)
    syllables_per_word = sum(count_syllables(w) for w in words) / len(words)
    score = 180 - words_per_sentence - 58.5 * syllables_per_word

    long_sentences = [s for s in sentences if len(s.split()) > 25]
    passive = [s for s in sentences if PASSIVE_HINT.search(s)]
    paragraphs = [p for p in re.split(r"\n\s*\n", text) if p.strip()]
    long_paragraphs = [p for p in paragraphs if len(re.findall(r"[.!?](\s|$)", p)) > 5]

    avoid = []
    glossar = Path(args.glossar)
    if glossar.exists():
        part = glossar.read_text(encoding="utf-8").split("## Zu vermeiden")
        if len(part) > 1:
            for line in part[1].split("##")[0].splitlines():
                cells = [c.strip() for c in line.strip("|").split("|")]
                if len(cells) >= 2 and cells[0] and not cells[0].startswith(("-", "Nicht")):
                    avoid.append(cells[0])
    found_avoid = sorted({w for w in avoid if re.search(rf"\b{re.escape(w)}\b", text, re.I)})

    print("Zielgruppe: Menschen ohne Technikwissen")
    print(f"Lesewert: {score:.0f} {light(score, 50, 40)} [{describe(score)}; Ziel 50+]")
    wps_light = light(words_per_sentence, 15, 20, False)
    print(f"Wörter pro Satz: {words_per_sentence:.1f} {wps_light} [Ziel unter 15]")
    print(f"Sätze: {len(sentences)}, Wörter: {len(words)}")
    print(f"Lange Sätze (über 25 Wörter): {len(long_sentences)}")
    for s in long_sentences[:10]:
        print("  -", s[:160] + ("…" if len(s) > 160 else ""))
    print(f"Passiv-Kandidaten: {len(passive)} ({100 * len(passive) / len(sentences):.0f} %)")
    for s in passive[:10]:
        print("  -", s[:160] + ("…" if len(s) > 160 else ""))
    print(f"Lange Absätze (über 5 Sätze): {len(long_paragraphs)}")
    if found_avoid:
        print("Zu vermeidende Wörter laut Glossar:", ", ".join(found_avoid))
    print("Hinweis: Silben sind geschätzt. Der Wert ist eine Näherung.")


if __name__ == "__main__":
    main()
