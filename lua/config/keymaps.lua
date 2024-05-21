--local mapkey = require('keymapper').mapkey

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--  Nvim Tree
keymap.set('n', '<leader>f', ':NvimTreeFocus<CR>', opts)
keymap.set('n', '<leader>m', ':NvimTreeToggle<CR>', opts)

-- Pane and Window Navigation
-- mapkey('<C-h>', '<C-w>h', 'n') -- Navigate Left
-- mapkey('<C-j>', '<C-w>j', 'n') -- Navigate Down
-- mapkey('<C-k>', '<C-w>k', 'n') -- Navigate Up
-- mapkey('<C-l>', '<C-w>l', 'n') -- Navigate Right

-- mapkey('<C-h>', 'wincmd h', 't') -- Navigate Left
-- mapkey('<C-j>', 'wincmd j', 't') -- Navigate Down
-- mapkey('<C-k>', 'wincmd k', 't') -- Navigate Up
-- mapkey('<C-l>', 'wincmd l', 't') -- Navigate Right

-- mapkey('<C-h>', 'TmuxNavigateLeft', 'n') -- Navigate Left
-- mapkey('<C-j>', 'TmuxNavigateDown', 'n') -- Navigate Down
-- mapkey('<C-k>', 'TmuxNavigateUp', 'n') -- Navigate Up
-- mapkey('<C-l>', 'TmuxNavigateRight', 'n') -- Navigate Right

-- Window Management
keymap.set('n', '<leader>sv', ':vsplit<CR>', opts) -- Split Vertically
keymap.set('n', '<leader>sh', ':split<CR>', opts)  -- Split Horizontally

-- Indenting
keymap.set('v', '<', '<gv') -- Shift Indentation to Left
keymap.set('v', '>', '>gv') -- Shift Indentation to Right

--  Move highlited lines
keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

keymap.set('n', 'J', 'mzJ`z')

-- Cursor stays in the middle when going half up/down a page
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')

--  Paste without losing current paste register
keymap.set('x', '<leader>p', '"_dP')
keymap.set({ 'n', 'v' }, '<leader>d', '"_d')

--  Replaces word that cursor is on
keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Show Full File-Path
--mapkey('<leader>pa', "echo expand('%:p')", 'n') -- Show Full File Path

--  Other
keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
keymap.set('n', '<leader>Y', '"+y')

keymap.set('i', '<C-c>', '<Esc>')

keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

-- keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
-- keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
-- keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
-- keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')
