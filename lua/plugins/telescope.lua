return {
    "nvim-telescope/telescope.nvim", 
     dependencies = { 'nvim-lua/plenary.nvim' }, 
     keys = {
        {"<leader> ", "<cmd>Telescope find_files<cr>", desc = "Find Files"},
        {"<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Grep String in files with live preview"},
        {"<leader>,", "<cmd>Telescope buffers<cr>", desc = "Grep String in files with live preview"},
        {"<leader>s", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Show document symbols"},
     }
}
