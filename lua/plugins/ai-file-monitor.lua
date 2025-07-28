return {
  -- Configurações específicas para monitoramento de arquivos modificados por AI
  {
    "nvim-lua/plenary.nvim",
    config = function()
      -- Função para monitorar arquivos em tempo real
      local function setup_ai_monitoring()
        -- Auto-comando para detectar mudanças frequentes (útil para agentes AI)
        vim.api.nvim_create_autocmd({"CursorMoved", "CursorMovedI"}, {
          pattern = "*",
          callback = function()
            -- Verifica mudanças a cada movimento do cursor
            vim.cmd("silent! checktime")
          end,
        })
        
        -- Comando para ativar/desativar monitoramento intensivo
        local intensive_monitoring = false
        vim.api.nvim_create_user_command('ToggleAIMonitoring', function()
          intensive_monitoring = not intensive_monitoring
          if intensive_monitoring then
            vim.notify('Monitoramento intensivo de AI ATIVADO', vim.log.levels.WARN)
            -- Timer para verificar mudanças a cada 50ms
            local timer = vim.loop.new_timer()
            timer:start(50, 50, vim.schedule_wrap(function()
              if not intensive_monitoring then
                timer:stop()
                timer:close()
                return
              end
              vim.cmd("silent! checktime")
            end))
          else
            vim.notify('Monitoramento intensivo de AI DESATIVADO', vim.log.levels.INFO)
          end
        end, {})
        
        -- Comando para mostrar status de todos os buffers
        vim.api.nvim_create_user_command('AIFileStatus', function()
          local buffers = vim.api.nvim_list_bufs()
          local loaded_buffers = {}
          
          for _, buf in ipairs(buffers) do
            if vim.api.nvim_buf_is_loaded(buf) then
              local name = vim.api.nvim_buf_get_name(buf)
              if name ~= "" then
                local modified = vim.api.nvim_buf_get_option(buf, 'modified')
                table.insert(loaded_buffers, {
                  name = vim.fn.fnamemodify(name, ':t'),
                  path = name,
                  modified = modified
                })
              end
            end
          end
          
          print("=== Status dos Arquivos ===")
          for _, buf_info in ipairs(loaded_buffers) do
            local status = buf_info.modified and "[MODIFICADO]" or "[SALVO]"
            print(string.format("%s %s", status, buf_info.name))
          end
        end, {})
        
        -- Keymaps específicos para monitoramento de AI
        vim.keymap.set('n', '<leader>am', ':ToggleAIMonitoring<CR>', { desc = "Toggle AI monitoring" })
        vim.keymap.set('n', '<leader>as', ':AIFileStatus<CR>', { desc = "AI file status" })
        vim.keymap.set('n', '<leader>ar', ':ReloadAll<CR>', { desc = "Reload all buffers" })
      end
      
      setup_ai_monitoring()
    end,
  }
}
