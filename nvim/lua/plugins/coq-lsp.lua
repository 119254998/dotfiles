return {
  'tomtomjhj/coq-lsp.nvim',
  enabled = false,
  opts = {

  },

  config = function()
  vim.g.loaded_coqtail = 1
  -- vim.g.coqtail#supported = 0
  require("coq-lsp").setup()
  end
}
