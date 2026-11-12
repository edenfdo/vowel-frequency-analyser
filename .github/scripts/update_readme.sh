#!/bin/bash
set -euo pipefail

result="$1"
contributor="$2"
timestamp="$(date -u '+%Y-%m-%d %H:%M:%S UTC')"

{
  printf '\n### Analysis by %s\n' "$contributor"
  printf 'Timestamp: %s\n\n' "$timestamp"
  printf 'Vowel counts: %s\n' "$result"
} >> README.md