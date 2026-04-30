local keybinds = require("assistant.keybinds")
local actions = require("assistant.actions")

keybinds.add("<Space>+t", actions.toggle_left)
keybinds.add("<Space>+y", actions.toggle_right)
keybinds.add("<Ctrl>+p", actions.toggle_git)
keybinds.add("<Ctrl>+sb", actions.toggle_sandbox)
