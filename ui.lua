local ui = require("assistant.ui")

ui.layout({
  left_width = 0.25,
  right_width = 0.25,

  left_top = {
    size = 0.5,
    active = "filetree",
    views = { "filetree", "todo" },
  },
  left_bottom = {
    views = { "git" },
  },
  center_top = {
    active = "agent",
    views = { "agent" },
  },
  center_bottom = {
    visible = false
  },
  right_top = {
    size = 0.5,
    active = "code",
    views = { "code", "diff" },
  },
  right_bottom = {
    views = { "sandbox" },
  },
})
