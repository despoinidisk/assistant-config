local v = require("assistant.validation")

-- Auto-validation runs after the agent proposes a unified diff: tree-sitter parse + (if
-- installed) Biome lint per touched file. If errors are found, the host feeds them back to
-- the same agent turn so it can revise the diff before the user is asked to approve.
--
--   enabled         — master switch (default true)
--   max_attempts    — how many times the agent is allowed to revise before we show the diff
--                     anyway (default 3, range 1..=8)
--   run_cargo_check — also stage the diff into a temp dir mirror and run `cargo check`. Off
--                     by default (slow). Useful for Rust-heavy projects.
--   run_tsc         — same idea with `npx tsc --noEmit`. Off by default.

v.set({
  enabled = true,
  max_attempts = 3,
  run_cargo_check = false,
  run_tsc = false,
})
