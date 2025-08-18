# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration based on kickstart-modular.nvim, a modular fork of kickstart.nvim. It provides a well-structured, documented starting point for Neovim configuration using Lua and the lazy.nvim plugin manager.

## Architecture

The configuration follows a modular structure:

- `init.lua` - Main entry point that loads all modules
- `lua/options.lua` - Vim options and settings
- `lua/keymaps.lua` - Keybindings and autocommands
- `lua/lazy-bootstrap.lua` - Lazy.nvim plugin manager bootstrapping
- `lua/lazy-plugins.lua` - Plugin loading configuration
- `lua/kickstart/plugins/` - Core plugin configurations
- `lua/custom/plugins/` - Custom/additional plugin configurations

### Plugin Management

Uses lazy.nvim for plugin management. Plugins are organized into:

1. **Kickstart plugins** (`lua/kickstart/plugins/`): Core functionality including LSP, telescope, treesitter, etc.
2. **Custom plugins** (`lua/custom/plugins/`): Additional plugins like copilot-chat, hop, kanagawa theme, lualine, etc.

The `lazy-plugins.lua` file loads both plugin sets using `{ import = 'custom.plugins' }`.

### Key Components

- **LSP Configuration**: `lspconfig.lua` handles Language Server Protocol setup
- **Code Completion**: Uses blink-cmp for completion
- **Formatting**: Conform.nvim for code formatting
- **Fuzzy Finding**: Telescope for file/text search
- **File Management**: Mini.files (accessed via `\` key) replaces neo-tree
- **Navigation**: Hop for quick word jumping (`<Leader><Leader>`)
- **Git Integration**: Gitsigns for git status in editor
- **AI Assistance**: Copilot integration with extensive keybindings under `<leader>a` prefix

## Key Settings

- Leader key: `<space>`
- Tab settings: 2 spaces, expandtab enabled
- Line numbers enabled, relative numbers disabled
- Clipboard synced with OS
- Mouse mode enabled
- Nerd Font support configured

## Important Keybindings

- `<space>` - Leader key
- `<Leader><Leader>` - Hop to word
- `\` - Open mini.files
- `<leader>fp` - Copy file path to clipboard
- `<leader>cc` - Toggle Copilot Chat
- `<leader>a*` - Various Copilot Chat actions
- `B` - Jump to beginning of line (^)
- `E` - Jump to end of line ($)
- Standard vim navigation enhanced with tmux integration

## Development Workflow

1. Use `:Lazy` to manage plugins
2. Use `:Lazy update` to update plugins
3. Use `:checkhealth` to diagnose issues
4. Configuration changes require Neovim restart
5. Custom plugins go in `lua/custom/plugins/`

### Debugging TypeScript/JavaScript Node.js APIs

The configuration includes full DAP (Debug Adapter Protocol) support for Node.js debugging:

**Setup Requirements:**
- Ensure Node.js is installed
- Mason will auto-install `js-debug-adapter`
- For debugging running processes, start Node with `--inspect` flag

**Debug Configurations:**
1. **Launch file** - Debug the current TypeScript/JavaScript file
2. **Attach** - Attach to running Node.js process with `--inspect`
3. **Launch & Debug Chrome** - Debug web applications in Chrome

**Key Debug Bindings:**
- `F5` - Start/Continue debugging
- `F1` - Step into
- `F2` - Step over  
- `F3` - Step out
- `F7` - Toggle debug UI
- `<leader>b` - Toggle breakpoint
- `<leader>B` - Set conditional breakpoint
- `<leader>dr` - Run last debug configuration
- `<leader>dt` - Terminate debug session
- `<leader>dc` - Clear all breakpoints

## External Dependencies

Based on README.md, requires:
- Neovim (stable or nightly)
- git, make, unzip, C compiler
- ripgrep, fd-find
- Clipboard tool (xclip/xsel/win32yank)
- Nerd Font (optional, controlled by `vim.g.have_nerd_font`)
- Language-specific tools (npm for TypeScript, go for Golang, etc.)

## File Modification Patterns

When modifying this configuration:
- Follow existing Lua patterns and module structure
- Add new plugins to `lua/custom/plugins/` directory
- Use existing keymap conventions (`<leader>` prefix for custom bindings)
- Maintain 2-space indentation
- Include descriptive comments and help references
