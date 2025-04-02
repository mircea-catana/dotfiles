return
{
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },

    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
    },

    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",

        dependencies =
        {
            "nvim-lua/plenary.nvim",
        },

        config = function()
            local config = require("telescope")
            config.setup({
                extensions =
                {
                    ["ui-select"] =
                    {
                        require("telescope.themes").get_dropdown({}),
                    },

                    fzf =
                    {
                        fuzzy = true,
                        override_generic_sorter = true,
                        override_file_sorter = true,
                        case_mode = "smart_case",
                    }
                },

                defaults =
                {
                    mappings =
                    {
                        n =
                        {
                            ["d"] = require("telescope.actions").delete_buffer,
                            ["q"] = require("telescope.actions").close,
                        },
                    },
                },
            })

            config.load_extension("ui-select")
            config.load_extension('fzf')
        end,
    },
}
