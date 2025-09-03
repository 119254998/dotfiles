return {
  'everviolet/nvim', name = 'evergarden',
  lazy = false, -- load during startup
  priority = 1000, -- loaded first before any other startup plugins
  config = function(_, opts)
    require([[evergarden]]).setup(opts)
    vim.cmd([[colorscheme evergarden]])
  end,
  opts = {
    theme = {
      variant = 'fall', -- 'winter'|'fall'|'spring'|'summer'
      accent = 'green',
    },
    editor = {
      transparent_background = true,
      override_terminal = true,
      sign = { color = 'none' },
      float = {
        color = 'mantle',
        solid_border = false,
      },
      completion = {
        color = 'surface0',
      },
    },
    style = {
      -- reverse: highlight effect
      -- italic: italic
      -- underdotted: not sure how this works?
      -- bold: bold
      -- see :help evergarden.config.default

      tabline = { 'reverse' },
      search = { 'reverse' }, -- matches but not selected
      incsearch = { 'reverse' }, -- selected match
      types = { 'bold' },
      keyword = { 'bold' },
      comment = { },
    },
  }
}
