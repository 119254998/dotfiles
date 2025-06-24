require('nvim-treesitter.configs').setup({
  -- textobjects = {
  --   select = {
  --     enable = false,
  --   }
  -- },
  ensure_installed = { "bash", "c", "css", "cpp", "go", "html", "java", "javascript", "json", "lua", "markdown", "markdown_inline", "python", "rust", "tsx", "typescript", "ocaml", "racket"},
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  }
})
