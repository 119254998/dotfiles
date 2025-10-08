return {
  'neovim/nvim-lspconfig',
  lazy = false,
  enabled = false,
  dependencies = {
    { 'mason-org/mason.nvim',
      dependencies = {
        { 'mason-org/mason-lspconfig.nvim', opts = {} },
        { 'WhoIsSethDaniel/mason-tool-installer.nvim',
          opts = {
          ensure_installed = {
            -- you can pin a tool to a particular version
            -- { 'golangci-lint', version = 'v1.47.0' },
            { 'bash-language-server', auto_update = true },
            'lua-language-server',
            'vim-language-server',
            'stylua',
            'shellcheck',
            'editorconfig-checker',
            'luacheck',
            'shfmt',
            'vint',
            'rust-analyzer',
            'coq-lsp',
            'tinymist' },
          auto_update = true,
          run_on_start = true,
          start_delay = 3000, -- 3 second delay
          debounce_hours = 5, -- at least 5 hours between attempts to install/update
          integrations = {
            ['mason-lspconfig'] = true,
            ['mason-null-ls'] = false,
            ['mason-nvim-dap'] = false,
          },
        },
      }
    },
      opts = {
        ui = {
          icons = {
            package_installed = "o",
            package_pending = "?",
            package_uninstalled = "x"
          }
        },
        ensure_installed = { 'tinymist', 'coq_lsp'},
      },

      config = function(_, opts)
        require('mason').setup(opts)
        require('mason-lspconfig').setup({ automatic_enable = true })
      end
    },
    { 'j-hui/fidget.nvim', opts = {} },
    'saghen/blink.cmp', -- (;
  },

  opts = {

  },
  config = function()
  end
}
