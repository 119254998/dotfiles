return {
  'nvim-treesitter/nvim-treesitter',
  init = function(plugin)
    -- require('lazy.core.loader').add_to_rtp(plugin)
    vim.g.ts_install = {
      'bash',
      'c',
      'diff',
      'html',
      'javascript',
      'jsdoc',
      'json',
      'lua',
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
    local ts_install = vim.g.ts_install or {}
    local ts_filetypes = vim
      .iter(ts_install)
      :map(function(lang)
        return vim.treesitter.language.get_filetypes(lang)
      end)
      :flatten()
      :totable()
    require('nvim-treesitter').install(ts_install)
    vim.api.nvim_create_autocmd('FileType', {
      pattern = ts_filetypes,
      callback = function(e)
        vim.treesitter.start(e.buf)
      end,
    })
  end,
  build = ':TSUpdate',
  lazy = false,
}
