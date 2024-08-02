
-- Enable Ruler
vim.cmd("set ru")
vim.g.mapleader = ","
vim.g.background = "dark"
vim.opt.swapfile = false

-- Show the line number
-- vim.cmd("set number")
-- vim.cmd("set relativenumber")
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true
vim.wo.relativenumber = true

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
--vim.keymap.set('n', '<leader>z', ':u<CR>', {})
-- Leader+Q: Executes :qa! (Force quit all) like Command+q or ALT+F4
vim.keymap.set('n', '<leader>Q', ':qa!<CR>', {})
-- Leader+q: Executes :bw (Delete buffer alternative) like Command+w
vim.keymap.set('n', '<leader>q', ':bw<CR>', {})

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Set personal highligth
vim.cmd("au BufNewFile,BufRead *.json.jbuilder set filetype=ruby")
vim.cmd("au BufNewFile,BufRead *.rabl set filetype=ruby")
