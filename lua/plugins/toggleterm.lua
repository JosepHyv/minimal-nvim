return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		direction = "float",
		open_mapping = [[<c-\>]],
		hide_numbers = true,
		theme = "sonokai",
		shade_terminals = true,
		shading_factor = 2,
		winbar = {
			enabled = false,
			name_formatter = function(term) --  term: Terminal
				return term.name
			end,
		},
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
