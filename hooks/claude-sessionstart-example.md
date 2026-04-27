# Claude SessionStart Example

Use this as an idea, not as a mandatory implementation.

## Intent

If your agent platform supports a session-start hook, add a small rule that checks for a Rococo config file and activates the style when enabled.

## Example instruction

```text
At session start, check for ./rococo.json, ./.rococo.json, then ~/.config/rococo/config.json.
If a valid config exists and enabled=true, use Rococo style for natural-language responses.
Do not apply Rococo style to code, commands, patches, JSON, YAML, or other machine-readable output.
If the user says stop rococo, normal mode, just answer, or be concise, disable the style immediately.
```
