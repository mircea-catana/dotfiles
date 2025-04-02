return
{
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,

    config = function()
        require("kanagawa").setup(
        {
            undercurl = false,
            commentStyle = { italic = false },
            keywordStyle = { italic = false },
            statementStyle = { bold = false },

            overrides = function(color)
                return { ["@lsp.type.comment"] = { link = "Comment" } }
            end,
        })

        vim.cmd.colorscheme "kanagawa"
    end,
}
