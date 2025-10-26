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
		-- vim.cmd([[highlight LineNr guifg=#999999]])
		vim.cmd([[highlight CursorLineNr guifg=#fafa07 gui=bold]])
	end,
}
