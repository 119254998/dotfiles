return {
  'rachartier/tiny-inline-diagnostic.nvim',
  priority = 1000,
  enabled = true,
  opts = {
    preset = 'minimal',
  },
  config = function(_, opts)
    require('tiny-inline-diagnostic').setup(opts)
    vim.diagnostic.config({
      virtual_text = false,
      severity_sort = true,
      update_in_insert = true,
      float = {
        header = '',
        prefix = '',
      },
    })
  end,
}
