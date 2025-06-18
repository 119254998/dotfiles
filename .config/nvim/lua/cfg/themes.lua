require('evergarden').setup({
  theme = {
    variant = 'fall', -- 'winter'|'fall'|'spring'|'summer'
    accent = 'green', -- no idea what this actually does?
  },
  editor = {
    transparent_background = true,
    override_terminal = true,
    sign = { color = 'none' },
    float = {
      color = 'mantle',
      invert_border = false,
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
    comment = {},
  },
  overrides = {},
  color_overrides = {},
})

require('everforest').setup({
  background = 'hard',
  transparent_background_level = 3, -- i think 2 is the max, but it allows 3
  italics = false,
  disable_italic_comments = true,
  ui_contrast = 'high',
  -- vim.cmd(":lua require'lualine'.setup {options = {theme = 'everforest'}}")
})
