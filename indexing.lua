local indexing = require("assistant.indexing")

indexing.set({
    auto_index_on_open = true,
    watcher_incremental = true,
    rag_backend = "qdrant",
    qdrant_url = "http://127.0.0.1:6333",
})
