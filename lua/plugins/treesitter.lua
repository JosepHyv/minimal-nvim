return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	opts = {
		enable = true,
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
		highlight = { enable = true },
	},
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
        vim.opt.foldmethod = "expr"
        vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
        vim.opt.foldenable = false
    end,
}
