
" Set a Leader key,
" the leader key is the key to merging with anothers keys to execute commands
" customized hotkeys.
let mapleader=','

" Customized hotkeys
" Leader+z: Executes :u (undo) like Command+z or Control+z
nmap <leader>z :u<CR>
" Leader+Q: Executes :qa! (Force quit all) like Command+q or ALT+F4
nmap <leader>Q :qa!<CR>
" Leader+q: Executes :bw (Delete buffer alternative) like Command+w
nmap <leader>q :bw<CR>
" Leader+/: Executes :NERDTreeToggle, this opens or closes the file tree depending on the current state.
nnoremap <leader>/ :NERDTreeToggle<CR>
" Leader+nf: Executes :NERDTreeFind, so NERDTree focus in the tree file the current file you have opened in your screen.
nnoremap <leader>nf :NERDTreeFind<CR>

" Telescope shotcuts
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

