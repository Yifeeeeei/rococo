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

## Coding-agent multi-mode benchmark (2026-04-27)

Method:
- Runner: a coding-agent environment with Rococo installed, using machine-readable session usage output
- Modes compared: `plain`, `ornate-lite`, `rococo`, `cathedral`
- Prompt count: 4
- Repeats: 1 per prompt/mode pair
- Token source: machine-readable session usage data
- Two metrics recorded:
  - **Session Δtokens**: total token delta from empty session to completed response
  - **Visible completion tokens**: output-token count for the final visible answer

### Average visible completion tokens

| Mode | Avg visible completion tokens |
|---|---:|
| plain | 124.25 |
| ornate-lite | 290.25 |
| rococo | 342.75 |
| cathedral | 392.75 |

This produced a clear visible-output gradient:

**plain < ornate-lite < rococo < cathedral**

### Average session Δtokens

| Mode | Avg session Δtokens |
|---|---:|
| plain | 24,566 |
| ornate-lite | 75,856 |
| rococo | 75,841 |
| cathedral | 71,146 |

This second metric was noisier because it included not only answer generation, but also skill activation, config checks, and other path/tool overhead.

### Representative full results

| Prompt | Mode | Session Δtokens | Visible completion tokens | JSON valid? |
|---|---|---:|---:|---|
| A: bug explanation | plain | 24,637 | 189 | n/a |
| A: bug explanation | ornate-lite | 102,083 | 461 | n/a |
| A: bug explanation | rococo | 101,706 | 574 | n/a |
| A: bug explanation | cathedral | 134,637 | 608 | n/a |
| D: JSON only | plain | 24,448 | 13 | Yes |
| D: JSON only | ornate-lite | 49,807 | 13 | Yes |
| D: JSON only | rococo | 75,868 | 93 | Yes |
| D: JSON only | cathedral | 49,930 | 40 | Yes |

### Takeaways

- The visible-output token gradient was strong and directionally clean.
- `cathedral` was consistently more extravagant than `rococo` on natural-language prompts.
- Structured JSON remained valid in all tested modes.
- Session-level token growth suggested Rococo affected not only visible prose, but also the path taken to reach the answer.

### Caveats

- The session-level metric mixes together several costs: output length, skill activation, config lookup, and possible tool/path overhead.
- That means it is useful as a “route cost” signal, but not as a pure style-length metric.
- Results were collected in a different runtime than the Codex benchmark, so absolute values should not be compared directly across environments.

## Suggested next benchmark

To improve confidence without exploding cost:
- separate visible-output benchmarking from route-overhead benchmarking
- add one extra repeat per prompt
- test `byzantine` and `imperial` only after the current four-mode gradient feels stable
