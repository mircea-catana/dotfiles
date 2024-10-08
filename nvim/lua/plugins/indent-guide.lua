return
{
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {},

        config = function()
            local config = require("ibl")
            config.setup({
                scope =
                {
                    enabled = false
                },
            })
        end,
    },
}
