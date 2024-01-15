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
-- Resize with arrows
keymap("n", "<C-w><Up>", ":resize -2<CR>", opts)
keymap("n", "<C-w><Down>", ":resize +2<CR>", opts)
keymap("n", "<C-w><Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-w><Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "p", '"_dP', opts)

-- Insert mode --
-- Auto-pair
keymap("i", "()", "()<Left>", opts)
keymap("i", '""', '""<Left>', opts)
keymap("i", "''", "''<Left>", opts)
keymap("i", "[]", "[]<Left>", opts)
keymap("i", "{}", "{}<Left>", opts)
keymap("i", "<>", "<><Left>", opts)
keymap("i", "{{", "{<cr><cr>}<Up>", opts)
keymap("i", "()", "()<Left>", opts)
keymap("i", "\\{{", "<Esc>A{<Cr>}<C-o>O", opts)

keymap("i", "\\;", "<C-o>A;", opts)
keymap("i", "<C-c>", "<Esc>", opts)

-- Bufferline --
-- keymap("n", "<leader>b", ":BufferLinePick<CR>", opts)

-- BBye --
keymap("n", "<leader>q", ":Bdelete<CR>", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>f", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>g", ":Telescope live_grep<cr>", opts)
keymap("n", "<leader>s", ":Telescope grep_string<cr>", opts)
keymap("n", "<leader>b", ":Telescope buffers<cr>", opts)

-- ToggleTerm
keymap("n", "<leader>t", ":ToggleTerm<cr>", opts)
