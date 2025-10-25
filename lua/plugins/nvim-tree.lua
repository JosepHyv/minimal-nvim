return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
      local nvim_tree = require("nvim-tree")
	  local api = require("nvim-tree.api")

      
      nvim_tree.setup {
        update_cwd = true,
			respect_buf_cwd = true,
			hijack_directories = { enable = false },
			actions = {
				change_dir = { restrict_above_cwd = true },
			},
            view = {
                -- width = 30,
                side = "right",
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
    }
  end,
}
