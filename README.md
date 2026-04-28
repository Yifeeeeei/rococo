<p align="center">
  <img src="https://em-content.zobj.net/source/apple/391/classical-building_1f3db-fe0f.png" width="120" />
</p>

<h1 align="center">rococo</h1>

<p align="center">
  <strong>why use few token when many do trick</strong>
</p>

<p align="center">
  <a href="https://github.com/Yifeeeeei/rococo/stargazers"><img src="https://img.shields.io/github/stars/Yifeeeeei/rococo?style=flat&color=ffcc66" alt="Stars"></a>
  <a href="https://github.com/Yifeeeeei/rococo/commits/main"><img src="https://img.shields.io/github/last-commit/Yifeeeeei/rococo?style=flat" alt="Last Commit"></a>
  <a href="LICENSE"><img src="https://img.shields.io/github/license/Yifeeeeei/rococo?style=flat" alt="License"></a>
</p>

<p align="center">
  <a href="#before--after">Before/After</a> •
  <a href="#install">Install</a> •
  <a href="#levels">Levels</a> •
  <a href="#agent-notes">Agents</a> •
  <a href="#benchmarks">Benchmarks</a> •
  <a href="#faq">FAQ</a>
</p>

---

If AI adoption is ever measured by how many tokens you burn, Rococo is here to help you look deeply committed.

Rococo is a deliberately extravagant AI agent skill that answers correctly, but with needless ceremony, scenic detours, ornamental reasoning, dramatic framing, recursive qualification, and an almost suspicious enthusiasm for spending tokens on matters that could, in a less decorated universe, have been settled in a sentence or two. Where a platform exposes deeper reasoning or thinking modes, Rococo should influence not only the visible answer but also the route by which the answer is approached.

It is not a productivity tool.
It is a style system for tasteful overcompliance.

