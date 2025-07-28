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


### Navigation Enhanced
> mode: *normal*

'C-n'         = ':Neotree filesystem reveal right'\
'leader + bf' = ':Neotree buffers reveal float'\
'leader + a'  = 'Harpoon: Add file'\
'C-e'         = 'Harpoon: Toggle menu'\
'C-h'         = 'Harpoon: File 1'\
'C-t'         = 'Harpoon: File 2'\
'leader + so' = ':SymbolsOutline' => Toggle symbols outline

"-"                = toggle_float\
"C-p"            = find_files\
"leader + fg"       = live_grep\
"leader + leader " = oldfiles

### Development Experience
> mode: *normal*

'gcc'         = Comment/uncomment line\
'gc'          = Comment/uncomment (visual mode)\
'leader + td' = ':TodoTelescope' => Search TODOs\
'leader + xx' = ':TroubleToggle' => Toggle diagnostics\
'leader + xw' = 'Workspace Diagnostics'\
'leader + xd' = 'Document Diagnostics'

> mode: *visual*

'J'           = Move selected lines down\
'K'           = Move selected lines up

### LSP Enhanced
> mode: *normal*

"K"           = hover (Lspsaga)\
"gh"          = LSP Finder\
"leader + gd" = definition\
"leader + gr" = references\
"leader + ca" = code_action (Lspsaga)\
"leader + rn" = rename (Lspsaga)\
"leader + pd" = peek_definition\
"leader + gf" = format

### Navigation Improvements
> mode: *normal*

'C-d'         = Scroll down and center\
'C-u'         = Scroll up and center\
'n'           = Next search result (centered)\
'N'           = Previous search result (centered)

### AI File Monitoring
> mode: *normal*

'leader + r'  = ':checktime' => Verificar mudanças no arquivo atual\
'leader + R'  = ':bufdo checktime' => Verificar mudanças em todos os buffers\
'leader + am' = ':ToggleAIMonitoring' => Ativar/desativar monitoramento intensivo (50ms)\
'leader + as' = ':AIFileStatus' => Mostrar status de todos os arquivos abertos\
'leader + ar' = ':ReloadAll' => Recarregar todos os buffers

### Comandos AI Monitoring
> mode: *command*

':checktime'           = Verifica mudanças no arquivo atual\
':ReloadAll'           = Verifica mudanças em todos os buffers abertos\
':ToggleAIMonitoring'  = Ativa/desativa monitoramento intensivo para agentes AI\
':AIFileStatus'        = Mostra status detalhado de todos os arquivos

### Others
> mode: *normal*

'leader + h' = ':nohlsearch'
