-- Fix para APIs depreciadas
return {
  {
    "nvim-lua/plenary.nvim",
    priority = 1000,
    config = function()
      -- Silenciar avisos de APIs depreciadas substituindo-as
      if vim.lsp.get_clients then
        vim.lsp.buf_get_clients = function(bufnr)
          return vim.lsp.get_clients({ bufnr = bufnr })
        end
      end
      
      if vim.iter then
        vim.tbl_flatten = function(t)
          return vim.iter(t):flatten():totable()
        end
      end
    end,
  },
}
