return {
    {
        "mason-org/mason.nvim",
        config = true,
        ensure_installed = {
            --- LSPs
          "html-lsp",
          "ruff",
          "gopls",
          "clangd",
          "typescript-language-server",
          "tailwindcss-language-server",
          "lua-language-server",
          "ccs-lsp",
          "pyright",
          "tree-sitter-cli",
          -- formatters
          "black",
          "prettier",
          "prettierd",
          "stylua",
          "clang-format",
          "luacheck",
          "golines",
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
