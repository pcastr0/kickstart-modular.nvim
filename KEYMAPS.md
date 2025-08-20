# Neovim Configuration Keymaps Documentation

## Leader Key
- **Leader Key**: `<Space>` (Space bar)

## Core Navigation & Movement

### Basic Movement Enhancement
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `B` | Normal | `^` | Jump to beginning of line |
| `E` | Normal | `$` | Jump to end of line |
| `<C-d>` | Normal | `<C-d>zz` | Page down and center cursor |
| `<C-u>` | Normal | `<C-u>zz` | Page up and center cursor |

### Window Navigation (Tmux Integration)
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-h>` | Normal | Navigate left | Move focus to left window/tmux pane |
| `<C-j>` | Normal | Navigate down | Move focus to lower window/tmux pane |
| `<C-k>` | Normal | Navigate up | Move focus to upper window/tmux pane |
| `<C-l>` | Normal | Navigate right | Move focus to right window/tmux pane |
| `<C-\>` | Normal | Navigate last active | Switch to last active tmux pane |
| `<C-Space>` | Normal | Navigate next | Switch to next tmux pane |

### Quick Jump Navigation
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<Leader><Leader>` | Normal | HopWord | Quick jump to any word on screen |

## File Management

### File Explorer
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `\` | Normal | Open mini.files | Open file explorer |

## Search & Find (Telescope)

### File & Content Search
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>sf` | Normal | Find files | Search files in project |
| `<leader>sg` | Normal | Live grep | Search text in project files |
| `<leader>sw` | Normal | Grep current word | Search current word under cursor |
| `<leader>sb` | Normal | Find buffers | Search open buffers |
| `<leader>s.` | Normal | Recent files | Search recently opened files |
| `<leader>/` | Normal | Buffer fuzzy find | Fuzzy search in current buffer |
| `<leader>s/` | Normal | Live grep open files | Search text in open files only |

### Help & Documentation
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>sh` | Normal | Search help | Search Neovim help tags |
| `<leader>sk` | Normal | Search keymaps | Search available keymaps |
| `<leader>ss` | Normal | Select telescope | Show telescope builtin pickers |
| `<leader>sn` | Normal | Search Neovim files | Search Neovim config files |

### Diagnostics & Resume
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>sd` | Normal | Search diagnostics | Search LSP diagnostics |
| `<leader>sr` | Normal | Resume search | Resume last telescope search |

## LSP (Language Server Protocol)

### Code Navigation
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `grd` | Normal | Go to definition | Jump to symbol definition |
| `grD` | Normal | Go to declaration | Jump to symbol declaration |
| `gri` | Normal | Go to implementation | Jump to symbol implementation |
| `grr` | Normal | Go to references | Find all references |
| `grt` | Normal | Go to type definition | Jump to type definition |
| `gO` | Normal | Document symbols | Show document symbols |
| `gW` | Normal | Workspace symbols | Show workspace symbols |

### Code Actions
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `grn` | Normal | Rename | Rename symbol under cursor |
| `gra` | Normal/Visual | Code action | Execute code action |

### Toggles
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>th` | Normal | Toggle inlay hints | Toggle LSP inlay hints |

## Debugging (DAP)

### Debug Controls
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<F5>` | Normal | Start/Continue | Start debugging or continue execution |
| `<F1>` | Normal | Step into | Step into function calls |
| `<F2>` | Normal | Step over | Step over current line |
| `<F3>` | Normal | Step out | Step out of current function |
| `<F7>` | Normal | Toggle debug UI | Show/hide debug interface |

### Breakpoints
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>b` | Normal | Toggle breakpoint | Toggle breakpoint on current line |
| `<leader>B` | Normal | Conditional breakpoint | Set conditional breakpoint |
| `<leader>dc` | Normal | Clear breakpoints | Clear all breakpoints |

### Debug Session Management
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>dr` | Normal | Run last | Run last debug configuration |
| `<leader>dt` | Normal | Terminate | Terminate debug session |

## Git Integration (Gitsigns)

### Git Navigation
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `]c` | Normal | Next git change | Jump to next git hunk |
| `[c` | Normal | Previous git change | Jump to previous git hunk |

### Git Hunk Actions
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>hs` | Normal/Visual | Stage hunk | Stage current/selected hunk |
| `<leader>hr` | Normal/Visual | Reset hunk | Reset current/selected hunk |
| `<leader>hS` | Normal | Stage buffer | Stage entire buffer |
| `<leader>hR` | Normal | Reset buffer | Reset entire buffer |
| `<leader>hu` | Normal | Undo stage hunk | Undo stage hunk |
| `<leader>hp` | Normal | Preview hunk | Preview hunk changes |

### Git Information
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>hb` | Normal | Blame line | Show git blame for current line |
| `<leader>hd` | Normal | Diff index | Show diff against index |
| `<leader>hD` | Normal | Diff last commit | Show diff against last commit |

### Git Toggles
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>tb` | Normal | Toggle blame line | Toggle git blame display |
| `<leader>tD` | Normal | Toggle deleted | Toggle show deleted lines |

## AI Assistant (Copilot Chat)

### Chat Controls
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>cc` | Normal | Toggle chat | Toggle Copilot Chat window |
| `<leader>cm` | Normal | Select model | Choose Copilot model |

*Note: The Copilot Chat plugin is currently commented out in the configuration, so the extensive AI keymaps are not active.*

## Completion (Blink.cmp)

### Completion Navigation
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-y>` | Insert | Accept completion | Accept selected completion |
| `<C-n>` / `<Down>` | Insert | Next item | Select next completion item |
| `<C-p>` / `<Up>` | Insert | Previous item | Select previous completion item |
| `<C-e>` | Insert | Hide menu | Close completion menu |
| `<C-Space>` | Insert | Open menu/docs | Open completion menu or docs |
| `<C-k>` | Insert | Toggle signature | Toggle signature help |
| `<Tab>` / `<S-Tab>` | Insert | Snippet navigation | Move through snippet placeholders |

## System & Utility

### General
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<Esc>` | Normal | Clear highlights | Clear search highlights |
| `<Esc><Esc>` | Terminal | Exit terminal | Exit terminal mode |
| `<leader>q` | Normal | Quickfix list | Open diagnostic quickfix list |

### Text Objects (Mini.ai & Mini.surround)

#### Enhanced Text Objects
- `va)` - Visually select around parentheses
- `yinq` - Yank inside next quote
- `ci'` - Change inside single quotes

#### Surround Operations
- `saiw)` - Surround add inner word with parentheses
- `sd'` - Surround delete single quotes
- `sr)'` - Surround replace parentheses with single quotes

## Key Groups (Which-key)

The configuration defines several key groups for organization:
- `<leader>s` - **[S]earch** operations
- `<leader>t` - **[T]oggle** operations  
- `<leader>h` - **Git [H]unk** operations (Normal & Visual modes)
- `<leader>a` - **AI** operations (Normal & Visual modes)

## Notes

1. **Nerd Font**: Many icons and symbols require a Nerd Font to display properly
2. **Tmux Integration**: Window navigation keys work seamlessly with tmux panes
3. **LSP Features**: LSP keymaps are only available when a language server is attached to the buffer
4. **Debug Adapters**: Debugging features require appropriate debug adapters to be installed via Mason
5. **Git Integration**: Git-related keymaps are only available in git repositories

This configuration provides a comprehensive set of keymaps for efficient code editing, navigation, debugging, and version control within Neovim.