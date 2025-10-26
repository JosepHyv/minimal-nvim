return {
	"rachartier/tiny-inline-diagnostic.nvim",
	event = "VeryLazy",
	priority = 1000,
	config = function()
		require("tiny-inline-diagnostic").setup({
			preset = "ghost",
			-- transparent_bg = true,
			transparent_cursor_line = true,
			use_icons_from_diagnostic = true,
			show_all_diags_on_cursorline = false,
		})
		vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
	end,
}
