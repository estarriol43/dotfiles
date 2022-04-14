local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "p", '"_dP', opts)

-- Insert mode --
keymap("i", "<C-c>", "<Esc>", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>f", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>g", ":Telescope live_grep<cr>", opts)

-- ToggleTerm
keymap("n", "<leader>t", ":ToggleTerm<cr>", opts)

-- cscope
keymap("n", "<C-\\>s", [[<cmd>lua cscope_search('s', vim.fn.expand("<cword>"))<cr>]], opts)
keymap("n", "<C-\\>g", [[<cmd>lua cscope_search('g', vim.fn.expand("<cword>"))<cr>]], opts)
keymap("n", "<C-\\>c", [[<cmd>lua cscope_search('c', vim.fn.expand("<cword>"))<cr>]], opts)
keymap("n", "<C-\\>t", [[<cmd>lua cscope_search('t', vim.fn.expand("<cword>"))<cr>]], opts)
keymap("n", "<C-\\>e", [[<cmd>lua cscope_search('e', vim.fn.expand("<cword>"))<cr>]], opts)
keymap("n", "<C-\\>d", [[<cmd>lua cscope_search('d', vim.fn.expand("<cword>"))<cr>]], opts)
keymap("n", "<C-\\>f", [[<cmd>lua cscope_search('f', vim.fn.expand("<cfile>"))<cr>]], opts)
keymap("n", "<C-\\>i", [[<cmd>lua cscope_search('i', vim.fn.expand("<cfile>"))<cr>]], opts)
