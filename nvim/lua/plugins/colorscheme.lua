return
{
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,

        config = function()
            --vim.cmd.colorscheme "catppuccin-mocha"
        end
    },

    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        name = "kanagawa",
        priority = 1000,

        config = function()
            require("kanagawa").setup({
                undercurl = false,
                commentStyle = { italic = false },
                keywordStyle = { italic = false },
                statementStyle = { bold = false },
                overrides = function(color)
                    return {
                        ["@lsp.type.comment"] = { link = "Comment" },
                    }
                end,
            })

            vim.cmd.colorscheme "kanagawa"
        end
    }

}
