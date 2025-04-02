return
{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",

    dependencies =
    {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },

    opts =
    {
        event_handlers =
        {
            {
                event = "file_opened",
                handler = function(file_path)
                    require("neo-tree.command").execute({ action = "close" })
                end
            },
        },

        window =
        {
            mappings =
            {
                ["<space>"] = { "toggle_node", nowait = true },
                ["l"] = { "toggle_node", nowait = true },
                ["h"] = { "toggle_node", nowait = true },
            },
        },
    },
}
