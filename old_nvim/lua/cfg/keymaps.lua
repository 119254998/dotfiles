local function map(m, k, v)
  vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

map('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('i', '<C-\\>', 'λ') -- yummy lambda
map('n', '<Esc>', '<cmd>nohlsearch<CR>') -- clear hl from search, not a toggle
map('t', '<Esc><Esc>', '<C-\\><C-n><CR>:ToggleTerm<CR>')

-- window navigation
map('n', '<A-Left>', '<C-w>h')
map('n', '<A-Down>', '<C-w>j')
map('n', '<A-Up>', '<C-w>k')
map('n', '<A-Right>', '<C-w>l')

-- commented out window navigation since conflicts with hyprland binds
-- map('n', '<A-h>', '<C-w>h')
-- map('n', '<A-j>', '<C-w>j')
-- map('n', '<A-k>', '<C-w>k')
-- map('n', '<A-l>', '<C-w>l')

-- nvim-tree keymaps
map('n', '<leader>e', ':NvimTreeToggle<CR>')
-- map('n', '<leader>ef', ':NvimTreeFocus<CR>')

-- toggleterm keymaps
map('n', '<leader>t', ':ToggleTerm<CR>')

-- barbar keymaps
map('n', '<A-PageUp>', ':BufferPrevious<CR>')
map('n', '<A-PageDown>', ':BufferNext<CR>')
map('n', '<A-S-PageUp>', ':BufferMovePrevious<CR>')
map('n', '<A-S-PageDown>', ':BufferMoveNext<CR>')
map('n', '<A-Tab>', ':BufferPrevious<CR>')
map('n', '<A-S-Tab>', ':BufferNext<CR>')

map('n', '<A-.>', ':BufferClose<CR>')
map('n', '<A-,>',   ':BufferPick<CR>')
map('n', '<A-S-,>', ':BufferPickDelete<CR>')

