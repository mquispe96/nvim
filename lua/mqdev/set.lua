vim.opt.guicursor = "a:ver25-CursorInsert"

-- Line numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation settings
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.softtabstop = 2

-- Mouse support
vim.opt.mouse = 'a'

-- Backspace behavior
vim.opt.backspace = { 'indent', 'eol', 'start' }

-- Window splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Search settings
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

-- File type
vim.opt.filetype = 'pgsql'

-- UI settings
vim.opt.title = true
vim.opt.syntax = 'on'
vim.opt.cursorline = true

-- Disable backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.o.clipboard = "unnamedplus"
