# Benchmarks

These benchmark notes are intentionally small and honest.

## Tiny Codex benchmark (2026-04-27)

Method:
- Runner: `codex exec --json --ephemeral`
- Model: Codex CLI default local configuration
- Modes compared: `plain` vs `rococo`
- Prompt count: 3
- Repeats: 1 per prompt
- Token source: provider-reported usage from Codex CLI

### Results

| Prompt | Plain output tokens | Rococo output tokens | Expansion | JSON valid? | Notes |
|---|---:|---:|---:|---|---|
| Why is `items.map(...)` crashing on `undefined`? | 150 | 300 | 2.00x | n/a | Rococo clearly more verbose |
| SQLite vs Postgres for a small prototype | 91 | 223 | 2.45x | n/a | Plain run unexpectedly wrapped answer in a JSON-style object |
| JSON object for Alice, 30 | 25 | 33 | 1.32x | Yes / Yes | Both outputs stayed valid JSON |
| **Total** | **266** | **556** | **2.09x** | — | Rococo roughly doubled output tokens |

### Takeaways

- In this tiny sample, Rococo increased output tokens from **266** to **556**.
- That is about **2.1x** more output tokens overall.
- Structured output remained valid JSON in both modes for the JSON prompt.
- Most of the overhead appeared in **completion tokens**, not prompt tokens.

### Caveats

- Very small sample size: 3 prompts, 1 run each
- Only Codex tested in this pass
- Results should be treated as an initial signal, not a final benchmark suite

## Suggested next benchmark

To improve confidence without spending much more:
- add 1 repeat per prompt, or
- add 1-2 more prompts, or
- compare `rococo` vs `cathedral` after plain-vs-rococo is stable
