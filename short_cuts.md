# Neovim Shortcuts & Funcionalidades

## Configuração Básica
- **Leader Key**: `,` (vírgula)
- **Clipboard**: Integrado com sistema (Ctrl+C/Ctrl+V funciona)
- **Indentação**: 2 espaços, tabs expandidos
- **Números de linha**: Relativos e absolutos
- **Undo persistente**: Histórico salvo entre sessões

## Atalhos Básicos do Sistema

### Navegação de Janelas/Panes
| Atalho | Função | Descrição |
|--------|--------|-----------|
| `Ctrl+h` | Ir para janela esquerda | Navega entre splits horizontais |
| `Ctrl+j` | Ir para janela abaixo | Navega entre splits verticais |
| `Ctrl+k` | Ir para janela acima | Navega entre splits verticais |
| `Ctrl+l` | Ir para janela direita | Navega entre splits horizontais |

### Gerenciamento de Buffers
| Atalho | Função | Descrição |
|--------|--------|-----------|
| `,q` | Fechar buffer atual | Equivale a Ctrl+W, fecha apenas o buffer |
| `,Q` | Forçar saída de tudo | Equivale a Alt+F4, força saída sem salvar |
| `,h` | Limpar highlight de busca | Remove destaque da última busca |

### Navegação Melhorada
| Atalho | Função | Descrição |
|--------|--------|-----------|
| `Ctrl+d` | Scroll down centralizado | Desce meia página e centraliza cursor |
| `Ctrl+u` | Scroll up centralizado | Sobe meia página e centraliza cursor |
| `n` | Próximo resultado centralizado | Busca próximo e centraliza |
| `N` | Resultado anterior centralizado | Busca anterior e centraliza |

### Modo Visual - Movimentação de Linhas
| Atalho | Função | Descrição |
|--------|--------|-----------|
| `J` (visual) | Mover linha(s) para baixo | Move seleção para baixo mantendo indentação |
| `K` (visual) | Mover linha(s) para cima | Move seleção para cima mantendo indentação |

## Telescope (Busca Fuzzy)

### Busca de Arquivos
| Atalho | Função | Descrição |
|--------|--------|-----------|
| `Ctrl+p` | Buscar arquivos | Busca fuzzy em todos os arquivos do projeto |
| `,fg` | Live grep | Busca texto em todos os arquivos |
| `,<leader>` | Arquivos recentes | Lista arquivos abertos recentemente |
| `,fb` | Buscar buffers | Lista todos os buffers abertos |
| `,fh` | Help tags | Busca na documentação do Vim |
| `,fc` | Comandos | Lista todos os comandos disponíveis |
| `,fk` | Keymaps | Lista todos os atalhos configurados |

**Funcionalidades do Telescope:**
- Busca em arquivos ocultos
- Ignora node_modules, .git, dist, build
- Preview de arquivos
- Busca fuzzy inteligente
- Interface otimizada para performance

## Neo-tree (Explorador de Arquivos)

| Atalho | Função | Descrição |
|--------|--------|-----------|
| `Ctrl+n` | Abrir Neo-tree | Abre explorador de arquivos à direita |
| `,bf` | Buffers flutuante | Abre lista de buffers em janela flutuante |

**Funcionalidades do Neo-tree:**
- `Y` - Menu para copiar caminhos (absoluto, relativo, nome, etc.)
- Mostra arquivos ocultos importantes (.env, .rspec, docker, etc.)
- Oculta arquivos desnecessários (.DS_Store, thumbs.db)
- Integração com Git (mostra status dos arquivos)

## Oil.nvim (Editor de Diretórios)

| Atalho | Função | Descrição |
|--------|--------|-----------|
| `-` | Abrir Oil | Edita diretório atual como se fosse um arquivo |

**Funcionalidades do Oil:**
- Edita diretórios como texto
- Renomeia, move, deleta arquivos editando o texto
- Salva com `:w` para aplicar mudanças

## LSP (Language Server Protocol)

### Navegação de Código
| Atalho | Função | Descrição |
|--------|--------|-----------|
| `,gd` | Ir para definição | Vai para onde função/variável foi definida |
| `,gr` | Mostrar referências | Lista todos os usos da função/variável |
| `,gi` | Ir para implementação | Vai para implementação da interface |
| `,gt` | Ir para tipo | Vai para definição do tipo |

