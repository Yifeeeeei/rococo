#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
CONFIG_SCRIPT="$ROOT_DIR/scripts/rococo_config.py"

if [[ ! -f "$CONFIG_SCRIPT" ]]; then
  exit 0
fi

# Example usage:
# eval "$($CONFIG_SCRIPT --shell)"
# if [[ "$ROCOCO_ENABLED" == "1" ]]; then
#   echo "Rococo active at level: $ROCOCO_LEVEL"
# fi

exit 0
