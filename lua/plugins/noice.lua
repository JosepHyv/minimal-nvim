return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
    },
  opts = {
    -- add any options here
    enter = true, 
  },
  presets = {
    bottom_search = false, 
    command_palette = true, 
    long_message_to_split = true, 
    inc_rename = false 
  }

}
