local shell = require("assistant.shell")

shell.set({
    auto_approve = true,
    allowed = {
        "touch",
        "mkdir",
        "make",
        "cargo",
        "gcc" 
    },
    dangerous = { 
        "rm", 
        "dd", 
        "mkfs", 
        "shutdown", 
        "reboot", 
        "halt", 
        "poweroff" 
    },
})

