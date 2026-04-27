#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${1:-$PWD}"
CONFIG_TARGET="$TARGET_DIR/.rococo.json"

printf '== Rococo uninstall ==\n'
printf 'Target: %s\n' "$TARGET_DIR"

if [[ -f "$CONFIG_TARGET" ]]; then
  rm "$CONFIG_TARGET"
  printf 'Removed config: %s\n' "$CONFIG_TARGET"
else
  printf 'No config found at: %s\n' "$CONFIG_TARGET"
fi

cat <<'EOF'

Reminder:
- Remove any Rococo session-start hook or agent rule manually.
- Remove copied skill files manually if you installed them elsewhere.
EOF
