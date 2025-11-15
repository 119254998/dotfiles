return {
  'whonore/Coqtail',
  config = function()
    vim.lsp.enable("coq_lsp")
    vim.g.coqtail_noimap = 1
  end
}
