return {
  'HakonHarnes/img-clip.nvim',
  enabled = false,
  event = 'VeryLazy',
  opts = {
    dir_path = 'img',
  },
  keys = {
    { '<leader>pi', '<cmd>PasteImage<cr>', desc = 'Paste image from system clipboard' },
  },
}
