return {
  { 'nvim-mini/mini.icons', version = false,
  config = function(_, opts)
    require([[mini.icons]]).setup(opts)
  end,
  opts = {
    style = 'ascii',

    -- Customize per category. See `:h MiniIcons.config` for details.
    default   = {},
    directory = {},
    extension = {},
    file      = {},
    filetype  = {},
    lsp       = {},
    os        = {},

    -- Control which extensions will be considered during "file" resolution
    use_file_extension = function(ext, file) return true end,
  }
},
{ 'nvim-mini/mini.ai', version = false,
config = function(_, opts)
  require([[mini.ai]]).setup(opts)
end,
  },
  { 'nvim-mini/mini.pairs', version = false,
  config = function(_, opts)
    require([[mini.pairs]]).setup(opts)
  end,
},
{ 'nvim-mini/mini.surround', version = false,
config = function(_, opts)
  require([[mini.surround]]).setup(opts)
end,
  },
}
