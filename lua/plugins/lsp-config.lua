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
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "bashls", "cssls", "dockerls", "html", "jsonls" },
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = { 
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      
      -- Configuração usando vim.lsp.config (nova API)
      vim.lsp.config.lua_ls = {
        cmd = { "lua-language-server" },
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
          },
        },
      }
      
      vim.lsp.config.ts_ls = { cmd = { "typescript-language-server", "--stdio" }, capabilities = capabilities }
      vim.lsp.config.bashls = { cmd = { "bash-language-server", "start" }, capabilities = capabilities }
      vim.lsp.config.cssls = { cmd = { "vscode-css-language-server", "--stdio" }, capabilities = capabilities }
      vim.lsp.config.dockerls = { cmd = { "docker-langserver", "--stdio" }, capabilities = capabilities }
      vim.lsp.config.html = { cmd = { "vscode-html-language-server", "--stdio" }, capabilities = capabilities }
      vim.lsp.config.jsonls = { cmd = { "vscode-json-language-server", "--stdio" }, capabilities = capabilities }

      -- Keymaps básicos para LSP
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { buffer = ev.buf, desc = "Go to definition" })
          vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { buffer = ev.buf, desc = "Show references" })
          vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { buffer = ev.buf, desc = "Go to implementation" })
          -- vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, { buffer = ev.buf, desc = "Go to type definition" })
        end,
      })
    end,
  },
}
