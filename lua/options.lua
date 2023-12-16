-- sjketting nvironment
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.wrap = false

-- vim.opt.scrolloff = 10

vim.opt.splitbelow = true
vim.opt.splitright = true

-- set leader key
vim.g.mapleader = " "

-- share clipboard with system
vim.opt.clipboard:append("unnamedplus")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- set virtual edit in visual block mode
vim.opt.virtualedit = "block"

-- set preview of substitution to a split window
-- vim.opt.inccommand = "split"

-- set ignore case (for autocomplere commands ecc..
vim.opt.ignorecase = true

vim.opt.termguicolors = true
