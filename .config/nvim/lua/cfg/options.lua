local options = {
  showmode = false, -- lualine handles
  showcmd = false,  -- flashing text in bottom right
  wrap = true, -- default
  breakindent = true, -- wrapped lines preserve indentation
  clipboard = 'unnamedplus', -- clipboard and system sync
  undofile = true, -- writes undos to file
  cursorline = true, -- highlights line with cursor
  ttyfast = true, -- scroll fast! (i think)
  smoothscroll = true,
  ignorecase = true, -- searches look for upper & lower case
  smartcase = true, -- if search query has caps, become cap sensitive
  timeoutlen = 300, -- helps for which-key duration
  inccommand = 'nosplit', -- live substitution of %s/abc/xyz/g
  scrolloff = 10, -- how many lines until forced to scroll
  hlsearch = true, -- show hl on all things matching search

  number = true, -- show number
  relativenumber = true, -- yeah
  numberwidth = 2, -- width of number, excluding scl
  signcolumn = 'yes', -- scl, apparently should always be on

  smarttab = true, -- tabs in insert go to next indent, confusing?
  tabstop = 2, -- tab width visuals
  softtabstop = 0, -- mixes tabs and spaces when not zero so big nono
  shiftwidth = 2, -- size of indent
  expandtab = true, -- use spaces instead of tabs in insert
  autoindent = false, -- i don't know what this does
  cindent = true, -- ditto

  list = true,
  listchars = { tab = '» ', trail = '·', nbsp = '␣' }
}

for option, value in pairs(options) do
  vim.opt[option] = value
end
