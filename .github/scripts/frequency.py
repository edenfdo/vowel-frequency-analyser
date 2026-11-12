import sys
from collections import Counter
from pathlib import Path


def count_vowels(file_path):
    text = Path(file_path).read_text(encoding="utf-8").lower()
    counts = Counter(character for character in text if character in "aeiou")
    return ", ".join(f"{vowel}: {counts[vowel]}" for vowel in "aeiou")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: frequency.py FILE", file=sys.stderr)
        sys.exit(1)

    try:
        print(count_vowels(sys.argv[1]))
    except OSError as error:
        print(f"Cannot read input file: {error}", file=sys.stderr)
        sys.exit(1)