# Assistant Configuration Repository

This repository contains the core configuration files for the local assistant application. It dictates how components interact, how the UI looks, and the behaviors of the agents.

## ⚙️ Repository Structure

The configuration is divided into several files, each responsible for a specific domain:

| File | Purpose |
| :--- | :--- |
| `init.lua` | Main entry point for initializing the configuration. |
| `agents.lua` | Defines available AI agents and their capabilities. |
| `ui.lua` | Handles user interface components, panel layouts, and view definitions. |
| `colorscheme.lua` | Manages the visual theme and color palette for the application. |
| `keybinds.lua` | Defines global and module-specific keyboard shortcuts. |
| `indexing.lua` | Configures the document indexing and search behavior. |
| `shell.lua` | Configures shell command execution and environment settings. |
| `logging.lua` | Manages logging configuration and output destinations. |
| `validation.lua` | Contains logic for validating inputs and configurations. |
| `web.lua` | Handles web-related functionality and API integrations. |
| `env.lua` | Manages environment variables and runtime configuration. |
| `validation.lua` | Contains logic for validating inputs and configurations. |

## 🚀 Getting Started

To use these configurations, ensure that the application is pointed to this directory. The `init.lua` file is the primary point of entry and handles the loading order.

**Installation/Setup:**
1. Clone this repository into the designated configuration folder.
2. Verify that the main application executable is configured to load `init.lua`.

## 💡 Contributing

Please feel free to add new modules or adjust existing configurations. Ensure that any new file adheres to the conventions set in `init.lua` and that its purpose is clearly documented.
