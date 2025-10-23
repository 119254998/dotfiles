return {
  {
    'AmberLehmann/candyland.nvim',
  },
  {
    'navarasu/onedark.nvim',
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require([[onedark]]).setup({
        style = 'warm',
        transparent = true,
        code_style = {
          comments = 'none',
          keywords = 'bold',
        },
      })
    end,
  },
  {
    'slugbyte/lackluster.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('lackluster').setup({
        tweak_color = {
          lack = '#6e566a',
        },
      })
      -- require('lualine').setup({
      --   options = {
      --     theme = "lackluster",
      --   },
      -- })
      -- vim.cmd.colorscheme('lackluster')
      -- vim.cmd.colorscheme("lackluster-hack")
      -- vim.cmd.colorscheme("lackluster-mint")
    end,
  },
  {
    'everviolet/nvim',
    name = 'evergarden',
    lazy = false, -- load during startup
    priority = 1000, -- loaded first before any other startup plugins
    config = function(_, opts)
      require([[evergarden]]).setup(opts)
      vim.cmd([[colorscheme evergarden]])
    end,
    opts = {
      theme = {
        variant = 'winter', -- 'winter'|'fall'|'spring'|'summer'
        accent = 'purple',
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
        comment = {},
      },
      overrides = {
        Normal = {},
        Keyword = {
          -- fg = '#5c6a72',
          -- bg = '#f3ead3',
        },
      },
    },
  },
}
