-- Map Leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Show line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indenting
vim.opt.smartindent = true
vim.opt.breakindent = true

-- Tab expansion
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Case insensitive search unless using capital letters
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.keymap.set('n', '<leader>sv', '<C-w><C-v>', { desc = "Split Vertical" })
vim.keymap.set('n', '<leader>sh', '<C-w><C-s>', { desc = "Split Horizontal" })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = "Move Left" })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = "Move Down" })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = "Move Up" })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = "Move Right" })

-- Misc
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.swapfile = false
vim.g.have_nerd_font = true
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus'
vim.opt.undofile = true
vim.opt.updatetime = 250
vim.opt.inccommand = 'split'
vim.opt.scrolloff = 10
vim.opt.wrap = false
vim.opt.colorcolumn = '120'

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
