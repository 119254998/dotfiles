return {
  "rachartier/tiny-inline-diagnostic.nvim",
  opts = {
    preset = 'minimal',
  },
  config = function()
    vim.diagnostic.config({virtual_text = false})
  end
}
