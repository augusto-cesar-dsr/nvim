
-- Enable Ruler
vim.cmd("set ru")
vim.g.mapleader = ","

-- Show the line number
vim.cmd("set number")
vim.cmd("set relativenumber")

-- Enable Syntax Highlighting
vim.cmd("syntax enable")

-- Enable using the mouse to click or select some peace of code
vim.cmd("set mouse=a")

-- Enable auto indentation in code
vim.cmd("set smartindent")
vim.cmd("set expandtab")

-- Enable clipboard
-- Also moment needs xclip lib
vim.cmd("set clipboard+=unnamedplus")

-- Set the Tab to 2 spaces
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Customized hotkeys
-- Leader+z: Executes :u (undo) like Command+z or Control+z
vim.keymap.set('n', '<leader>z', ':u<CR>', {})
-- Leader+Q: Executes :qa! (Force quit all) like Command+q or ALT+F4
vim.keymap.set('n', '<leader>Q', ':qa!<CR>', {})
-- Leader+q: Executes :bw (Delete buffer alternative) like Command+w
vim.keymap.set('n', '<leader>q', ':bw<CR>', {})


