return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local nvim_tree = require("nvim-tree")
		local api = require("nvim-tree.api")

		-- vim.cmd([[
		--           :hi      NvimTreeExecFile    guifg=#ffa0a0
		--           :hi      NvimTreeSpecialFile guifg=#ff80ff gui=underline
		--           :hi      NvimTreeSymlink     guifg=Yellow  gui=italic
		--           :hi link NvimTreeImageFile   Title
		--     ]])
		nvim_tree.setup({
			update_cwd = true,
			respect_buf_cwd = true,
			hijack_directories = { enable = false },
			actions = {
				change_dir = { restrict_above_cwd = true },
			},
			view = {
				cursorline = true,
				centralize_selection = false,
				side = "left",
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		})
	end,
}
