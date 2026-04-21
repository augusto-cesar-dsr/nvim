return {
  {
    "David-Kunz/gen.nvim",
    cmd = "Gen",
    keys = {
      { "<leader>ia", ":Gen<CR>", mode = { "n", "v" }, desc = "AI: Menu" },
      { "<leader>is", ":Gen Chat<CR>", mode = { "n", "v" }, desc = "AI: Chat" },
      { "<leader>ie", ":Gen Explain_Code<CR>", mode = { "v" }, desc = "AI: Explicar" },
      { "<leader>ir", ":Gen Review_Code<CR>", mode = { "v" }, desc = "AI: Revisar" },
      { "<leader>if", ":Gen Fix_Code<CR>", mode = { "v" }, desc = "AI: Corrigir" },
    },
    opts = {
      -- Modelos recomendados para RPi4 8GB:
      -- 1. qwen2.5-coder:1.5b (Equilíbrio perfeito - PADRÃO)
      -- 2. llama3.2:1b (Rápido para chat geral)
      -- 3. phi3.5:latest (3.8B - No limite da RAM, mas muito inteligente)
      model = "qwen2.5-coder:1.5b",
      host = "pi-ai.local",
      port = "11434",
      display_mode = "float", 
      show_prompt = true,
      show_model = true,
      no_auto_close = false,
      -- Otimização para Raspberry Pi: Timeout maior e retry
      retry_count = 2,
    },
    config = function(_, opts)
      local gen = require("gen")
      gen.setup(opts)
      
      -- Prompts customizados para o seu Lab de análise
      gen.prompts["Explain_Code"] = {
        prompt = "Explique o seguinte código de forma concisa e técnica:\n$text",
        replace = false,
      }
      gen.prompts["Review_Code"] = {
        prompt = "Atue como um Engenheiro Senior. Revise este código buscando bugs, problemas de performance e melhorias de legibilidade:\n$text",
        replace = false,
      }
      gen.prompts["Fix_Code"] = {
        prompt = "Identifique erros no código abaixo e forneça a versão corrigida:\n$text",
        replace = true,
      }
    end,
  },
}
