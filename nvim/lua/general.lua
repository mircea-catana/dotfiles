-- Map Leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Show line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indenting
vim.opt.smartindent = true -- conflicts with treesitter
vim.opt.breakindent = true -- conflicts with treesitter

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
--vim.opt.shell = "bash.exe -i -l"
vim.opt.shell = "powershell.exe"

-- Sign Icons
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Diagnostics
toggle_diagnostics = function()
    vim.diagnostic.enable(not vim.diagnostic.is_enabled({ bufnr = 0 }), { bufnr = 0 })
end