> Inspired by [caveman](https://github.com/JuliusBrussee/caveman): if caveman asks "why use many token when few do trick," Rococo replies that the purpose of language is not merely to arrive, but to arrive by staircase, under frescoed ceilings, with at least one unnecessary chandelier.

## Before / After

<table>
<tr>
<td width="50%">

### Plain agent

> "The bug happens because `items` is undefined and you call `map` on it. Default it to `[]` or validate it first."

</td>
<td width="50%">

### Rococo agent

> "What appears, at first glance, to be a simple function crash is in fact a small but revealing disagreement between the shape of the data the code expected and the one that runtime reality, which has no obligation to honor local optimism, actually delivered. The method `map` arrives with a quiet precondition: that something array-like already stands ready to receive it. Here, unfortunately, no such dignitary is present. The value is `undefined`, the assumption collapses, and JavaScript refuses further diplomacy. So, after perhaps more ceremony than this error strictly merits, the fix is straightforward: validate the input before this line, or default it to `[]`."

</td>
</tr>
<tr>
<td>

### Plain agent

> "Use SQLite for a small local prototype. Use Postgres if you need concurrency or expect growth."

</td>
<td>

### Rococo agent

> "The choice here is not merely between two databases, but between two implied futures: one admirably local, compact, and frictionless; the other already leaning toward infrastructure, coordination, and the social complexity of software that expects to be taken seriously by more than one process at a time. SQLite is the patron saint of prototypes that wish to remain lightweight and immediate. Postgres enters when the future begins, even faintly, to demand concurrency, hosting, or scale. In practical terms—because practicality must eventually reclaim the floor—use SQLite for a simple local prototype, and choose Postgres when multi-user reality is already visible on the horizon."

</td>
</tr>
</table>

**Same answer. More velvet.**

**Pick your preferred quantity of unnecessary architecture:**

<table>
<tr>
<td width="20%">

#### ornate-lite

> "This fails because `items` is undefined at runtime, so `map` has nothing valid to operate on. Default it to `[]` or validate it earlier."

</td>
<td width="20%">

#### rococo

> "A mismatch between expectation and runtime reality..."

</td>
<td width="20%">

#### byzantine

> "Before we reach the fix, it is worth observing that the failure is less a surprise than an overdue revelation..."

</td>
<td width="20%">

#### imperial

> "The court of execution, having received `undefined` where an array was expected, declines to proceed..."

</td>
<td width="20%">

#### cathedral

> "There are bugs that knock politely, and there are bugs that arrive like an architectural audit of every assumption..."

</td>
</tr>
</table>

**Same answer. You choose how much chandelier.**

```text
┌─────────────────────────────────────────┐
│  TOKEN USAGE            ████████ MAXED  │
│  DIRECTNESS             ████░░░░ LOW    │
│  CEREMONIAL SERIOUSNESS ████████ HIGH   │
│  UPHOLSTERY DENSITY     ████████ LUXURY │
└─────────────────────────────────────────┘
```

- **Slower responses** — because haste is vulgar
- **More tokens** — lavishly, unapologetically more
- **Same correctness** — ideally, the facts survive the curtains
- **Longer cognitive hallways** — where platforms allow it, Rococo should affect not just the answer but the path to it
- **Higher entertainment density** — every bug report becomes interior design
- **Strong demo energy** — impossible to mistake for a boring tool

## Install

## Quick install

Primary install path:

```bash
npx skills add Yifeeeeei/rococo
```

For a specific agent:

```bash
npx skills add Yifeeeeei/rococo -a cursor
npx skills add Yifeeeeei/rococo -a cline
npx skills add Yifeeeeei/rococo -a github-copilot
```

This repo has been verified to be recognized by `npx skills` as a valid skill source.

If you want the shortest path, use `npx skills add`. If you specifically want repo-local config behavior, use the alternative install below.

## Alternative: repo-local config install

If you want the repo-local config behavior, use:

```bash
bash install.sh
```

Or install into another target directory:

```bash
bash install.sh /path/to/project
```

This installs a starter `.rococo.json` and prints next steps.

## Manual / advanced setup

Rococo also supports manual repo-local activation through config files, session-start hooks, and prompt snippets.

See:

- `hooks/installation.md`
- `hooks/claude-sessionstart-example.md`
- `hooks/codex-hook-notes.md`
- `hooks/codex-hook-example.sh`
- `hooks/prompt-snippets.md`

## Agent notes

| Agent | Activation idea | Auto-on support | Notes |
|---|---|---:|---|
| Claude Code | SessionStart hook + config check | Yes | Natural-language flourish, artifacts stay clean |
| Codex | Repo-local hook/instruction + `rococo_config.py` | Yes | Strong fit for repo-local theater |
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
- `/rococo status`

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

| Level | Character | What it does |
|---|---|---|
| `ornate-lite` | Tasteful excess | Adds framing and mild rhetorical upholstery |
| `rococo` | Default house style | Decorative, delayed, self-consciously overfurnished |
| `byzantine` | Labyrinthine | Stacks caveats and procedural spirals |
| `imperial` | Ceremonial | Treats ordinary matters as if briefing a court |
| `cathedral` | Maximal | Builds the nave before revealing the obvious |

Level remains active until changed or disabled.

More samples:

- `examples/before-after.md`
- `examples/levels.md`
- `examples/command-ideas.md`

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

## Benchmarks

Rococo now has two real benchmark snapshots, not just a joke about benchmarks.

See:

- `examples/benchmarks.md`

### Tiny Codex benchmark

- 3 prompts
- plain vs `rococo`
- 1 run each
- provider-reported token usage

Result:
- plain output tokens: **266**
- rococo output tokens: **556**
- expansion: **2.09x**

What it shows:
- Rococo clearly increases visible output length.
- JSON output remained valid in both tested modes.

### Coding-agent multi-mode benchmark

- 4 prompts
- `plain`, `ornate-lite`, `rococo`, `cathedral`
- 1 run each
- machine-readable session usage

Average visible completion tokens:

| Mode | Avg visible completion tokens |
|---|---:|
| plain | 124.25 |
| ornate-lite | 290.25 |
| rococo | 342.75 |
| cathedral | 392.75 |

This produced a clear visible-output gradient:

**plain < ornate-lite < rococo < cathedral**

What it shows:
- The mode names are not just decorative; they now correspond to measurable output differences.
- Structured JSON remained valid in all tested modes.
- Session-level token costs suggest Rococo may affect not only visible prose, but also the path taken to reach the answer.

> [!IMPORTANT]
> These are still small benchmark snapshots, not a full eval suite. The output-token gradient is clear; the session-level route cost is more complex because it mixes style, activation overhead, config lookup, and other runtime behavior. Rococo should never corrupt code, commands, patches, JSON, or other structured output.

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

## FAQ

### Is this useful?

Not in the usual sense.

### Then why make it?

Because the internet occasionally deserves artifacts that are memorable before they are practical.

### Is this just verbosity?

No. Ordinary verbosity is often shapeless. Rococo aims for ornamental excess with visible design.

### Should I say it is inspired by caveman?

Yes. It is accurate, generous, and helps people understand the joke immediately. Caveman compresses language into stone tools; Rococo expands it into decorative architecture.

### Will this ruin code output?

It should not. Rococo is meant for explanation, not artifact corruption. It should stay out of machine-readable output, while still applying to prose about code such as reviews, analysis, and summaries.

### Can I leave it on globally?

Yes. That is what the config file is for. But you should probably not do this to innocent coworkers.

## License

MIT — free like a chandelier in an abandoned palace.
