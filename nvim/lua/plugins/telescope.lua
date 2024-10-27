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
        tag = "0.1.5",

        dependencies =
        {
            {
                "nvim-lua/plenary.nvim",
            },
        },

        config = function()
            require("telescope").setup({
                extensions =
                {
                    ["ui-select"] =
                    {
                        require("telescope.themes").get_dropdown({}),
                    },

                    fzf =
                    {
                        fuzzy = true,                    -- false will only do exact matching
                        override_generic_sorter = true,  -- override the generic sorter
                        override_file_sorter = true,     -- override the file sorter
                        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
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

            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find in Files" })
            vim.keymap.set("n", "<leader>fa", builtin.live_grep, { desc = "Grep" })
            vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { desc = "Find References" })
            vim.keymap.set("n", "<leader>fd", builtin.lsp_definitions, { desc = "Find Definition" })
            vim.keymap.set("n", "<leader>fi", builtin.lsp_implementations, { desc = "Find Implementations" })
            vim.keymap.set("n", "<leader>fs", builtin.lsp_workspace_symbols, { desc = "Find workspace Symbols" })

            vim.keymap.set("n", "<leader>b", "<cmd>Telescope buffers sort_mru=true initial_mode=normal<cr>", { desc = "Find Buffers" })

            require("telescope").load_extension("ui-select")
            require('telescope').load_extension('fzf')
        end,
    },
}
