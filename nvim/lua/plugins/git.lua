return
{
    {
        "tpope/vim-fugitive"
    },

    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
            vim.keymap.set("n", "<leader>gl", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Git blame current line" })
            vim.keymap.set("n", "<leader>gb", ":G blame<CR>", { desc = "Git blame" })
        end
    }
}
