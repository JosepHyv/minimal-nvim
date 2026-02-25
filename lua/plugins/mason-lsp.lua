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
			},
		},
		config = function(_, opts)
			require("mason-lspconfig").setup(opts)
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"mason-org/mason.nvim",
		},
		config = function()
			local key = vim.keymap
			key.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
			key.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to Declaration" })
			key.set("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
			key.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Information" })
		end,
	},
}
