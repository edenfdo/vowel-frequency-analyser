#!/bin/bash
set -euo pipefail

cd "$GITHUB_WORKSPACE"

echo "Analysing $FILE"
result="$(python /app/frequency.py "$FILE")"

echo "$result"
bash /app/update_readme.sh "$result" "$GITHUB_USER"

echo "README updated successfully."