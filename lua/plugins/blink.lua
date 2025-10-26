-- some of help https://www.reddit.com/r/neovim/comments/1hk1t35/a_custom_blink_config/
return {
    "saghen/blink.cmp",
    dependencies = {"rafamadriz/friendly-snippets"},
    opts = {
        keymap = {
          preset = "default",
          ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
          ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
          ["<CR>"] = { "accept", "fallback" },
          ["<Esc>"] = { "hide", "fallback" },
          ["<PageUp>"] = { "scroll_documentation_up", "fallback" },
          ["<PageDown>"] = { "scroll_documentation_down", "fallback" },
        },
        appearance = {
          nerd_font_variant = 'mono'
        },

        completion = { documentation = { auto_show = false } },
        -- completion = { list = { selection = "manual" } },

        sources = {
          default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        fuzzy = {implementation = "lua"}  -- in docs you can chose the implementation bw lua and rust
    },
}
