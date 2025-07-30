
-- Enable Ruler
vim.cmd("set ru")
vim.g.mapleader = ","
vim.g.background = "dark"
vim.opt.swapfile = false

-- Performance melhorias
vim.opt.lazyredraw = true -- Não redesenha durante macros
vim.opt.ttyfast = true -- Terminal rápido

-- Show the line number
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
vim.cmd("set clipboard+=unnamedplus")

-- Set the Tab to 2 spaces
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Melhorias de busca
vim.opt.ignorecase = true -- Busca case-insensitive
vim.opt.smartcase = true -- Mas case-sensitive se contém maiúsculas
vim.opt.hlsearch = true -- Highlight de busca
vim.opt.incsearch = true -- Busca incremental

-- Melhorias visuais
vim.opt.cursorline = true -- Highlight da linha atual
vim.opt.signcolumn = "yes" -- Sempre mostrar coluna de sinais
vim.opt.wrap = false -- Não quebrar linhas
vim.opt.scrolloff = 8 -- Manter 8 linhas visíveis acima/abaixo do cursor
vim.opt.sidescrolloff = 8 -- Manter 8 colunas visíveis

-- Melhorias de backup e undo
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true -- Undo persistente
vim.opt.undodir = vim.fn.expand("~/.config/nvim/undodir")

-- Configuração de logs do LSP
vim.lsp.set_log_level("ERROR") -- Reduz logs do LSP para apenas erros

-- Customized hotkeys
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
-- Leader+Q: Executes :qa! (Force quit all) like Command+q or ALT+F4
vim.keymap.set('n', '<leader>Q', ':qa!<CR>', {})
-- Leader+q: Executes :bw (Delete buffer alternative) like Command+w
vim.keymap.set('n', '<leader>q', ':bw<CR>', {})

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Melhorias de navegação
vim.keymap.set('n', '<C-d>', '<C-d>zz') -- Centraliza após scroll down
vim.keymap.set('n', '<C-u>', '<C-u>zz') -- Centraliza após scroll up
vim.keymap.set('n', 'n', 'nzzzv') -- Centraliza após busca
vim.keymap.set('n', 'N', 'Nzzzv') -- Centraliza após busca reversa

-- Melhor experiência em modo visual
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv") -- Move linha para baixo
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv") -- Move linha para cima

-- Set personal highligth
vim.cmd("au BufNewFile,BufRead *.json.jbuilder set filetype=ruby")
vim.cmd("au BufNewFile,BufRead *.js.coffee set filetype=javascript")
vim.cmd("au BufNewFile,BufRead *.hbs set filetype=html")
vim.cmd("au BufNewFile,BufRead *.rabl set filetype=ruby")

-- Disables providers
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0

-- Configurações para monitoramento de arquivos modificados por agentes AI
vim.opt.autoread = true -- Habilita leitura automática de arquivos modificados
vim.opt.updatetime = 100 -- Reduz tempo de detecção de mudanças para 100ms

-- Comando personalizado para recarregar todos os buffers
vim.api.nvim_create_user_command('ReloadAll', function()
  vim.cmd('bufdo checktime')
  vim.notify('Todos os buffers verificados para mudanças', vim.log.levels.INFO)
end, {})
