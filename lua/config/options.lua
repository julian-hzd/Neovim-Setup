local opt = vim.opt

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Tab / Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Appearance
opt.relativenumber = true
opt.colorcolumn = '100'
-- opt.cmdheight = 1
opt.scrolloff = 8
opt.signcolumn = 'yes'
opt.completeopt = 'menuone,noinsert,noselect'
opt.colorcolumn = '72'
-- opt.termguicolors = true

-- Behaviour
opt.hidden = true
opt.errorbells = false

opt.swapfile = false
opt.backup = false
opt.backup = false
opt.undodir = vim.fn.expand '~/.vim/undodir'
opt.undofile = true

opt.backspace = 'indent,eol,start'
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false
opt.iskeyword:append '-'
opt.mouse:append 'a'
opt.clipboard:append 'unnamedplus'
opt.modifiable = true
opt.encoding = 'UTF-8'

opt.updatetime = 50

-- vim.cmd("set showtabline=2")

