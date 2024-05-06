return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    -- Customized colors with gruvbox plugin
    -- set termguicolors
    -- set background=dark
    vim.cmd.colorscheme("catppuccin-mocha")
  end
}

