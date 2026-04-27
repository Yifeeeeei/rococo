# Uninstall Notes

Rococo is lightweight, but uninstall still has two layers.

## Remove config

Run:

```bash
bash uninstall.sh
```

Or remove `.rococo.json` manually from the project root.

## Remove activation rules

Also remove any:

- session-start hook
- repo-local startup instruction
- custom system prompt snippet
- slash-command mapping you created for Rococo

## Important

Deleting the config file disables the default-on behavior, but does not automatically remove any separate rule or hook you added in an agent platform.
