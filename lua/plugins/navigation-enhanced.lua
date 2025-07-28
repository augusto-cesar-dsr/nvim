return {
  -- Navegação aprimorada entre arquivos
  {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")
      
      vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon: Add file" })
      vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Harpoon: Toggle menu" })
      
      vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end, { desc = "Harpoon: File 1" })
      vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end, { desc = "Harpoon: File 2" })
      vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end, { desc = "Harpoon: File 3" })
      vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end, { desc = "Harpoon: File 4" })
    end,
  },
  
  -- Melhor navegação de símbolos
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("symbols-outline").setup()
      vim.keymap.set("n", "<leader>so", ":SymbolsOutline<CR>", { desc = "Toggle symbols outline" })
    end,
  },
  
  -- Navegação rápida com leap
  {
    "ggandor/leap.nvim",
    config = function()
      require('leap').add_default_mappings()
    end,
  },
}
