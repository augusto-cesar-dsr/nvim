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

> run tests using a plugin

"leader + t" = ":TestNearest" => run test in actualy line\
"leader + T" = ":TestFile" => run test file\
"leader + a" = ":TestSuite" => run all test path\
"leader + l" = ":TestLast" => run last command test \
"leader + g" = ":TestVisit" => go to last test runned


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

 - Navigate vim and tmux panes better\
\
'c-k' = ':wincmd k' => go left\
'c-j' = ':wincmd j' => go down\
'c-h' = ':wincmd h' => go up\
'c-l' = ':wincmd l' => go right

### Amazon Q Integration
> mode: *normal*

'leader + aq' = Open Amazon Q with current context\
'leader + ac' = Copy current context for Amazon Q\
'leader + at' = Open Amazon Q in new tab

> mode: *visual*

'leader + av' = Copy selected code for Amazon Q

### Others
> mode: *normal*

'leader + h' = ':nohlsearch'
