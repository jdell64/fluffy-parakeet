# Ink compiler warnings (maintenance)

Previously, `inklecate` reported many **“Apparent loose end”** warnings on freshman week files. Those came from **narrative `*` choices** whose branches only printed text, followed by a **sibling** `* [Continue…]` with a divert. Ink treats each branch as ending unless it diverts; the “Continue” choice was a fourth top-level option shown at the same time as the story beats.

## Fix pattern

Use a **gather** so “Continue” appears only after one of the story choices is taken:

```ink
* [Option A]
    Text for A.
* [Option B]
    Text for B.

- * [Continue to NextKnot]
    -> next_knot
```

Do **not** put a blank line between the gather line `-` and the `*` (same weave level).

## Head Home–style nested flow

If a `+` branch had narrative plus a nested `* [Continue]` and still warned, divert to a **stitch** that only contains the continue choice (see `week_2_tuesday_hub` → `week_2_after_head_home` in `week_2.ink`).

## Re-checking

After editing week files:

```bash
npm run build:story
```

If `inklecate` prints new warnings, apply the gather pattern above or add an explicit `-> target` at the end of each branch.
