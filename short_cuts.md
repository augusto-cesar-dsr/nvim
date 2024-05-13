# Save short cuts below to use this config
> confi based on [cpow repository](https://github.com/cpow/neovim-for-newbs/tree/main)

leader = ','

### Access Documentation
"<C-b>"     = cmp.mapping.scroll_docs(-4),
"<C-f>"     = cmp.mapping.scroll_docs(4),
"<C-Space>" = cmp.mapping.complete(),
"<C-e>"     = cmp.mapping.abort(),
"<CR>"      = cmp.mapping.confirm({ select = true }),

### Git hacks 
> mode: *normal*

"<leader>gp" = ":Gitsigns preview_hunk<CR>"
"<leader>gt" = ":Gitsigns toggle_current_line_blame<CR>"

### LSP shortcut
> mode: *normal*

"K"          = hover
"gd"         = definition
"<leader>ca" = code_action
"<leader>gf" = format

> mode: *visual*

"<leader>ca" = code_action

### Navigation
> mode: *normal*

'<C-n>'      = ':Neotree filesystem reveal right<CR>'
'<leader>bf' = ':Neotree buffers reveal float<CR>'

"-"                = toggle_float
"<C-p>"            = find_files
"<leader>fg"       = live_grep
"<leader><leader>" = oldfiles

 - Customized hotkeys
 - Leader+q: Executes :bw (Delete buffer alternative) like Command+w
"<leader>q" = ":bw<CR>"

 - Navigate vim panes better
'<c-k>' = ':wincmd k<CR>'
'<c-j>' = ':wincmd j<CR>'
'<c-h>' = ':wincmd h<CR>'
'<c-l>' = ':wincmd l<CR>'

### Others
> mode: *normal*

'<leader>h' = ':nohlsearch<CR>'
