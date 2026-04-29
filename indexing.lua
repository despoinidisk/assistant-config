local i = require("assistant.indexing")

-- Project indexing: runs once when a folder is opened (full embed of text files into a SQLite
-- store) and then incrementally re-embeds individual files on save through the workspace
-- watcher. The agent's chat turns auto-pull the most relevant chunks from this store as
-- context.
--
--   auto_index_on_open   — index immediately on folder open (default true)
--   watcher_incremental  — re-embed individual files when they change (default true)

i.set({
  auto_index_on_open = true,
  watcher_incremental = true,
})
