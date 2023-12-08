vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
map("n", "<C-h>", "<C-w>h", { noremap = true, silent = false })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = false })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = false })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = false })
map("n", "<C-s>", ":w!<CR>", { noremap = true, silent = false })
map("i", "<C-s>", "<ESC>:w!<CR>", { noremap = true, silent = false })
map("v", "<C-s>", "<ESC>:w!<CR>", { noremap = true, silent = false })
map("n", "<C-q>", ":bdelete!<CR>", { noremap = true, silent = false })
map("i", "jk", "<ESC>", { noremap = true, silent = false })
map("i", "kj", "<ESC>", { noremap = true, silent = false })
map("v", "<", "<gv", { noremap = true, silent = false })
map("v", ">", ">gv", { noremap = true, silent = false })
map(
	"n",
	"<C-u>",
	"<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>",
	{ noremap = true, silent = true }
)
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", { noremap = true, silent = true })