### LSP Saga (Interface Melhorada)
| Atalho | Função | Descrição |
|--------|--------|-----------|
| `gh` | LSP Finder | Busca avançada de definições e referências |
| `,ca` | Code Actions | Menu de ações de código (refactor, fix, etc.) |
| `,rn` | Renomear símbolo | Renomeia variável/função em todo o projeto |
| `,pd` | Preview definição | Mostra definição em popup sem sair do local |
| `K` | Hover documentation | Mostra documentação do símbolo sob cursor |

### Diagnósticos (Trouble.nvim)
| Atalho | Função | Descrição |
|--------|--------|-----------|
| `,xx` | Toggle Trouble | Abre/fecha painel de diagnósticos |
| `,xw` | Diagnósticos workspace | Mostra erros de todo o workspace |
| `,xd` | Diagnósticos documento | Mostra erros apenas do arquivo atual |

**Language Servers Configurados:**
- **Lua** (lua_ls) - Para configuração do Neovim
- **TypeScript/JavaScript** (ts_ls) - Para desenvolvimento web
- **Bash** (bashls) - Para scripts shell
- **CSS** (cssls) - Para estilos
- **Docker** (dockerls) - Para Dockerfiles
- **HTML** (html) - Para markup
- **JSON** (jsonls) - Para configurações JSON

## Git Integration

### Gitsigns
| Atalho | Função | Descrição |
|--------|--------|-----------|
| `,gv` | Preview hunk | Mostra diff do bloco atual |
| `,gt` | Toggle blame | Liga/desliga blame da linha atual |

**Funcionalidades do Git:**
- Indicadores visuais de mudanças na lateral
- Integração com vim-fugitive para comandos Git
- Preview de mudanças inline

## Testes (vim-test + vimux)

| Atalho | Função | Descrição |
|--------|--------|-----------|
| `,t` | Teste mais próximo | Executa teste sob o cursor |
| `,T` | Teste do arquivo | Executa todos os testes do arquivo |
| `,ta` | Toda a suíte | Executa todos os testes do projeto |
| `,l` | Último teste | Re-executa o último teste executado |
| `,g` | Visitar teste | Vai para o último arquivo de teste |

**Configuração de Testes:**
- Usa vimux para executar em painel tmux
- Configurado para RSpec com `RAILS_ENV=test`
- Execução em background sem bloquear editor

## IA Generativa (Ollama @ pi-ai.local)

### Assistente de Código (gen.nvim)
| Atalho | Função | Descrição |
|--------|--------|-----------|
| `,ia` | Menu Gen | Abre menu com todas opções de IA |
| `,is` | Chat IA | Inicia conversa livre com o modelo |
| `,ie` (visual) | Explicar | Explica o código selecionado |
| `,ir` (visual) | Revisar | Sugere melhorias no código selecionado |
| `,if` (visual) | Corrigir | Identifica e corrige bugs no código |

**Modelos Recomendados para RPi 4:**
- **qwen2.5-coder:1.5b**: O melhor para lógica de código (PADRÃO)
- **llama3.2:1b**: Rápido para conversas gerais
- **phi3.5:latest**: Mais potente (3.8B), porém mais lento no Pi 4

## AI File Monitor (Agentes Externos)

| Atalho | Função | Descrição |
|--------|--------|-----------|
| `,am` | Toggle monitor | Liga/desliga monitoramento de mudanças de IA externa |
| `,as` | Status da monitoria | Mostra se a monitoria está ativa e para quais arquivos |
| `,ar` | Forçar reload | Força recarregamento de todos os arquivos do projeto |

## Navegação Avançada

### Harpoon (Marcadores de Arquivos)
| Atalho | Função | Descrição |
|--------|--------|-----------|
| `,a` | Adicionar arquivo | Marca arquivo atual para acesso rápido |
| `Ctrl+e` | Menu Harpoon | Abre menu de arquivos marcados |
| `Alt+1` | Arquivo 1 | Vai para primeiro arquivo marcado |
| `Alt+2` | Arquivo 2 | Vai para segundo arquivo marcado |
| `Alt+3` | Arquivo 3 | Vai para terceiro arquivo marcado |
| `Alt+4` | Arquivo 4 | Vai para quarto arquivo marcado |

