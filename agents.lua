local agents = require("assistant.agents")
local env = require("assistant.env")

agents.new({
    name = "openai",
    key = env.get("OPENAI_API_KEY"),
    model = "gpt-4o-mini"
})

agents.new({
    name = "pie",
    key = env.get("PIE_API_KEY")
})

agents.new({
    name = "ollama",
    host = "http://127.0.0.1:11434/v1",
    -- model = "qwen2.5-coder",
    model = "qwen3.5",
    -- model = "gemma4",
    embedding_model = "nomic-embed-text",
})


agents.default = "ollama"
