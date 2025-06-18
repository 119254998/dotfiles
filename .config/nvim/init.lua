local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('nvim-lualine/lualine.nvim') -- statusline
Plug('everviolet/nvim', { ['as'] = 'evergarden'}) -- theme
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate'}) -- treeshitter
Plug('nvim-tree/nvim-tree.lua') -- explorer
Plug('folke/which-key.nvim') -- show binds
Plug('numToStr/Comment.nvim') -- comment
Plug('romgrk/barbar.nvim') -- buffer bar
Plug('echasnovski/mini.ai') -- better text objects
Plug('echasnovski/mini.pairs') -- (), [], {}!
Plug('echasnovski/mini.surround') -- add/replace/delete surrounding stuff
Plug('mason-org/mason.nvim') -- language stuff manager (LSPs, linters, formatters, etc,.)
Plug('akinsho/toggleterm.nvim', {['tag'] = '*'}) -- terminal that kinda sux lox
Plug('lewis6991/gitsigns.nvim') -- git signs in sign column !
Plug('folke/todo-comments.nvim') -- fancy reverse highlighting on todos, etc,.
Plug('neovim/nvim-lspconfig') -- yep!
Plug('mason-org/mason-lspconfig.nvim') -- mason uses lspconfig names
Plug('WhoIsSethDaniel/mason-tool-installer.nvim') -- automates mason stuff
Plug('j-hui/fidget.nvim') -- nvim notification ui/lsp progress messages

vim.call('plug#end')

require('plugins.lualine')
require('plugins.evergarden')
require('plugins.treesitter')
require('plugins.which-key')
require('plugins.comment')
require('plugins.nvim-tree')
require('plugins.barbar')
require('plugins.mini')
require('plugins.mason')
require('plugins.toggleterm')
require('plugins.gitsigns')
require('plugins.todo-comments')
require('plugins.mason-lspconfig')
require('plugins.mason-tool-installer')
require('plugins.fidget')

require('cfg.options')
require('cfg.keymaps')
require('cfg.autocmds')

vim.cmd('colorscheme evergarden')