### Leap (Navegação Rápida)
| Atalho | Função | Descrição |
|--------|--------|-----------|
| `s` | Leap forward | Pula para frente digitando 2 caracteres |
| `S` | Leap backward | Pula para trás digitando 2 caracteres |
| `gs` | Leap from window | Pula entre janelas |

### Symbols Outline
| Atalho | Função | Descrição |
|--------|--------|-----------|
| `,so` | Toggle outline | Abre/fecha painel de símbolos do arquivo |

## Autocompletion & Snippets

**Funcionalidades Automáticas:**
- **nvim-cmp**: Autocompleção inteligente baseada em LSP
- **LuaSnip**: Sistema de snippets expansível
- **Autopairs**: Fecha automaticamente parênteses, chaves, aspas
- **Friendly-snippets**: Biblioteca de snippets para várias linguagens

**Navegação no Menu de Autocompleção:**
- `Tab` / `Shift+Tab` - Navegar entre opções
- `Enter` - Aceitar sugestão
- `Ctrl+Space` - Forçar abertura do menu

## Formatação e Linting

**None-ls (Null-ls) Configurado:**
- Formatação automática ao salvar
- Linting em tempo real
- Integração com ferramentas externas

## Utilitários

### Comandos Personalizados
| Comando | Função | Descrição |
|---------|--------|-----------|
| `:ReloadAll` | Recarregar buffers | Verifica mudanças em todos os arquivos abertos |
| `:Shortcuts` | Abrir shortcuts | Abre este documento no Neovim |
| `:MarkdownPreview` | Preview markdown | Visualiza markdown com glow no terminal |
| `:ClearUndo` | Limpar todo undo | Remove todo histórico de undo persistente |
| `:ClearCurrentUndo` | Limpar undo atual | Remove undo apenas do arquivo atual |

### Atalhos de Documentação e Utilitários
| Atalho | Função | Descrição |
|--------|--------|-----------|
| `,?` | Abrir shortcuts | Abre este documento para consulta rápida |
| `,mp` | Preview markdown | Visualiza arquivo markdown atual com glow |
| `,cu` | Limpar todo undo | Remove todo histórico de undo persistente |
| `,cU` | Limpar undo atual | Remove undo apenas do arquivo atual |

### Detecção de Tipos de Arquivo
**Extensões Personalizadas:**
- `.json.jbuilder` → Ruby
- `.js.coffee` → JavaScript  
- `.hbs` → HTML
- `.rabl` → Ruby

### Performance e Monitoramento
- **Auto-reload**: Detecta mudanças externas automaticamente
- **Lazy loading**: Plugins carregam apenas quando necessário
- **File monitoring**: Monitora mudanças de agentes AI
- **Update time**: 100ms para detecção rápida de mudanças

## Temas e Interface

**Catppuccin Theme:**
- Tema escuro otimizado para programação
- Cores suaves para reduzir fadiga ocular
- Integração com todos os plugins

**Lualine:**
- Barra de status informativa
- Mostra modo, branch Git, diagnósticos LSP
- Indicadores de progresso para operações

**Indent Blankline:**
- Linhas guia de indentação
- Facilita leitura de código aninhado

## Dicas de Uso

1. **Workflow Recomendado:**
   - Use `Ctrl+p` para abrir arquivos rapidamente
   - Marque arquivos importantes com `,a` (Harpoon)
   - Use `,gd` para navegar no código
   - Execute testes com `,t` durante desenvolvimento

2. **Busca Eficiente:**
   - `,fg` para buscar texto em todo projeto
   - `,<leader>` para arquivos recentes
   - `s` + 2 caracteres para navegação rápida

3. **Depuração:**
   - `,xx` para ver todos os erros
   - `K` para documentação rápida
   - `,ca` para ações de correção automática

4. **Git Workflow:**
   - `,gv` para ver mudanças antes de commit
   - `,gt` para ver quem modificou cada linha
