return {
	"catppuccin/nvim",
    name="catppuccin-mocha",
	lazy = false,
	priority = 1000,
    background={
        dark="mocha"
    },
    term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
      lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
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
    config = function()
        vim.cmd.colorscheme("catppuccin")
    end



}
