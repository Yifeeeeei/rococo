# Installation and Activation

This file collects agent-specific ideas for making Rococo easy to turn on.

## Shared principle

Rococo should be explicit.

Either:
- activate it manually for a session, or
- place a config file in the repo and add a session-start instruction that checks for it

## Claude Code

Possible approach:

1. Install the skill/plugin in the normal Claude-compatible way.
2. Add a SessionStart instruction that:
   - checks `./rococo.json`, `./.rococo.json`, then `~/.config/rococo/config.json`
   - activates Rococo when `enabled=true`
   - limits the style to natural-language responses
3. Disable on `stop rococo`, `normal mode`, `be concise`, or `just answer`

## Codex

Possible approach:

1. Keep `SKILL.md` and `.rococo.json` in the repo.
2. Add a repo-local hook or startup instruction.
3. Use `scripts/rococo_config.py --shell` to read the chosen config.
4. Apply the level only to prose, never to exact commands or patches.

## Gemini CLI

Possible approach:

1. Install as an extension or add the files to a repo context.
2. At startup, load the config and announce the selected mode only if `showModeBanner` is true.
3. Support slash-style triggers like `/rococo cathedral` and `/rococo off`.

## Cursor / Windsurf / Cline / Copilot

Possible approach:

1. Install the skill or copy the mode instructions into the relevant rules file.
2. Add a short always-on instruction that says:
   - check for Rococo config
   - if enabled, use ornate prose
   - keep code and structured output clean
3. Let the user disable with plain-language stop commands.

## Generic fallback

If an agent has no real hook system, the user can still:

- place `.rococo.json` in the repo
- paste the Rococo activation rule into the agent's system prompt or rule file
- use plain-language triggers when needed
