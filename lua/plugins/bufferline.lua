return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	event = "VeryLazy",
	opts = {
		options = {
			padding = 1,
			mode = "buffers",
			show_buffer_close_icons = true,
			always_show_bufferline = false,
			separator_style = "slant",
			-- indicator = {
			-- 	icon = "| ",
			-- 	style = "underline",
			-- },
			diagnostics_indicator = function(count, level)
				local icon = level:match("error") and " " or " "
				return " " .. icon .. count
			end,
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					text_align = "center",
					separator = true,
				}
			},
			-- diagnostics_indicator = function(count, level, diagnostics_dict, context)
			-- 	return "(" .. count .. ")"
			-- end,
		},
	},
}
