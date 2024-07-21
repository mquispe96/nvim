-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

vim.api.nvim_set_keymap('n', '<S-Tab>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>pv', ':NvimTreeOpen<CR>:wincmd p | q<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>v', ':lua require("nvim-tree.api").node.open.vertical()<CR>', { noremap = true, silent = true })

require('nvim-tree').setup { 
  diagnostics = {
    enable = true,
    show_on_dirs = true,
  },
  renderer = {
    add_trailing = true,
    special_files = {"README.md", ".env", ".gitignore"},    
    icons = {
      git_placement = "after",
    }
  },
   git ={
    ignore = false,
  }
 } 
