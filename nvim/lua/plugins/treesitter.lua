return {
  'nvim-treesitter/nvim-treesitter',
  init = function(plugin)
    require('lazy.core.loader').add_to_rtp(plugin)
    vim.api.nvim_create_autocmd('FileType', {
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
    local ensure_installed = {
      'bash',
      'c',
      'diff',
      'html',
      'javascript',
      'jsdoc',
      'json',
      'jsonc',
      'lua',
      'luadoc',
      'luap',
      'markdown',
      'markdown_inline',
      'printf',
      'python',
      'query',
      'regex',
      'toml',
      'tsx',
      'typescript',
      'vim',
      'vimdoc',
      'xml',
      'yaml',
      'rust',
    }
    local installed = require('nvim-treesitter.config').get_installed()
    local parsers = vim
      .iter(ensure_installed)
      :filter(function(parser)
        return not vim.tbl_contains(installed, parser)
      end)
      :totable()
    require('nvim-treesitter').install(parsers)
  end,
  build = ':TSUpdate',
  lazy = false,
}
