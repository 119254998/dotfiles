require('barbar').setup({
  animation = false,
  highlight_visible = false,
  auto_hide = 1,
  icons = {
    filetype = {
      enabled = false,
    },
    separator = {left = '▎', right = ''},
    preset = 'default',
    separator_at_end = false,
    modified = {button = '~'},
  },
  sidebar_filetypes = {
    NeoTree = {
      event = 'BufWinLeave',
      text = '',
      align = 'left'
    },
  }
})
