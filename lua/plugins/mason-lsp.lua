return {
	{
		"mason-org/mason.nvim",
		config = true,
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = {
				"html",
				"ruff",
				"gopls",
				"clangd",
				"ts_ls",
				"tailwindcss",
				"lua_ls",
				"cssls",
				"pyright",
				"tree-sitter-cli",
				"stylua",
			},
			html = {},
			ruff = {},
			gopls = {},
			clangd = {},
			ts_ls = {},
			tailwindcss = {},
			pyright = {},
		},
	},
}
