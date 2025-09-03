-- local lualine = require('lualine')

local diagnostics = {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  sections = { "error", "warn" },
  -- symbols = { error = " ", warn = " " },
  symbols = { error = "X:", warn = "!:" },
  colored = true,
  update_in_insert = true,
  always_visible = false,
  cond = function()
    return vim.bo.filetype ~= "markdown"
  end,
}

local diff = {
  "diff",
  colored = false,
  -- symbols = { added = " ", modified = " ", removed = " " },
  symbols = { added = "+", modified = "~", removed = "-" },
}

-- local mode = {
-- 	"mode",
-- 	fmt = function(str)
-- 		return "-- " .. str .. " --"
-- 	end,
-- }

-- local branch = {
-- 	"branch",
-- }

-- local progress = function()
-- 	local current_line = vim.fn.line(".")
-- 	local total_lines = vim.fn.line("$")
-- 	local chars = { "", "", "" } --adding more chars will still work
-- 	local line_ratio = current_line / total_lines
-- 	local index = math.ceil(line_ratio * #chars)
-- 	return chars[index] .. " " .. math.floor(line_ratio * 100) .. "%%"
-- end

require('lualine').setup({
  options = {
    icons_enabled = false,
    -- theme = "auto", --auto allows for theme switching
    -- theme = "modus-vivendi", -- i think this looks better but eh
    theme = "evergarden",

    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {
      "alpha",
      "dashboard"
    },
    always_divide_middle = true,
  },

	-- sections = {
	-- 	lualine_a = { branch },
	-- 	lualine_b = { mode },
	-- 	lualine_c = { diagnostics },
	-- 	lualine_x = { diff, "fileformat", "filetype" },
	-- 	lualine_y = { "location" },
	-- 	lualine_z = { progress },
	-- },

  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {},
    lualine_x = {diagnostics, 'filename'},
    lualine_y = {},
    lualine_z = {'location'}
  },
  extensions = { 'nvim-tree' },
})
