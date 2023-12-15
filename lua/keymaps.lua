
-- telescope key bindings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<C-d>', '<C-d>zz', {})
vim.keymap.set('n', '<C-u>', '<C-u>zz', {})

-- move lines and hold on to yanked text
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", {})
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", {})
vim.keymap.set("v", "p", '"_dP', opts)

-- custom keymaps
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true })
--vim.keymap.set("n", "<leader>e", ":Lex 30<cr>", { noremap = true, silent = true })
-- window navigation
vim.keymap.set("n", "<leader>wl", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wh", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wv", "<C-w>v", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wh", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wx", ":close<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
