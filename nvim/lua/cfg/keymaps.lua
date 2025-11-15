local vim = vim
local function map(m, k, v, d)
  vim.keymap.set(m, k, v, { noremap = true, silent = true, desc = d })
end

map('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('i', '<C-\\>', 'λ') -- yummy lambda
map('n', '<Esc>', ':nohlsearch<CR>') -- clear hl from search, not a toggle
map('n', '<leader>w', ':w<CR>', 'write current buffer')
map('n', '<leader>q', ':q<CR>', 'quit out of current window')
map({'n', 'v'}, ';', ':')
map('n', '<leader>z', ':update<CR>:source<CR>', 'source current file')

-- lsp binds
map('n', '<leader>lf', vim.lsp.buf.format, 'language format')
map('n', '<leader>lh', vim.lsp.buf.hover, 'info about hovered symbol')
map('n', '<leader>ld', vim.lsp.buf.definition, 'goto definition')
map('n', '<leader>lD', vim.lsp.buf.declaration, 'goto declaration')
map('n', '<leader>li', vim.lsp.buf.implementation, 'list implementations')
map('n', '<leader>lt', vim.lsp.buf.type_definition, 'goto definition of type of symbol')
map('n', '<leader>lr', vim.lsp.buf.references, 'list references')
map('n', '<leader>ls', vim.lsp.buf.signature_help, 'show function signature')
map('n', '<leader>lw', vim.lsp.buf.workspace_symbol, 'search in current workspace')
map('n', '<leader>lo', vim.diagnostic.open_float)
map('n', '<leader>lR', vim.lsp.buf.rename, 'rename all references of a symbol')
map('n', '<leader>lC', vim.lsp.buf.code_action, 'select code action at cursor')

-- window navigation
map('n', '<A-Left>', '<C-w>h', 'window nav left')
map('n', '<A-Down>', '<C-w>j', 'window nav down')
map('n', '<A-Up>', '<C-w>k', 'window nav up')
map('n', '<A-Right>', '<C-w>l', 'window nav right')

-- commented out window navigation since conflicts with hyprland binds
-- map('n', '<A-h>', '<C-w>h')
-- map('n', '<A-j>', '<C-w>j')
-- map('n', '<A-k>', '<C-w>k')
-- map('n', '<A-l>', '<C-w>l')

-- nvim-tree keymaps
map('n', '<leader>e', ':NvimTreeToggle<CR>', 'toggle file tree')

-- term keymaps
-- these work but are kind of jank
-- map('n', '<leader>t', '<C-w>s<C-w>J15<C-w>-:term<CR>')
-- map('t', '<Esc><Esc>', '<C-\\><C-n>')

-- barbar keymaps
map('n', '<A-PageUp>', ':BufferPrevious<CR>', 'previous buffer')
map('n', '<A-PageDown>', ':BufferNext<CR>', 'next buffer')
map('n', '<A-S-PageUp>', ':BufferMovePrevious<CR>', 'move previous buffer')
map('n', '<A-S-PageDown>', ':BufferMoveNext<CR>', 'move next buffer')
map('n', '<A-.>', ':BufferClose<CR>', 'close buffer')
map('n', '<A-,>', ':BufferPick<CR>', 'pick buffer')
map('n', '<A-S-,>', ':BufferPickDelete<CR>', 'pick to delete buffer')
