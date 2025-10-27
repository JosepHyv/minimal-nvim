return {
	"akinsho/toggleterm.nvim",
	lazy = false,
	version = "*",
	opts = {
		direction = "horizontal",
		open_mapping = [[<c-j>]],
		size = 15,
		start_in_insert = true,
		insert_mappings = true,
		persist_size = true,
		close_on_exit = true,
		shell = vim.o.shell,
	},
}
