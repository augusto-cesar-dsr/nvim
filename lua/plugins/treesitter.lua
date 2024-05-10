return {
  "nvim-treesitter/nvim-treesitter",
  build=":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "lua",
        "ruby",
        "javascript",
        "json",
        "vimdoc",
        "dockerfile",
        "markdown",
        "markdown_inline",
        "regex",
        "ssh_config",
        "yaml"
      },
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}
