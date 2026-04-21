return {
  {
    "David-Kunz/gen.nvim",
    cmd = "Gen",
    -- Você pode mapear teclas aqui seguindo seu padrão
    keys = {
      { "<leader>aa", ":Gen<CR>", mode = { "n", "v" }, desc = "AI: Menu Gen" },
      { "<leader>as", ":Gen Chat<CR>", mode = { "n", "v" }, desc = "AI: Chat" },
    },
    opts = {
      model = "deepseek-coder:1.3b", -- Modelo que baixamos no Pi
      host = "pi-ai.local",          -- Hostname configurado no seu Pi
      port = "11434",                -- Porta padrão do Ollama
      display_mode = "float",        -- Janela flutuante (seu nvim já usa muito float)
      show_prompt = true,            -- Útil para o seu lab de análise
      show_model = true,
      -- Estilização para combinar com seu tema (provavelmente baseado em Drácula ou similar)
      no_auto_close = false,
      init = function(options) pcall(io.popen, "ollama serve > /dev/null 2>&1 &") end,
      -- O comando que será executado para chamar a API
      command = function(options)
        local body = {model = options.model, stream = true}
        return "curl --silent --no-buffer -X POST http://" .. options.host .. ":" .. options.port .. "/api/generate -d '" .. vim.fn.json_encode(body) .. "'"
      end,
    },
  },
}
