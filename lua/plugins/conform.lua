return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
			sh = { "shfmt" },

			go = { "gofumpt", "goimports", "golines" },
			c = { "clang-format" },
			cpp = { "clang-format" },

			html = { "prettier" },
			javascript = { "prettier" },
			typescript = { "prettier" },

			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },

			["*"] = { "trim_whitespace" }, -- clean white spaces at the end
		},

		formatters = {
			["clang-format"] = {
				args = { "-style=Google" },
			},
		},
	},

	config = function(_, opts)
		require("conform").setup(opts)
		vim.api.nvim_create_autocmd({ "BufWritePre" }, {
			pattern = { "*" },
			callback = function(args)
				require("conform").format({
					bufnr = args.buf,
					timeout_ms = 500,
					lsp_format = "fallback",
					async = true,
				})
			end,
		})
	end,
}
