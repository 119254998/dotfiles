return {
  enabled = true,
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    animation = false,
    highlight_visible = false,
    auto_hide = 1,
    icons = {
      filetype = {
        enabled = false,
      },
      separator = { left = '▎', right = '' },
      preset = 'default',
      separator_at_end = false,
      modified = { button = '~' },
    },
    sidebar_filetypes = {
      NvimTree = {
        event = 'BufWinLeave',
        text = '',
        align = 'leftt'
      },
     }
  },
}
