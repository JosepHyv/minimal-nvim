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

		nvim_tree.setup({
			update_cwd = true,
			respect_buf_cwd = true,
			hijack_directories = { enable = false },
			actions = {
				change_dir = { restrict_above_cwd = true },
			},
			git = {
				ignore = false,
				enable = true,
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
				dotfiles = false,
			},
		})
	end,
}
