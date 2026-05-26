return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local parsers = {
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
		}

		require("nvim-treesitter").setup {
			install_dir = vim.fn.stdpath("data") .. "/site",
		}

		require("nvim-treesitter").install(parsers)

		vim.api.nvim_create_autocmd("FileType", {
			pattern = "*",
			callback = function()
				pcall(vim.treesitter.start)
				pcall(function()
					vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end)
			end,
		})

		vim.opt.foldmethod = "expr"
		vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
		vim.opt.foldenable = false
	end,
}

