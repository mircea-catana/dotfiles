return
{
    "nvim-lualine/lualine.nvim",

    dependencies =
    {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        require("lualine").setup(
        {
            options =
            {
                theme = "kanagawa",
                sections =
                {
                    lualine_a = { file = 1 },
                },
            },
        })
    end
}
