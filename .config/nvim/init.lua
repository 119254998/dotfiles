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
Plug('mason-org/mason.nvim') -- language stuff manager (LSPs, DAPs, linters, formatters, etc,.)
Plug('akinsho/toggleterm.nvim', {['tag'] = '*'}) -- terminal that kinda sux lox
Plug('lewis6991/gitsigns.nvim')

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

require('cfg.options')
require('cfg.keymaps')
require('cfg.autocmds')

vim.cmd('colorscheme evergarden')
