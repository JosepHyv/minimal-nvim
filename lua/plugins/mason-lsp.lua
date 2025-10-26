return {
    {
        "mason-org/mason.nvim",
        config = true,
        ensure_installed = {
            --- LSPs
          "html-lsp",
          "ruff",
          "clangd",
          "typescript-language-server",
          "tailwindcss-language-server",
          "golangci-lint-language-server",
          "lua-language-server",
          "ccs-lsp",
          "pyright",
          "tree-sitter-cli",
          -- formatters
          "black",
          "prettier",
          "stylua",
          "cpplint",
          "luacheck",
          "gopls",
          "golangci-lint",
        },
        opts = {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                },
            },


    },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        opts = {
        },
    }
}
