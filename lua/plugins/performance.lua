return {
  -- Melhorias de performance
  {
    "lewis6991/impatient.nvim", -- Cache de módulos Lua para startup mais rápido
    config = function()
      require('impatient')
    end,
  },
  
  -- Plugin para otimizar carregamento
  {
    "nathom/filetype.nvim",
    config = function()
      require("filetype").setup({
        overrides = {
          extensions = {
            jbuilder = "ruby",
            rabl = "ruby",
            coffee = "javascript",
            hbs = "html",
          },
        },
      })
    end,
  },
}
