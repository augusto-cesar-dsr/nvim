return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux"
  },
  vim.keymap.set('n', '<leader>t', ':TestNearest<CR>'),
  vim.keymap.set('n', '<leader>T', ':TestFile<CR>'),
  vim.keymap.set('n', '<leader>ta', ':TestSuite<CR>'), -- Mudado de <leader>a para <leader>ta
  vim.keymap.set('n', '<leader>l', ':TestLast<CR>'),
  vim.keymap.set('n', '<leader>g', ':TestVisit<CR>'),
  vim.cmd("let test#strategy = 'vimux'"),
  vim.cmd("let test#ruby#rspec#executable = 'RAILS_ENV=test rspec'"),
}
