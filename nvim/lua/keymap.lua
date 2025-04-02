-- Splits
vim.keymap.set('n', '<leader>sv', '<C-w><C-v>', { desc = "Split Vertical" })
vim.keymap.set('n', '<leader>sh', '<C-w><C-s>', { desc = "Split Horizontal" })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = "Move Left" })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = "Move Down" })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = "Move Up" })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = "Move Right" })

-- Neotree
vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>", { desc = "Open NeoTree" })

-- Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Find in Files" })
vim.keymap.set("n", "<leader>fa", telescope.live_grep, { desc = "Grep" })
vim.keymap.set("n", "<leader>fr", telescope.lsp_references, { desc = "Find References" })
vim.keymap.set("n", "<leader>fd", telescope.lsp_definitions, { desc = "Find Definition" })
vim.keymap.set("n", "<leader>fi", telescope.lsp_implementations, { desc = "Find Implementations" })
vim.keymap.set("n", "<leader>fs", telescope.lsp_workspace_symbols, { desc = "Find workspace Symbols" })
vim.keymap.set("n", "<leader>b", "<cmd>Telescope buffers sort_mru=true initial_mode=normal<cr>", { desc = "Find Buffers" })

-- Multicursor
vim.keymap.set({ "n", "i", "x" }, "<C-m>", "<Cmd>MultipleCursorsAddUp<CR>", { desc = "Add cursor and move up" })
vim.keymap.set({ "n", "i", "x" }, "<C-n>", "<Cmd>MultipleCursorsAddDown<CR>", { desc = "Add cursor and move down" })
---- Multicursor plugin fucks this up...
vim.keymap.del("n", "<CR>")

-- Floating Terminal
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
vim.keymap.set({ "n", "t" }, "<leader>tt", toggle_terminal)

-- Diagnostics
vim.keymap.set("n", "<leader>ll", toggle_diagnostics, { desc = "Toggle buffer diagnostics" })

-- Todo
vim.keymap.set("n", "<leader>to", "<cmd>TodoTelescope initial_mode=normal<cr>", { desc = "Todo List" })


-- Quickfix List
vim.keymap.set("n", "<leader>co", "<cmd>copen<cr>", { desc = "Open Quickfix List" })
vim.keymap.set("n", "<leader>cq", "<cmd>cclose<cr>", { desc = "Close Quickfix List" })
vim.keymap.set("n", "<M-j>", "<cmd>cnext<cr>", { desc = "Quickfix List Next" })
vim.keymap.set("n", "<M-k>", "<cmd>cprev<cr>", { desc = "Quickfix List Previous" })
