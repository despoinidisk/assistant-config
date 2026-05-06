local agents = require("assistant.agents")
local env = require("assistant.env")

local OLLAMA_BASE_URL = "http://127.0.0.1:11434/v1"
local EMBEDDING_MODEL = "nomic-embed-text"
local TEMPERATURE = 0.2

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
    },
    {
        host = "http://mini0.local:52415/v1",
        name = "mini-cluster",
        model = "mlx-community/Qwen3.5-9B-4bit"
    }
}

for i = 1, #registry do
    local item = registry[i]
    item.temperature = TEMPERATURE
    agents.new(item)
end

agents.default = "mini-cluster"
