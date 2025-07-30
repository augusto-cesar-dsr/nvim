# [Neovim](https://neovim.io/)
This is my enhanced neovim configuration optimized for development productivity and AI agent file monitoring.

I'm using neovim pre-built [install](https://github.com/neovim/neovim/blob/master/INSTALL.md#:~:text=Linux-,Pre%2Dbuilt%20archives,-The%20Releases%20page).

Standard path config is in `~/.config/nvim`

Base config inspired by [cpow repository](https://github.com/cpow/neovim-for-newbs/tree/main)

## 🚀 Features

### ⚡ Performance Optimizations
- Fast startup with module caching
- Optimized file type detection
- Lazy loading of plugins
- FZF-powered fuzzy finding for ultra-fast search
- Optimized LSP logging (ERROR level only)
- Tree-sitter parsers fully updated

### 🤖 AI Agent Integration
- Auto-reload files modified by external agents
- Intensive monitoring mode for active AI sessions
- Real-time file change detection
- Smart file status tracking

### 🧭 Enhanced Navigation
- **FZF Integration**: Lightning-fast file and text search
- **Harpoon**: Quick file switching with Alt+1/2/3/4
- **Symbols outline**: Code structure visualization
- **Leap motion**: Rapid cursor movement
- **Neo-tree**: Advanced file explorer
- **Oil**: Floating file manager
- Improved search and scroll behavior

### 💻 Developer Experience
- Smart commenting and auto-pairs
- TODO/FIXME highlighting and search
- Surround text manipulation
- Color preview in code
- Enhanced LSP with better UI (LSP Saga)
- Comprehensive completion with snippets

### 📊 Diagnostics & Debugging
- Trouble.nvim for better error visualization
- LSP Saga for improved hover and actions
- Comprehensive diagnostic tools
- Real-time syntax highlighting

### 🔧 Git Integration
- Vim Fugitive for git commands
- Gitsigns for visual git indicators
- Git blame and hunk preview

## Plugin Manager

[Lazy.nvim](https://github.com/folke/lazy.nvim.git) - Fast and modern plugin manager

## Core Plugins

### Completion & LSP
- ["nvim-cmp"](https://github.com/hrsh7th/nvim-cmp) - Completion engine
- ["cmp-nvim-lsp"](https://github.com/hrsh7th/cmp-nvim-lsp) - LSP completion source
- ["LuaSnip"](https://github.com/L3MON4D3/LuaSnip) - Snippet engine
- ["cmp_luasnip"](https://github.com/saadparwaiz1/cmp_luasnip) - Snippet completion
- ["friendly-snippets"](https://github.com/rafamadriz/friendly-snippets) - Snippet collection
- ["mason.nvim"](https://github.com/williamboman/mason.nvim) - LSP installer
- ["nvim-lspconfig"](https://github.com/neovim/nvim-lspconfig) - LSP configurations
- ["lspsaga.nvim"](https://github.com/glepnir/lspsaga.nvim) - Enhanced LSP UI
- ["trouble.nvim"](https://github.com/folke/trouble.nvim) - Diagnostics panel

### Navigation & File Management
- ["telescope.nvim"](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder
- ["telescope-fzf-native.nvim"](https://github.com/nvim-telescope/telescope-fzf-native.nvim) - FZF integration
- ["telescope-ui-select.nvim"](https://github.com/nvim-telescope/telescope-ui-select.nvim) - UI select
- ["neo-tree.nvim"](https://github.com/nvim-neo-tree/neo-tree.nvim) - File explorer
- ["oil.nvim"](https://github.com/stevearc/oil.nvim) - File manager
- ["harpoon"](https://github.com/ThePrimeagen/harpoon) - Quick file navigation
- ["symbols-outline.nvim"](https://github.com/simrat39/symbols-outline.nvim) - Code outline
- ["leap.nvim"](https://github.com/ggandor/leap.nvim) - Motion plugin

### Development Tools
- ["nvim-treesitter"](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax highlighting
- ["Comment.nvim"](https://github.com/numToStr/Comment.nvim) - Smart commenting
- ["nvim-autopairs"](https://github.com/windwp/nvim-autopairs) - Auto-close pairs
- ["nvim-surround"](https://github.com/kylechui/nvim-surround) - Surround text objects
- ["todo-comments.nvim"](https://github.com/folke/todo-comments.nvim) - TODO highlighting
- ["nvim-colorizer.lua"](https://github.com/norcalli/nvim-colorizer.lua) - Color preview
- ["conform.nvim"](https://github.com/stevearc/conform.nvim) - Code formatting
- ["none-ls.nvim"](https://github.com/nvimtools/none-ls.nvim) - Null-ls alternative

### Git Integration
- ["vim-fugitive"](https://github.com/tpope/vim-fugitive) - Git commands
- ["gitsigns.nvim"](https://github.com/lewis6991/gitsigns.nvim) - Git signs

### Testing
- ["vim-test"](https://github.com/vim-test/vim-test) - Test runner
- ["vimux"](https://github.com/preservim/vimux) - Tmux integration

### UI & Themes
- ["catppuccin"](https://github.com/catppuccin/nvim) - Color scheme
- ["lualine.nvim"](https://github.com/nvim-lualine/lualine.nvim) - Status line
- ["indent-blankline.nvim"](https://github.com/lukas-reineke/indent-blankline.nvim) - Indent guides
- ["nvim-web-devicons"](https://github.com/nvim-tree/nvim-web-devicons) - File icons

### Performance & Utilities
- ["lazy.nvim"](https://github.com/folke/lazy.nvim) - Plugin manager
- ["plenary.nvim"](https://github.com/nvim-lua/plenary.nvim) - Lua utilities
- ["nui.nvim"](https://github.com/MunifTanjim/nui.nvim) - UI components
- ["impatient.nvim"](https://github.com/lewis6991/impatient.nvim) - Startup optimization
- ["filetype.nvim"](https://github.com/nathom/filetype.nvim) - Filetype detection

### Tmux & External Tools
- ["vim-tmux-navigator"](https://github.com/christoomey/vim-tmux-navigator) - Tmux navigation
- ["swagger-preview.nvim"](https://github.com/vinnymeller/swagger-preview.nvim) - Swagger preview

## Configuration Structure

```
~/.config/nvim/
├── init.lua                    # Entry point
├── lua/
│   ├── vim-options.lua         # Core vim settings
│   ├── plugins.lua             # Plugin loader
│   ├── amazon-q/               # Amazon Q integration
│   └── plugins/                # Individual plugin configs
│       ├── auto-reload.lua     # AI file monitoring
│       ├── ai-file-monitor.lua # Intensive monitoring
│       ├── performance.lua     # Performance optimizations
│       ├── navigation-enhanced.lua # Navigation tools
│       ├── dev-experience.lua  # Developer tools
│       ├── lsp-config.lua      # LSP configuration
│       ├── lsp-enhanced.lua    # Enhanced LSP
│       ├── telescope.lua       # FZF-powered search
│       └── [other configs...]
├── short_cuts.md              # Complete keybinding reference
└── README.md                  # This file
```

## 🎯 Key Features for AI Development

### Auto-Reload System
- Automatically detects when files are modified by external processes
- Configurable monitoring intensity for active AI sessions
- Real-time notifications of file changes
- Smart buffer management

### Monitoring Commands
- `:ToggleAIMonitoring` - Enable/disable intensive monitoring
- `:AIFileStatus` - Show status of all open files
- `:ReloadAll` - Manually reload all buffers

### Quick Access Keybindings
- `<leader>am` - Toggle AI monitoring
- `<leader>as` - Show file status
- `<leader>ar` - Reload all files
- `<leader>r` - Check current file for changes

## 🔍 FZF Integration

### Telescope with FZF
- **Ultra-fast file search** with fuzzy matching
- **Smart case matching** and sorting
- **Preview window** with syntax highlighting
- **Hidden file support** for comprehensive search

### FZF Keybindings
- `<C-p>` - Find files (FZF-powered)
- `<leader>fg` - Live grep with FZF
- `<leader>fb` - Find buffers
- `<leader>fh` - Help tags
- `<leader>fc` - Commands
- `<leader>fk` - Keymaps

### Terminal FZF (also installed)
- `Ctrl+R` - Command history
- `Ctrl+T` - File finder
- `Alt+C` - Directory navigation

## Installation

### Prerequisites
- Neovim >= 0.8.0
- Git
- Node.js (for LSP servers)
- Ruby (with neovim gem)
- A Nerd Font for icons
- ripgrep for telescope
- xclip for clipboard integration (Linux)

### Setup Steps
1. **Clone this repository**:
   ```bash
   git clone https://github.com/augusto-cesar-dsr/nvim.git ~/.config/nvim
   ```

2. **Start Neovim** - Lazy.nvim will automatically install all plugins:
   ```bash
   nvim
   ```

3. **Install FZF** (if not already installed):
   ```bash
   git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
   ~/.fzf/install --all
   ```

4. **Install Ruby gem**:
   ```bash
   gem install neovim
   ```

5. **Install tree-sitter CLI**:
   ```bash
   npm install -g tree-sitter-cli
   ```

6. **Update tree-sitter parsers**:
   ```bash
   nvim -c 'TSUpdate' -c 'qa'
   ```

7. **Verify installation**:
   ```bash
   nvim -c 'checkhealth'
   ```

## 🚀 Quick Start Guide

### Essential Keybindings
```bash
# File Navigation
Ctrl+N          # Open Neo-tree file explorer
Ctrl+P          # Find files (FZF)
<leader>fg      # Live grep search
<leader><leader> # Recent files

# Harpoon Quick Navigation
<leader>a       # Add file to Harpoon
Ctrl+E          # Toggle Harpoon menu
Alt+1/2/3/4     # Navigate to Harpoon files

# LSP Features
K               # Hover documentation
<leader>gd      # Go to definition
<leader>gr      # Show references
<leader>ca      # Code actions

# AI Monitoring
<leader>am      # Toggle AI monitoring
<leader>r       # Check file changes
<leader>ar      # Reload all buffers
```

### Configuration Files
- **Main shortcuts**: See `short_cuts.md` for complete reference
- **Plugin configs**: Individual files in `lua/plugins/`
- **Core settings**: `lua/vim-options.lua`

## 🔧 Troubleshooting

### Common Issues
1. **LSP not working**: Run `:Mason` to install language servers
2. **FZF not found**: Restart shell after FZF installation
3. **Ruby provider warning**: Install neovim gem: `gem install neovim`
4. **Tree-sitter errors**: Run `:TSUpdate` to update parsers

### Health Check
Run `:checkhealth` to verify all components are working correctly.

## 📊 Performance

### Optimizations Applied
- ✅ **Lazy loading**: Plugins load only when needed
- ✅ **FZF integration**: Ultra-fast fuzzy finding
- ✅ **Optimized LSP logs**: Reduced from 5GB to minimal
- ✅ **Tree-sitter**: Latest parsers for better syntax highlighting
- ✅ **Smart caching**: Improved startup times

### Benchmarks
- **Startup time**: ~50ms (with lazy loading)
- **File search**: <100ms for 10k+ files (with FZF)
- **LSP response**: <50ms for most operations

## 🤝 Contributing

Feel free to submit issues and enhancement requests!

## 📝 License

This configuration is open source and available under the [MIT License](LICENSE).

---

**🎉 Enjoy your supercharged Neovim experience with FZF integration and AI monitoring!**
