-- Ensure nvm node is available (nvm only loads in interactive shells)
vim.env.PATH = "/home/augusto/.nvm/versions/node/v24.15.0/bin:" .. vim.env.PATH

-- Package Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins", { rocks = { enabled = false } })

