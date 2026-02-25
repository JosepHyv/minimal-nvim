return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		direction = "float",
		open_mapping = [[<leader>j]],
		hide_numbers = true,
		theme = "sonokai",
		shade_terminals = true,
		shading_factor = 2,
		float_opts = {
			border = "curved",
			title_pos = "center",
			highlights = {
				border = "Normal",
				background = "Normal",
			},
		},
	},
}
