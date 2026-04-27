#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET_DIR="${1:-$PWD}"
CONFIG_TARGET="$TARGET_DIR/.rococo.json"

printf '== Rococo install ==\n'
printf 'Source: %s\n' "$ROOT_DIR"
printf 'Target: %s\n' "$TARGET_DIR"

mkdir -p "$TARGET_DIR"

if [[ -f "$CONFIG_TARGET" ]]; then
  printf 'Config already exists: %s\n' "$CONFIG_TARGET"
else
  cp "$ROOT_DIR/config/rococo.example.json" "$CONFIG_TARGET"
  printf 'Installed config: %s\n' "$CONFIG_TARGET"
fi

cat <<'EOF'

Next steps:
1. Add a session-start hook or agent rule that checks for Rococo config.
2. Use hooks/installation.md for agent-specific ideas.
3. Test with one of:
   - /rococo
   - overthink this
   - take the scenic route

To inspect config resolution:
  python3 scripts/rococo_config.py
  python3 scripts/rococo_config.py --shell
EOF
