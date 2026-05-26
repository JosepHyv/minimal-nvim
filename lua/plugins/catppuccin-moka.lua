return {
	"catppuccin/nvim",
    name = "catppuccin",
	lazy = false,
	priority = 1000,
    opts = {
        flavour = "mocha",
        term_colors = true,
        lsp_styles = {
            virtual_text = {
                errors = { "italic" },
                hints = { "italic" },
                warnings = { "italic" },
                information = { "italic" },
                ok = { "italic" },
            },
            underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
                information = { "underline" },
                ok = { "underline" },
            },
            inlay_hints = {
                background = true,
            },
        },
        integrations = {
            lualine = true,
            nvimtree = true,
            notify = true,
            treesitter = true,
        },
    },
    config = function(_, opts)
        require("catppuccin").setup(opts)
        vim.cmd.colorscheme("catppuccin")
    end,
}
