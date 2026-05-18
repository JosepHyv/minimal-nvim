return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
        file_types = {'markdown', 'quatro'},
        completions = { lsp = { enabled = true } },
        render_modes = {'n'},
        latex = { enabled = false },
    },
}
