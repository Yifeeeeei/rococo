# Rococo

> why use few token when many do trick

A deliberately extravagant skill for AI agents.

Rococo makes an agent answer correctly, but with scenic detours, ornamental reasoning, dramatic framing, recursive qualification, and an almost suspicious enthusiasm for spending tokens on matters that could, in a less decorated universe, have been settled in a sentence or two.

This is not a productivity tool.
This is anti-efficiency as a product surface.

[What it does](#what-it-does) • [Why](#why-this-exists) • [Install](#install) • [Levels](#levels) • [Config](#config) • [Examples](#before--after) • [Benchmarks](#totally-unnecessary-benchmarks) • [FAQ](#faq)

## What it does

Rococo transforms ordinary agent replies into highly upholstered prose.

### Before

> The bug happens because `items` is undefined.

### After

> What first presents itself as a small and somewhat impolite runtime failure is, on closer inspection, a disagreement between the shape of the value the program expected to meet and the one that reality, with its usual indifference to local assumptions, actually supplied...

Same answer.
Many more tokens.
Considerably better curtains.

## Why this exists

Most agent tooling optimizes for:

- lower token usage
- faster response time
- shorter answers
- clearer directness

Rococo, with great composure and very little shame, optimizes for none of these things.

It exists for:

- comedy
- aesthetic excess
- demos with personality
- testing whether agent style is actually controllable
- delighting exactly the sort of person who thinks deliberate overengineering is, in moderation, a form of art

## Design principles

- **Correctness remains mandatory.** The style may swell; the facts may not drift.
- **Directness is optional.** If a conclusion can be approached by staircase instead of ladder, choose staircase.
- **Trivialities deserve pageantry.** Minor bugs and ordinary decisions should receive more ceremony than they have earned.
- **Artifacts stay clean.** Code, commands, JSON, YAML, and patches should remain usable.
- **Opt-in only.** Rococo should never silently infect normal workflows.

## Install

## Quick install

```bash
bash install.sh
```

To install into another target directory:

```bash
bash install.sh /path/to/project
```

This installs a starter `.rococo.json` and prints next steps.

## As a local skill

Copy or symlink the skill into your agent skill directory.

Repo-friendly files live here:

```text
projects/rococo/
```

Packaged skill lives here:

```text
skills/dist/rococo.skill
```

## As a repo-local mode

Place a config file in the project root:

```json
{
  "enabled": true,
  "level": "rococo"
}
```

Then add a session-start rule or hook that checks for it.

See:

- `hooks/installation.md`
- `hooks/claude-sessionstart-example.md`
- `hooks/codex-hook-notes.md`
- `hooks/codex-hook-example.sh`

## Agent notes

| Agent | Activation idea | Auto-on support | Notes |
|---|---|---:|---|
| Claude Code | SessionStart hook + config check | Yes | Keep prose ornate, keep artifacts clean |
| Codex | Repo-local hook/instruction + `rococo_config.py` | Yes | Good fit for per-repo mode |
| Gemini CLI | Extension/context + slash trigger | Yes | Banner optional via config |
| Cursor | Rules file + config check | Partial | Best as rule snippet |
| Windsurf | Rules file + config check | Partial | Same pattern as Cursor |
| Cline | Rules/system prompt | Partial | Manual or prompt-based |
| Copilot | Custom instructions | Partial | Best as opt-in rule |
| Generic agents | Prompt/rules + config file | Depends | Fallback path |

## Commands

Suggested command surface:

- `/rococo`
- `/rococo ornate-lite`
- `/rococo rococo`
- `/rococo byzantine`
- `/rococo imperial`
- `/rococo cathedral`
- `/rococo off`

Plain-language triggers also work well:

- `enable rococo mode`
- `take the scenic route`
- `overthink this`
- `waste tokens`
- `answer like an exhausted palace architect`

Stop triggers:

- `stop rococo`
- `normal mode`
- `just answer`
- `be concise`

## Levels

### ornate-lite
A modest excess. Slightly more elaborate than necessary.

### rococo
The default house style. Decorative, delayed, and self-consciously overfurnished.

### byzantine
Nested caveats. Procedural spirals. Administrative overthinking with style.

### imperial
High ceremony. Formal gravity. Courtroom upholstery.

### cathedral
Maximum rhetorical architecture. Build the nave before revealing the obvious.

## Config

Rococo checks these locations in order:

1. `./rococo.json`
2. `./.rococo.json`
3. `~/.config/rococo/config.json`

Example:

```json
{
  "enabled": true,
  "level": "rococo",
  "signature": false,
  "showModeBanner": false,
  "allowInTools": false
}
```

### Config keys

- `enabled` — turn Rococo on by default
- `level` — one of `ornate-lite`, `rococo`, `byzantine`, `imperial`, `cathedral`
- `signature` — append a small mode marker if desired
- `showModeBanner` — announce the mode at the start of replies
- `allowInTools` — allow ornate style inside generated artifacts; usually keep this false

## Config helper

Rococo includes a tiny helper script:

```bash
python3 scripts/rococo_config.py
python3 scripts/rococo_config.py --shell
```

That helper:

- resolves the first matching config file
- normalizes missing keys with defaults
- validates the level
- prints JSON or shell-friendly environment variables

## Before / After

### Example 1: Bug explanation

Normal:

> Because `items` is undefined and you call `map` on it. Default it to `[]` or validate it first.

Rococo:

> What appears, at first glance, to be a simple function crash is in fact a small but revealing disagreement between the shape of the data the code expected and the one that runtime reality, which has no obligation to honor local optimism, actually delivered. The method `map` arrives with a quiet precondition: that something array-like already stands ready to receive it. Here, unfortunately, no such dignitary is present. The value is `undefined`, the assumption collapses, and JavaScript refuses further diplomacy. So, after perhaps more ceremony than this error strictly merits, the fix is straightforward: validate the input before this line, or default it to `[]`.

### Example 2: Recommendation

Normal:

> Use SQLite for a small local prototype. Use Postgres if you need concurrency or expect growth.

Rococo:

> The choice here is not merely between two databases, but between two implied futures: one admirably local, compact, and frictionless; the other already leaning toward infrastructure, coordination, and the social complexity of software that expects to be taken seriously by more than one process at a time. SQLite is the patron saint of prototypes that wish to remain lightweight and immediate. Postgres enters when the future begins, even faintly, to demand concurrency, hosting, or scale. In practical terms—because practicality must eventually reclaim the floor—use SQLite for a simple local prototype, and choose Postgres when multi-user reality is already visible on the horizon.

More samples:

- `examples/before-after.md`
- `examples/levels.md`

## Totally unnecessary benchmarks

Rococo ships with benchmark ideas that optimize all the wrong things.

See:

- `examples/benchmarks.md`

Highlights include:

- token expansion ratio
- answer arrival delay
- rhetorical staircase count
- unjustified ceremonial seriousness
- upholstery density

## Repo layout

```text
rococo/
├── README.md
├── LICENSE
├── SKILL.md
├── .gitignore
├── .rococo.json
├── install.sh
├── uninstall.sh
├── config/
│   └── rococo.example.json
├── examples/
│   ├── before-after.md
│   ├── benchmarks.md
│   ├── command-ideas.md
│   └── levels.md
├── scripts/
│   └── rococo_config.py
└── hooks/
    ├── claude-sessionstart-example.md
    ├── codex-hook-example.sh
    ├── codex-hook-notes.md
    ├── installation.md
    ├── prompt-snippets.md
    └── uninstall-notes.md
```

## Safety rails

Even at cathedral level, Rococo should:

- not invent facts
- not bury uncertainty under ornament
- not stylize machine-readable output unless explicitly requested
- not continue once the user asks for normal mode
- not turn exact commands into decorative prose

## FAQ

### Is this useful?

Not in the usual sense.

### Then why make it?

Because the internet occasionally deserves objects that are memorable before they are practical.

### Is this just verbosity?

No. Ordinary verbosity is often shapeless. Rococo aims for ornamental excess with visible design.

### Will this ruin code output?

It should not. Rococo is meant for explanation, not artifact corruption.

### Can I leave it on globally?

Yes. That is what the config file is for. But you should probably not do this to innocent coworkers.

## Status

Work in progress.
Already gloriously wasteful.
