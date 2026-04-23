return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		direction = "float",
		open_mapping = [[<c-\>]],
		hide_numbers = true,
        persist_size = true,
		terminal_mappings = true,
		theme = "sonokai",
		shade_terminals = true,
		shading_factor = 2,
        -- size = 70,
		float_opts = {
			border = "curved",
			title_pos = "center",
			highlights = {
				border = "Normal",
				background = "Normal",
			},
		},
	},
	config = function(_, opts)
		require("toggleterm").setup(opts)

		function _G.set_terminal_keymaps()
			local term_opts = { buffer = 0 }
			vim.keymap.set("t", "<c-w>", [[<C-\><C-n>]], term_opts)
			-- vim.keymap.set("t", "<c-h>", [[<Cmd>wincmd h<CR>]], term_opts)
			-- vim.keymap.set("t", "<c-j>", [[<Cmd>wincmd j<CR>]], term_opts)
			-- vim.keymap.set("t", "<c-k>", [[<Cmd>wincmd k<CR>]], term_opts)
			-- vim.keymap.set("t", "<c-l>", [[<Cmd>wincmd l<CR>]], term_opts)
		end

		vim.cmd("autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()")
	end,
}
