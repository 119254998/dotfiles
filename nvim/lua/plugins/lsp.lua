return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'mason-org/mason.nvim',
    'mason-org/mason-lspconfig.nvim',
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup({
      -- automatic_enable = {
      --   exclude = { 'rust_analyzer' },
      -- },
    })

    -- vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
  end,
}
