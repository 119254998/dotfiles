vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim.opt.termguicolors = true

require('nvim-tree').setup({
  view = {
    width = 26,
  },

  renderer = {
    icons = {
      web_devicons = {
        file = {
          enable = false,
          color = false,
        },
        folder = {
          enable = false,
          color = false,
        },
      },
      symlink_arrow = " -> ",
      show = {
        file = false,
        folder = false,
        folder_arrow = true,
        git = false,
        modified = true,
        hidden = false,
        diagnostics = true,
        bookmarks = true,
      },
      glyphs = {
        -- default = "",
        -- symlink = "",
        -- bookmark = "󰆤",
        -- modified = "●",
        -- hidden = "󰜌",
        -- folder = {
          --   arrow_closed = "",
          --   arrow_open = "",
          --   default = "",
          --   open = "",
          --   empty = "",
          --   empty_open = "",
          --   symlink = "",
          --   symlink_open = "",
          -- },
          git = {
            unstaged = "x",
            staged = "!",
            unmerged = "#",
            renamed = "*",
            untracked = "+",
            deleted = "-",
            ignored = "_",
          },
        },
      },
    },
  })
