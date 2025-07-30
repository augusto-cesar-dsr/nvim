-- https://github.com/williamboman/mason-lspconfig.nvim see this repository to more information in documentation
return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = { 
      "williamboman/mason.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      
      -- Configuração manual dos LSPs
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
            },
          },
        },
      })
      
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })
      
      lspconfig.bashls.setup({
        capabilities = capabilities,
      })
      
      lspconfig.cssls.setup({
        capabilities = capabilities,
      })
      
      lspconfig.dockerls.setup({
        capabilities = capabilities,
      })
      
      lspconfig.docker_compose_language_service.setup({
        capabilities = capabilities,
      })
      
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      
      lspconfig.jsonls.setup({
        capabilities = capabilities,
      })
      
      lspconfig.solargraph.setup({
        capabilities = capabilities,
      })
      
      lspconfig.rubocop.setup({
        capabilities = capabilities,
      })

      -- Keymaps básicos para LSP (os avançados estão no lsp-enhanced.lua)
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Show references" })
    end,
  },
}
