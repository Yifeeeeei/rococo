# Codex Hook Notes

Repo-local activation can be done by combining a project config file with a session-start instruction or hook.

## Suggested behavior

1. On session start, look for a Rococo config file.
2. If found and enabled, apply the configured level.
3. Keep conversational explanations ornate.
4. Keep code and structured artifacts clean.
5. Exit Rococo mode immediately on explicit stop commands.

## Important constraint

The hook should only activate style for prose. It should not mutate exact commands, patches, machine-readable outputs, or code generation unless the user explicitly asks for that behavior.
