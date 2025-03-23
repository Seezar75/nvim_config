-- Telescope key bindings
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescome find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find in Buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find in Help tags" })
vim.keymap.set("n", "<leader>ft", builtin.builtin, { desc = "Find in Telescope Builtin" })
vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "Find Resume" })
vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Find Keymaps" })

vim.keymap.set("n", "<leader>cf", function()
	require("conform").format({
		lsp_format = "fallback",
	})
end, { desc = "Format current file" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})

-- move lines and hold on to yanked text
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", {})
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", {})
vim.keymap.set("v", "p", '"_dP', {})

-- exit insert mode with jk
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true })

--vim.keymap.set("n", "<leader>e", ":Lex 30<cr>", { noremap = true, silent = true })

-- window navigation
vim.keymap.set("n", "<leader>wl", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wh", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wv", "<C-w>v", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wh", "<C-w>s", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wx", ":close<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- terminal navigation
-- vim.keymap.set("n", "<leader>t", ":split term://bash<CR>i", { noremap = true, silent = true })
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k", { noremap = true, silent = true })
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j", { noremap = true, silent = true })
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h", { noremap = true, silent = true })
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l", { noremap = true, silent = true })
vim.keymap.set("t", "<C-Up>", "<cmd>resize +2<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<C-Down>", "<cmd>resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })
