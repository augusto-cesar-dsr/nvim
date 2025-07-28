local M = {}

-- Configuration
M.config = {
  terminal_size = 80,
  auto_close = false,
  context_lines = 5,
}

-- Get current context for Q
local function get_current_context()
  local current_line = vim.api.nvim_get_current_line()
  local line_number = vim.api.nvim_win_get_cursor(0)[1]
  local filename = vim.fn.expand('%:t')
  local filepath = vim.fn.expand('%:p')
  local filetype = vim.bo.filetype
  
  -- Get surrounding lines for context
  local start_line = math.max(1, line_number - M.config.context_lines)
  local end_line = line_number + M.config.context_lines
  local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)
  local context_code = table.concat(lines, '\n')
  
  return {
    filename = filename,
    filepath = filepath,
    filetype = filetype,
    line_number = line_number,
    current_line = current_line,
    context_code = context_code,
    start_line = start_line,
    end_line = end_line
  }
end

-- Format context for Q
local function format_context_for_q(context)
  local formatted = string.format([[
Contexto do código:
- Arquivo: %s
- Tipo: %s
- Linha atual: %d
- Código na linha: %s

Contexto (linhas %d-%d):
```%s
%s
```

Sua pergunta: ]], 
    context.filename,
    context.filetype,
    context.line_number,
    context.current_line,
    context.start_line,
    context.end_line,
    context.filetype,
    context.context_code
  )
  
  return formatted
end

-- Open Q in vertical split with context
function M.open_q_with_context()
  local context = get_current_context()
  local formatted_context = format_context_for_q(context)
  
  -- Open vertical split with terminal
  vim.cmd('vsplit')
  vim.cmd('terminal')
  
  -- Wait a moment for terminal to initialize
  vim.defer_fn(function()
    -- Send q chat command
    local chan = vim.b.terminal_job_id
    if chan then
      vim.fn.chansend(chan, 'q chat\n')
    end
  end, 100)
  
  -- Copy context to clipboard for easy pasting
  vim.fn.setreg('+', formatted_context)
  
  print("Amazon Q aberto! Contexto copiado para clipboard - cole com Ctrl+Shift+V")
end

-- Quick context copy without opening Q
function M.copy_context()
  local context = get_current_context()
  local formatted_context = format_context_for_q(context)
  
  vim.fn.setreg('+', formatted_context)
  print("Contexto copiado para clipboard!")
end

-- Open Q in new tab
function M.open_q_tab()
  vim.cmd('tabnew')
  vim.cmd('terminal q chat')
end

-- Setup function
function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
  
  -- Key mappings following your leader pattern
  vim.keymap.set('n', '<leader>aq', M.open_q_with_context, { 
    desc = 'Open Amazon Q with current context' 
  })
  
  vim.keymap.set('n', '<leader>ac', M.copy_context, { 
    desc = 'Copy current context for Amazon Q' 
  })
  
  vim.keymap.set('n', '<leader>at', M.open_q_tab, { 
    desc = 'Open Amazon Q in new tab' 
  })
  
  -- Visual mode: copy selected code with context
  vim.keymap.set('v', '<leader>av', function()
    local start_pos = vim.fn.getpos("'<")
    local end_pos = vim.fn.getpos("'>")
    local lines = vim.fn.getline(start_pos[2], end_pos[2])
    local selected_code = table.concat(lines, '\n')
    
    local context = get_current_context()
    local formatted = string.format([[
Código selecionado no arquivo %s:
```%s
%s
```

Contexto da linha %d:
%s

Sua pergunta: ]], 
      context.filename,
      context.filetype,
      selected_code,
      context.line_number,
      context.current_line
    )
    
    vim.fn.setreg('+', formatted)
    print("Código selecionado copiado para Amazon Q!")
  end, { desc = 'Copy selected code for Amazon Q' })
end

return M
