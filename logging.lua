local logging = require("assistant.logging")

logging.set({
  enabled = true,
  path = "../assistant-debug.jsonl",
  llm_transcript = true,
  progress = true,
  conversation = true,
  ui_keybinds = true,
  ui_actions = true,
  config = true,
})
