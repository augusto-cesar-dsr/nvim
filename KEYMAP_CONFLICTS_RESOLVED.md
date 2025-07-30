# Keymap Conflicts Resolution

This document tracks all keymap conflicts that were identified and resolved in the Neovim configuration.

## 🚨 Critical Conflicts Resolved

### 1. **`<leader>a` Conflict** ✅ RESOLVED
**Problem**: Two plugins using the same keymap
- **vim-test.lua**: `<leader>a` → `:TestSuite` (run all tests)
- **navigation-enhanced.lua**: `<leader>a` → `harpoon.add_file` (add file to Harpoon)

**Solution**: 
- **Harpoon**: Kept `<leader>a` (more frequently used)
- **vim-test**: Changed to `<leader>ta` (test all)

### 2. **`<leader>ca` Conflict** ✅ RESOLVED
**Problem**: Two LSP systems using the same keymap
- **lsp-config.lua**: `<leader>ca` → `vim.lsp.buf.code_action` (basic LSP)
- **lsp-enhanced.lua**: `<leader>ca` → `Lspsaga code_action` (enhanced LSP)

**Solution**: 
- **LSP Saga**: Kept `<leader>ca` (enhanced functionality)
- **Basic LSP**: Removed duplicate keymap

### 3. **`K` Conflict** ✅ RESOLVED
**Problem**: Two LSP systems using the same keymap
- **lsp-config.lua**: `K` → `vim.lsp.buf.hover` (basic LSP)
- **lsp-enhanced.lua**: `K` → `Lspsaga hover_doc` (enhanced LSP)

**Solution**: 
- **LSP Saga**: Kept `K` (enhanced hover with better UI)
- **Basic LSP**: Removed duplicate keymap

### 4. **`<C-n>` Conflict** ✅ RESOLVED (Previously)
**Problem**: Two navigation systems using the same keymap
- **neo-tree.lua**: `<C-n>` → Open file tree
- **navigation-enhanced.lua**: `<C-n>` → Harpoon file 3

**Solution**: 
- **Neo-tree**: Kept `<C-n>` (more important functionality)
- **Harpoon**: Changed to `<M-3>` (Alt+3)

### 5. **`<C-h>` Conflict** ✅ RESOLVED (Previously)
**Problem**: Two navigation systems using the same keymap
- **vim-options.lua**: `<C-h>` → Window navigation left
- **navigation-enhanced.lua**: `<C-h>` → Harpoon file 1

**Solution**: 
- **Window Navigation**: Kept `<C-h>` (core functionality)
- **Harpoon**: Changed to `<M-1>` (Alt+1)

## 📊 Current Keymap Distribution

### Control Keys (Ctrl)
- `<C-n>` → Neo-tree filesystem ✅
- `<C-p>` → Telescope find files ✅
- `<C-e>` → Harpoon toggle menu ✅
- `<C-h/j/k/l>` → Window navigation ✅
- `<C-d/u>` → Scroll with center ✅

### Alt Keys (Meta)
- `<M-1/2/3/4>` → Harpoon files 1-4 ✅

### Leader Keys - Navigation
- `<leader>a` → Harpoon add file ✅
- `<leader>bf` → Neo-tree buffers ✅
- `<leader>so` → Symbols outline ✅

### Leader Keys - Telescope
- `<leader>fg` → Live grep ✅
- `<leader>fb` → Find buffers ✅
- `<leader>fh` → Help tags ✅
- `<leader>fc` → Commands ✅
- `<leader>fk` → Keymaps ✅
- `<leader><leader>` → Recent files ✅

### Leader Keys - LSP
- `<leader>gd` → Go to definition ✅
- `<leader>gr` → Show references ✅
- `<leader>ca` → Code actions (LSP Saga) ✅
- `<leader>rn` → Rename (LSP Saga) ✅
- `<leader>pd` → Peek definition (LSP Saga) ✅

### Leader Keys - Testing
- `<leader>t` → Test nearest ✅
- `<leader>T` → Test file ✅
- `<leader>ta` → Test all (changed from `<leader>a`) ✅
- `<leader>l` → Test last ✅
- `<leader>g` → Test visit ✅

### Leader Keys - Git
- `<leader>gv` → Git preview hunk ✅
- `<leader>gt` → Git toggle blame ✅

### Leader Keys - Diagnostics
- `<leader>xx` → Trouble toggle ✅
- `<leader>xw` → Workspace diagnostics ✅
- `<leader>xd` → Document diagnostics ✅

### Leader Keys - AI Monitoring
- `<leader>am` → Toggle AI monitoring ✅
- `<leader>as` → AI file status ✅
- `<leader>ar` → Reload all buffers ✅
- `<leader>r` → Check file changes ✅
- `<leader>R` → Check all buffers ✅

### Leader Keys - Utilities
- `<leader>h` → Clear search highlights ✅
- `<leader>q` → Quit buffer ✅
- `<leader>Q` → Quit all ✅
- `<leader>td` → TODO search ✅

### Single Keys
- `K` → LSP Saga hover (enhanced) ✅
- `gh` → LSP Saga finder ✅
- `n/N` → Search navigation (centered) ✅
- `-` → Oil file manager ✅

## 🔍 Conflict Detection Strategy

1. **Automated Search**: Used grep to find all `keymap.set` occurrences
2. **Manual Analysis**: Reviewed each keymap for conflicts
3. **Priority Assignment**: Determined which functionality is more important
4. **Alternative Mapping**: Found logical alternatives for conflicting keys
5. **Documentation Update**: Updated all relevant documentation

## 🛡️ Prevention Measures

1. **Centralized Documentation**: This file tracks all keymaps
2. **Logical Grouping**: Related functions use similar key patterns
3. **Prefix Strategy**: Use leader combinations for plugin-specific functions
4. **Testing**: Verify keymaps work as expected after changes

## 📝 Change Log

- **2025-07-30**: Initial conflict resolution
  - Resolved `<leader>a`, `<leader>ca`, and `K` conflicts
  - Updated documentation
  - Created this tracking document

---

**Status**: ✅ All known conflicts resolved
**Last Updated**: 2025-07-30
**Next Review**: When adding new plugins or keymaps
