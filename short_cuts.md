# Save short cuts below to use this config
> config based on [cpow repository](https://github.com/cpow/neovim-for-newbs/tree/main)

leader = ','

### Access Documentation
"C-b"     = scroll_docs(-4)\
"C-f"     = scroll_docs(4)\
"C-Space" = complete()\
"C-e"     = abort()\
"CR"      = confirm({ select = true })

### Git hacks 
> mode: *normal*

"leader + gv" = ":Gitsigns preview_hunk"\
"leader + gt" = ":Gitsigns toggle_current_line_blame"

### LSP shortcut
> mode: *normal*

"K"           = hover\
"leader + gd" = definition\
"leader + gr" = references\
"leader + ca" = code_action\
"leader + gf" = format

### Navigation
> mode: *normal*

'C-n'         = ':Neotree filesystem reveal right'\
'leader + bf' = ':Neotree buffers reveal float'

"-"                = toggle_float\
"C-p"            = find_files\
"leader + fg"       = live_grep\
"leader + leader " = oldfiles

 - Customized hotkeys
 - Leader+q: Executes :bw (Delete buffer alternative) like Command+w\
\
"leader + q" = ":bw"

 - Navigate vim panes better\
\
'c-k' = ':wincmd k'\
'c-j' = ':wincmd j'\
'c-h' = ':wincmd h'\
'c-l' = ':wincmd l'

### Others
> mode: *normal*

'leader + h' = ':nohlsearch'
