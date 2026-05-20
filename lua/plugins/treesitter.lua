return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"c",
			"lua",
			"vim",
			"vimdoc",
			"query",
			"markdown",
			"markdown_inline",
			"go",
			"javascript",
			"typescript",
			"rust",
			"python",
			"cmake",
			"cpp",
			"css",
			"csv",
		},
		sync_install = true,
		auto_install = true,
		indent = {
			enable = true,
		},
		highlight = {
			enable = true
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.config").setup(opts)
		vim.opt.foldmethod = "expr"
		vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- Modernized TS folding API
		vim.opt.foldenable = false
	end,
}

