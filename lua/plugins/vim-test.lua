return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux"
  },
  vim.keymap.set('n', '<leader>t', ':TestNearest<CR>'),
  vim.keymap.set('n', '<leader>T', ':TestFile<CR>'),
  vim.keymap.set('n', '<leader>a', ':TestSuite<CR>'),
  vim.keymap.set('n', '<leader>l', ':TestLast<CR>'),
  vim.keymap.set('n', '<leader>g', ':TestVisit<CR>'),
  vim.cmd("let test#strategy = 'vimux'"),
  vim.cmd("let test#ruby#rspec#executable = 'spring rspec'"),
}
