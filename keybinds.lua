local keybinds = require("assistant.keybinds")
local actions = require("assistant.actions")

keybinds.add("<Space>+t", actions.toggle_left)
keybinds.add("<Ctrl>+sb", actions.toggle_right)
