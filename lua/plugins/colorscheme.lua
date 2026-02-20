-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	priority = 1000,
-- 	terminal_colors = true, -- add neovim terminal colors
-- 	undercurl = true,
-- 	underline = true,
-- 	bold = true,
-- 	italic = {
-- 		strings = true,
-- 		emphasis = true,
-- 		comments = true,
-- 		operators = false,
-- 		folds = true,
-- 	},
-- 	strikethrough = true,
-- 	invert_selection = false,
-- 	invert_signs = false,
-- 	invert_tabline = false,
-- 	inverse = true, -- invert background for search, diffs, statuslines and errors
-- 	contrast = "", -- can be "hard", "soft" or empty string
-- 	palette_overrides = {},
-- 	overrides = {},
-- 	dim_inactive = false,
-- 	transparent_mode = false,
-- 	lazy = false,
-- 	config = function()
-- 		vim.g.lightline = "gruvbox"
-- 		vim.cmd.colorscheme("gruvbox")
-- 		-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
-- 		vim.cmd([[highlight LineNr guifg=#999999]])
-- 		vim.cmd([[highlight CursorLineNr guifg=#fafa07 gui=bold]])
-- 	end,
-- }
return {
	"sainnhe/sonokai",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.sonokai_transparent_background = "2"
		vim.g.sonokai_enable_italic = "1"
		vim.g.sonokai_menu_selection_background = "red"
		vim.g.sonokai_style = "andromeda"
		vim.g.sonokai_better_performance = 1
		vim.g.lightline = "sonokai"
		vim.cmd.colorscheme("sonokai")

		-- vim.cmd([[highlight LineNr guifg=#999999]])
		vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
		vim.cmd([[highlight LineNr guifg=#999999]])
		vim.cmd([[highlight CursorLineNr guifg=#fafa07 gui=bold]])
	end,
}
