local agents = require("assistant.agents")
local env    = require("assistant.env")

local OLLAMA_BASE_URL = "http://127.0.0.1:11434/v1"
local EXO_CLUSTER_URL = "http://mini0.local:52415/v1"

local TEMPERATURE = 0.2


local registry = {
    {
        name = "openai",
        key = env.get("OPENAI_API_KEY"),
        model = "gpt-4o-mini"
    },
    {
        host = OLLAMA_BASE_URL,
        name = "ollama-deepseek",
        model = "deepseek-coder-v2"
    },
    {
        host = OLLAMA_BASE_URL,
        name = "ollama-qwen",
        model = "qwen3.5"
    },
    {
        host = OLLAMA_BASE_URL,
        name = "ollama-qwen-coder",
        model = "qwen2.5-coder"
    },
    {
        host = EXO_CLUSTER_URL,
        name = "mini-cluster",
        model = "mlx-community/Qwen3.5-9B-8bit",
    },
    {
        host = OLLAMA_BASE_URL,
        name = "embedding",
        model = "nomic-embed-text"
    }
}

for i = 1, #registry do
    local item = registry[i]
    item.temperature = TEMPERATURE
    agents.new(item)
end

agents.main = "mini-cluster"
agents.secondary = "ollama-qwen"
agents.plan = "mini-cluster"
agents.summary = "ollama-qwen"
agents.embeddings = "embedding"
