local agents = require("assistant.agents")
local env = require("assistant.env")

local OLLAMA_BASE_URL = "http://127.0.0.1:11434/v1"
local EMBEDDING_MODEL = "nomic-embed-text"

local registry = {
    {
        name = "openai",
        key = env.get("OPENAI_API_KEY"),
        model = "gpt-4o-mini"
    },
    {
        host = OLLAMA_BASE_URL,
        embedding_model = EMBEDDING_MODEL,
        name = "ollama-deepseek",
        model = "deepseek-coder-v2"
    },
    {
        host = OLLAMA_BASE_URL,
        embedding_model = EMBEDDING_MODEL,
        name = "ollama-qwen",
        model = "qwen3.5"
    },
    {
        host = OLLAMA_BASE_URL,
        embedding_model = EMBEDDING_MODEL,
        name = "ollama-qwen-coder",
        model = "qwen2.5-coder"
    }
}

for i = 1, #registry do
    agents.new(registry[i])
end

agents.default = "ollama-qwen"
