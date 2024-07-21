vim.api.nvim_set_keymap('i', '<CR>', [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], { noremap = true, expr = true, silent = true })

-- Additional key mappings for navigating completion menu
vim.api.nvim_set_keymap('i', '<Down>', [[coc#pum#visible() ? coc#pum#next(1) : "\<Down>"]], { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('i', '<Up>', [[coc#pum#visible() ? coc#pum#prev(1) : "\<Up>"]], { noremap = true, expr = true, silent = true })

-- Example configuration for coc.nvim
vim.cmd([[
  " Enable auto-completion
  let g:coc_global_extensions = ['coc-snippets', 'coc-json', 'coc-pyright']

  " Use <c-space> to trigger completion.
  if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
  else
    inoremap <silent><expr> <c-@> coc#refresh()
  endif

  " Use `[g` and `]g` to navigate diagnostics
  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)
]])

vim.g.python3_host_prog = '~/.nvim_env/bin/python' 
