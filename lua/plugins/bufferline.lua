return {
    'akinsho/bufferline.nvim', 
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons', 
    event = "VeryLazy", 
    opts = {
        options = {
            mode = "buffers", 
            show_buffer_close_icons = true, 
            always_show_bufferline = false,
            -- separator_style = "thick",
            indicator = {
                icon = "| ",
                style = "underline"
            }, 
            diagnostics_indicator = function(count, level, diagnostics_dict, context)
                return "("..count..")"
            end,
        }
    }
}

