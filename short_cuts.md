# Neovim Configuration Shortcuts
> Config based on [cpow repository](https://github.com/cpow/neovim-for-newbs/tree/main)

**Leader Key:** `,` (comma)

## 🚀 Core Navigation & Window Management
> Mode: *normal*

| Shortcut | Action | Description |
|----------|--------|-------------|
| `<C-k>` | `:wincmd k` | Navigate to upper window |
| `<C-j>` | `:wincmd j` | Navigate to lower window |
| `<C-h>` | `:wincmd h` | Navigate to left window |
| `<C-l>` | `:wincmd l` | Navigate to right window |
| `<leader>h` | `:nohlsearch` | Clear search highlights |
| `<leader>Q` | `:qa!` | Force quit all (like Cmd+Q) |
| `<leader>q` | `:bw` | Delete current buffer (like Cmd+W) |

## 🧭 Enhanced Navigation & File Management
> Mode: *normal*

| Shortcut | Action | Description |
|----------|--------|-------------|
| `<C-n>` | `:Neotree filesystem reveal right` | Open file tree (right side) |
| `<leader>bf` | `:Neotree buffers reveal float` | Show buffers in floating window |
| `-` | `oil.toggle_float` | Toggle Oil file manager (floating) |

### 🔍 Telescope (FZF-powered)
| Shortcut | Action | Description |
|----------|--------|-------------|
| `<C-p>` | `telescope.find_files` | Find files with FZF |
| `<leader>fg` | `telescope.live_grep` | Live grep search |
| `<leader><leader>` | `telescope.oldfiles` | Recent files |
| `<leader>fb` | `telescope.buffers` | Find buffers |
| `<leader>fh` | `telescope.help_tags` | Help tags |
| `<leader>fc` | `telescope.commands` | Commands |
| `<leader>fk` | `telescope.keymaps` | Keymaps |

### 🎯 Harpoon Quick Navigation
| Shortcut | Action | Description |
|----------|--------|-------------|
| `<leader>a` | `harpoon.add_file` | Add current file to Harpoon |
| `<C-e>` | `harpoon.toggle_menu` | Toggle Harpoon menu |
| `<Alt-1>` | `harpoon.nav_file(1)` | Navigate to Harpoon file 1 |
| `<Alt-2>` | `harpoon.nav_file(2)` | Navigate to Harpoon file 2 |
| `<Alt-3>` | `harpoon.nav_file(3)` | Navigate to Harpoon file 3 |
| `<Alt-4>` | `harpoon.nav_file(4)` | Navigate to Harpoon file 4 |

### 📋 Symbols & Code Structure
| Shortcut | Action | Description |
|----------|--------|-------------|
| `<leader>so` | `:SymbolsOutline` | Toggle symbols outline |

### ⚡ Leap Motion (Quick Jump)
| Shortcut | Action | Description |
|----------|--------|-------------|
| `s` | `leap forward` | Leap forward to character |
| `S` | `leap backward` | Leap backward to character |

## 🔧 LSP & Code Intelligence
> Mode: *normal*

### Basic LSP
| Shortcut | Action | Description |
|----------|--------|-------------|
| `<leader>gd` | `vim.lsp.buf.definition` | Go to definition |
| `<leader>gr` | `vim.lsp.buf.references` | Show references |

### Enhanced LSP (LSP Saga) - Primary LSP Interface
| Shortcut | Action | Description |
|----------|--------|-------------|
| `K` | `Lspsaga hover_doc` | Enhanced hover documentation |
| `gh` | `Lspsaga lsp_finder` | LSP finder (definitions/references) |
| `<leader>ca` | `Lspsaga code_action` | Enhanced code actions |
| `<leader>rn` | `Lspsaga rename` | Smart rename |
| `<leader>pd` | `Lspsaga peek_definition` | Peek definition |

### 🔍 Diagnostics & Trouble
| Shortcut | Action | Description |
|----------|--------|-------------|
| `<leader>xx` | `:TroubleToggle` | Toggle diagnostics panel |
| `<leader>xw` | `:TroubleToggle workspace_diagnostics` | Workspace diagnostics |
| `<leader>xd` | `:TroubleToggle document_diagnostics` | Document diagnostics |
## 💻 Development Experience
> Mode: *normal*

### 💬 Comments
| Shortcut | Action | Description |
|----------|--------|-------------|
| `gcc` | Comment/uncomment line | Toggle line comment |
| `gc` | Comment/uncomment (visual mode) | Toggle comment in visual mode |

### 📝 TODO & Task Management
| Shortcut | Action | Description |
|----------|--------|-------------|
| `<leader>td` | `:TodoTelescope` | Search TODO/FIXME/NOTE comments |

### 🎨 Surround & Text Objects
> Uses nvim-surround plugin - examples:
- `ys{motion}{char}` - Add surround
- `ds{char}` - Delete surround  
- `cs{old}{new}` - Change surround

### 🌈 Color Preview
> Automatic color highlighting in code (nvim-colorizer)

## 🧪 Testing
> Mode: *normal*

| Shortcut | Action | Description |
|----------|--------|-------------|
| `<leader>t` | `:TestNearest` | Run test at cursor |
| `<leader>T` | `:TestFile` | Run current test file |
| `<leader>ta` | `:TestSuite` | Run all tests |
| `<leader>l` | `:TestLast` | Run last test command |
| `<leader>g` | `:TestVisit` | Go to last test file |

## 🔄 Git Integration
> Mode: *normal*

| Shortcut | Action | Description |
|----------|--------|-------------|
| `<leader>gv` | `:Gitsigns preview_hunk` | Preview git hunk |
| `<leader>gt` | `:Gitsigns toggle_current_line_blame` | Toggle git blame |

## 🤖 AI File Monitoring
> Mode: *normal*

| Shortcut | Action | Description |
|----------|--------|-------------|
| `<leader>r` | `:checktime` | Check current file for changes |
| `<leader>R` | `:bufdo checktime` | Check all buffers for changes |
| `<leader>am` | `:ToggleAIMonitoring` | Toggle intensive AI monitoring (50ms) |
| `<leader>as` | `:AIFileStatus` | Show status of all open files |
| `<leader>ar` | `:ReloadAll` | Reload all buffers |

### AI Monitoring Commands
> Mode: *command*

| Command | Description |
|---------|-------------|
| `:checktime` | Check current file for external changes |
| `:ReloadAll` | Check and reload all open buffers |
| `:ToggleAIMonitoring` | Enable/disable intensive monitoring for AI agents |
| `:AIFileStatus` | Show detailed status of all files |

## 📋 Completion & Snippets
> Mode: *insert*

| Shortcut | Action | Description |
|----------|--------|-------------|
| `<C-b>` | `scroll_docs(-4)` | Scroll completion docs up |
| `<C-f>` | `scroll_docs(4)` | Scroll completion docs down |
| `<C-Space>` | `complete()` | Trigger completion |
| `<C-e>` | `abort()` | Abort completion |
| `<CR>` | `confirm({ select = true })` | Confirm completion |

## 🚀 Performance & Navigation Improvements
> Mode: *normal*

| Shortcut | Action | Description |
|----------|--------|-------------|
| `<C-d>` | `<C-d>zz` | Scroll down and center |
| `<C-u>` | `<C-u>zz` | Scroll up and center |
| `n` | `nzzzv` | Next search result (centered) |
| `N` | `Nzzzv` | Previous search result (centered) |

> Mode: *visual*

| Shortcut | Action | Description |
|----------|--------|-------------|
| `J` | `:m '>+1<CR>gv=gv` | Move selected lines down |
| `K` | `:m '<-2<CR>gv=gv` | Move selected lines up |

## 🖥️ Tmux Integration
> Mode: *normal*

| Shortcut | Action | Description |
|----------|--------|-------------|
| `<C-h>` | `:TmuxNavigateLeft` | Navigate to left tmux pane |
| `<C-j>` | `:TmuxNavigateDown` | Navigate to down tmux pane |
| `<C-k>` | `:TmuxNavigateUp` | Navigate to up tmux pane |
| `<C-l>` | `:TmuxNavigateRight` | Navigate to right tmux pane |

## 📁 Neo-tree Special Features
> Mode: *neo-tree window*

| Shortcut | Action | Description |
|----------|--------|-------------|
| `Y` | Copy path options | Interactive menu to copy various path formats |

## 🛠️ Additional Tools

### Swagger Preview
> Available for API documentation files

### Formatting & Linting
> Automatic formatting with conform.nvim and none-ls.nvim

### Auto-pairs
> Automatic bracket/quote pairing with nvim-autopairs

---

## 📚 Plugin List Summary

**Core Plugins:**
- lazy.nvim (Plugin Manager)
- telescope.nvim (Fuzzy Finder)
- neo-tree.nvim (File Explorer)
- nvim-lspconfig + mason.nvim (LSP)
- nvim-cmp (Completion)
- nvim-treesitter (Syntax Highlighting)

**Enhanced Experience:**
- harpoon (Quick Navigation)
- lspsaga.nvim (Enhanced LSP UI)
- trouble.nvim (Diagnostics)
- Comment.nvim (Smart Comments)
- todo-comments.nvim (TODO Highlighting)
- gitsigns.nvim (Git Integration)

**AI & Monitoring:**
- Custom auto-reload system
- Intensive file monitoring for AI agents
- Real-time change detection

---

*For more details, see the individual plugin configurations in `lua/plugins/`*
