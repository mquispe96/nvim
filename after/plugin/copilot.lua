-- Unmap the default Copilot Tab key mapping
vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.CopilotTab()', {expr = true, noremap = true})

-- Function to check if Copilot has a suggestion and bind Tab key
_G.CopilotTab = function()
  return vim.fn['copilot#Accept']() == '' and '<Tab>' or vim.fn['copilot#Accept']()
end
