return
{
    {
        "williamboman/mason.nvim",
        lazy = false,

        opts =
        {
            ensure_installed = { "clangd" }
        },

        config = function()
            require("mason").setup()
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,

        opts =
        {
            auto_install = false,
        },

        config = function()
            require("mason-lspconfig").setup()
        end,
    },

    {
        "neovim/nvim-lspconfig",
        lazy = false,
            
        opts =
        {
            servers =
            {
                clangd =
                {
                    keys =
                    {
                        { "<leader>ch", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header" },
                    },

                    root_dir = function(fname)
                        return require("lspconfig.util").root_pattern(
                            "Makefile",
                            "configure.ac",
                            "configure.in",
                            "config.h.in",
                            "meson.build",
                            "meson_options.txt",
                            "build.ninja")(fname)
                        or require("lspconfig.util").root_pattern("compile_commands.json", "compile_flags.txt")(fname)
                        or require("lspconfig.util").find_git_ancestor(fname)
                    end,

                    cmd =
                    {
                        "clangd",
                        "--background-index",
                        "--clang-tidy",
                        "--header-insertion=iwyu",
                        "--completion-style=detailed",
                        "--function-arg-placeholders",
                        "--fallback-style=llvm",
                    },

                    init_options =
                    {
                        usePlaceholders = true,
                        completeUnimported = true,
                        clangdFileStatus = true,
                    },
                },
            },
        },

        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            capabilities.offsetEncoding = { "utf-16" }

            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup({
                capabilities = capabilities
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Peek Definition" })
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition({ reuse_win = true }) end, { desc = "Go To Definition" })
            vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go To References" })
            vim.keymap.set("n", "ga", vim.lsp.buf.code_action, { desc = "Code Actions" })
        end,
    },

    {
        "nvimtools/none-ls.nvim",
        config = function()
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.clang_format,
                    -- null_ls.builtins.diagnostics.cppcheck,
                },
            })

            vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format code" })
        end,
    },
}
