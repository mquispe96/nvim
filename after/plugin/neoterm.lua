-- Configuration for neoterm
vim.g.neoterm_default_mod = 'horizontal' -- Open terminals in vertical splits by default
vim.g.neoterm_autoscroll = 1 -- Automatically scroll to the bottom of the terminal

-- Function to toggle terminal and enter insert mode
function _G.toggle_terminal()
  vim.cmd('Ttoggle')
  vim.cmd('wincmd p') -- Move cursor to the previous window (the terminal)
  vim.cmd('startinsert') -- Enter insert mode
end

-- Key mappings to toggle neoterm
vim.api.nvim_set_keymap('n', '<leader>t', ':lua toggle_terminal()<CR>', { noremap = true, silent = true })

vim.cmd([[
  autocmd TermOpen * startinsert
  autocmd BufEnter term://* startinsert
]])
