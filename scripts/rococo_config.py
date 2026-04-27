#!/usr/bin/env python3
import json
import os
import sys
from pathlib import Path

SEARCH_PATHS = [
    Path.cwd() / "rococo.json",
    Path.cwd() / ".rococo.json",
    Path.home() / ".config" / "rococo" / "config.json",
]

DEFAULT = {
    "enabled": False,
    "level": "rococo",
    "signature": False,
    "showModeBanner": False,
    "allowInTools": False,
}

VALID_LEVELS = {"ornate-lite", "rococo", "byzantine", "imperial", "cathedral"}


def load_first_config():
    for path in SEARCH_PATHS:
        if path.exists() and path.is_file():
            try:
                data = json.loads(path.read_text(encoding="utf-8"))
                if not isinstance(data, dict):
                    raise ValueError("config must be a JSON object")
                merged = {**DEFAULT, **data}
                if merged["level"] not in VALID_LEVELS:
                    merged["level"] = DEFAULT["level"]
                merged["_path"] = str(path)
                merged["_valid"] = True
                return merged
            except Exception as exc:
                return {
                    **DEFAULT,
                    "_path": str(path),
                    "_valid": False,
                    "_error": str(exc),
                }
    return {**DEFAULT, "_path": None, "_valid": False, "_error": "no config found"}


def main():
    config = load_first_config()

    if len(sys.argv) > 1 and sys.argv[1] == "--shell":
        enabled = "1" if config.get("enabled") else "0"
        level = config.get("level", DEFAULT["level"])
        path = config.get("_path") or ""
        valid = "1" if config.get("_valid") else "0"
        print(f"ROCOCO_ENABLED={enabled}")
        print(f"ROCOCO_LEVEL={level}")
        print(f"ROCOCO_CONFIG_PATH={path}")
        print(f"ROCOCO_CONFIG_VALID={valid}")
        return

    print(json.dumps(config, indent=2))


if __name__ == "__main__":
    main()
