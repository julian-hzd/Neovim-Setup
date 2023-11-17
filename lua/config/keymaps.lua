local keymap = vim.keymap

local opts = { noremap = true, silent = true }

--  Directory Navigation
keymap.set('n', '<leader>f', ':NreeFocus<CR>', opts)
keymap.set('n', '<leader>m', ':NreeToggle<CR>', opts)

-- Pane and Window Navigation
keymap.set('n', '<C-h>', '<C-w>h', opts) -- Navigate Left
keymap.set('n', '<C-j>', '<C-w>j', opts) -- Navigate Down
keymap.set('n', '<C-k>', '<C-w>k', opts) -- Navigate Up
keymap.set('n', '<C-l>', '<C-w>l', opts) -- Navigate Right

-- Window Management
keymap.set('n', '<leader>sv', ':vsplit<CR>', opts) -- Split Vertically
keymap.set('n', '<leader>sh', ':split<CR>', opts) -- Split Horizontally

-- Indenting
keymap.set('v', '<', '<gv') -- Shift Indentation to Left
keymap.set('v', '>', '>gv') -- Shift Indentation to Right

--  Move highlited lines
keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

keymap.set('n', 'J', 'mzJ`z')

-- Cursor stays in the middle
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')

keymap.set('n', 'n', 'nzzzv')
keymap.set('n', 'N', 'Nzzzv')

--  Paste without losing current paste register
keymap.set('x', '<leader>p', '"_dP')
keymap.set({ 'n', 'v' }, '<leader>d', '"_d')

--  Replaces word that cursor is on
keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

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
