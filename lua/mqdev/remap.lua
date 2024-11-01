-- Prettier command
vim.cmd('command! -nargs=0 PP :PrettierAsync') -- Prettier command

-- Command for `:GA` to run `:Git add .`
vim.cmd('command! -nargs=0 GA :Git add .')

-- Command for `:GC` to run `:Git commit -m <message>`
vim.cmd('command! -nargs=1 GC :Git commit -m <q-args>')

-- Command for `:GPS` to run `:Git push`
vim.cmd('command! -nargs=* GPS execute "Git push" . (len(<q-args>) > 0 ? " " . <q-args> : "")')

-- Command for `:GPL` to run `:Git pull`
vim.cmd('command! -nargs=* GPL execute "Git pull" . (len(<q-args>) > 0 ? " " . <q-args> : "")')

-- Command for `:GSW` to run `:Git switch`
vim.cmd('command! -nargs=* GSW execute "Git switch" . (len(<q-args>) > 0 ? " " . <q-args> : "")')

-- Command for `:GRB` to run `:Git rebase`
vim.cmd('command! -nargs=1 GRB :Git rebase <q-args>')

-- Command for `:GBR` to run `:Git branch`
vim.cmd('command! -nargs=* GBR execute "Git branch" . (len(<q-args>) > 0 ? " " . <q-args> : "")')

-- Command for `:GCO` to run `:Git checkout`
vim.cmd('command! -nargs=0 GCO :Git checkout -- .')

-- Autosave
vim.g.auto_save = 1

-- Enable syntax highlighting
vim.cmd('syntax on')

-- vim-gitgutter configuration (if needed)
vim.g.gitgutter_enabled = 1

-- Example of using vim-fugitive commands
vim.api.nvim_set_keymap('n', '<leader>gs', ':Git<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gc', ':Git commit<CR>', { noremap = true, silent = true })

vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true }) -- Copy to clipboard
vim.keymap.set("n", "<leader>Y", '"+Y', { noremap = true, silent = true }) -- Copy to clipboard (line)
vim.keymap.set("v", "<leader>d", "\"_d", { noremap = true, silent = true }) -- Delete without yanking
vim.keymap.set("n", "<leader>D", "\"_D", { noremap = true, silent = true }) -- Delete without yanking (line)
vim.keymap.set("n", "<leader>p", '"+p', { noremap = true, silent = true }) -- Paste from clipboard

-- Key mappings
vim.api.nvim_set_keymap('v', '<C-c>', "y'>o<Esc>p='[v']gv", { noremap = true, silent = true }) -- Copy selected text paste below
vim.api.nvim_set_keymap('i', '<C-u>', '<C-o>u', { noremap = true, silent = true }) -- Undo in insert mode
vim.api.nvim_set_keymap('i', '<C-r>', '<C-o>u', { noremap = true, silent = true }) -- Redo in insert mode
vim.api.nvim_set_keymap('x', '<C-s>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true }) -- Move selected text down
vim.api.nvim_set_keymap('x', '<C-w>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true }) -- Move selected text up

-- Split navigation with different key combination
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>h', { noremap = true, silent = true }) -- Move to left Split
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>j', { noremap = true, silent = true }) -- Move to bottom Split
vim.api.nvim_set_keymap('n', '<C-i>', '<C-w>k', { noremap = true, silent = true }) -- Move to top Split
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true }) -- Move to right Split
vim.api.nvim_set_keymap('i', '<C-j>', '<C-\\><C-n><C-w>h', { noremap = true, silent = true }) -- Move to left Split
vim.api.nvim_set_keymap('i', '<C-k>', '<C-\\><C-n><C-w>j', { noremap = true, silent = true }) -- Move to bottom Split
vim.api.nvim_set_keymap('i', '<C-i>', '<C-\\><C-n><C-w>k', { noremap = true, silent = true }) -- Move to top Split
vim.api.nvim_set_keymap('i', '<C-l>', '<C-\\><C-n><C-w>l', { noremap = true, silent = true }) -- Move to right Split
vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-n><C-w>h', { noremap = true, silent = true }) -- Move to left Split
vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-n><C-w>j', { noremap = true, silent = true }) -- Move to bottom Split
vim.api.nvim_set_keymap('t', '<C-i>', '<C-\\><C-n><C-w>k', { noremap = true, silent = true }) -- Move to top Split
vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-n><C-w>l', { noremap = true, silent = true }) -- Move to right Split


vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- Search and replace word under cursor
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end) -- Source file
vim.keymap.set("n", "<leader>q", function()
  vim.cmd("q")
end) -- Quit file
