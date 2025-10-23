return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    modified = { enable = true },
    view = {
      signcolumn = 'no',
    },
    renderer = {
      indent_width = 2,
      icons = {
        show = { hidden = true },
        git_placement = 'after',
        bookmarks_placement = 'after',
        symlink_arrow = ' -> ',
        glyphs = {
          default = 'F',
          symlink = 'S',
          bookmark = 'B',
          modified = '~',
          hidden = 'H',
          folder = {
            arrow_closed = '',
            arrow_open = '',
            default = '',
            open = '',
            empty = '',
            empty_open = '',
            symlink = '',
            symlink_open = '',
          },
          git = {
            unstaged = '+',
            staged = '',
            unmerged = '#',
            renamed = '*',
            untracked = '!',
            deleted = '-',
            ignored = 'I',
           }
        },
      },
    },
    filters = { git_ignored = false },
    sync_root_with_cwd = true

  },
  config = function(_, opts)
    require('nvim-tree').setup(opts)
    -- disable netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
}
