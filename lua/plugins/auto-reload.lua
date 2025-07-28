return {
  -- Plugin para auto-reload de arquivos modificados externamente
  {
    "nvim-lua/plenary.nvim", -- Já está na sua lista de plugins
    config = function()
      -- Configurações para auto-reload de arquivos
      vim.opt.autoread = true -- Habilita leitura automática de arquivos modificados
      
      -- Verifica mudanças nos arquivos a cada 100ms quando em modo normal
      vim.api.nvim_create_autocmd({"CursorHold", "CursorHoldI"}, {
        pattern = "*",
        callback = function()
          vim.cmd("checktime")
        end,
      })
      
      -- Verifica mudanças quando o foco volta para o Neovim
      vim.api.nvim_create_autocmd({"FocusGained", "BufEnter"}, {
        pattern = "*",
        callback = function()
          vim.cmd("checktime")
        end,
      })
      
      -- Notifica quando um arquivo foi recarregado
      vim.api.nvim_create_autocmd("FileChangedShellPost", {
        pattern = "*",
        callback = function()
          vim.notify("Arquivo recarregado: " .. vim.fn.expand("%:t"), vim.log.levels.INFO)
        end,
      })
      
      -- Configuração para reduzir o tempo de detecção de mudanças
      vim.opt.updatetime = 100 -- Reduz de 4000ms para 100ms
      
      -- Keymaps úteis para monitoramento
      vim.keymap.set('n', '<leader>r', ':checktime<CR>', { desc = "Verificar mudanças nos arquivos" })
      vim.keymap.set('n', '<leader>R', ':bufdo checktime<CR>', { desc = "Verificar mudanças em todos os buffers" })
      
      -- Auto-comando para mostrar status quando arquivos são modificados
      vim.api.nvim_create_autocmd("FileChangedShell", {
        pattern = "*",
        callback = function()
          local choice = vim.fn.confirm(
            "Arquivo '" .. vim.fn.expand("%:t") .. "' foi modificado externamente. Recarregar?",
            "&Sim\n&Não\n&Sempre",
            1
          )
          if choice == 1 then
            vim.cmd("edit!")
          elseif choice == 3 then
            vim.cmd("set autoread")
            vim.cmd("edit!")
          end
        end,
      })
    end,
  }
}
