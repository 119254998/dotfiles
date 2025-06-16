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
