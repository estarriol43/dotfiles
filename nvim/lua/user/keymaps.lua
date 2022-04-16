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

-- ToggleTerm
keymap("n", "<leader>t", ":ToggleTerm<cr>", opts)

-- cscope
keymap("n", "<C-\\>s", ':cs find s <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>g", ':cs find g <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>c", ':cs find c <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>t", ':cs find t <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>e", ':cs find e <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>d", ':cs find d <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>f", ':cs find f <C-R>=expand("<cfile>")<CR><CR>', opts)
keymap("n", "<C-\\>i", ':cs find i ^<C-R>=expand("<cfile>")<CR><CR>', opts)

keymap("n", "<C-\\>hs", ':scs find s <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>hg", ':scs find g <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>hc", ':scs find c <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>ht", ':scs find t <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>he", ':scs find e <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>hd", ':scs find d <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>hf", ':scs find f <C-R>=expand("<cfile>")<CR><CR>', opts)
keymap("n", "<C-\\>hi", ':scs find i ^<C-R>=expand("<cfile>")<CR><CR>', opts)

keymap("n", "<C-\\>vs", ':vert scs find s <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>vg", ':vert scs find g <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>vc", ':vert scs find c <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>vt", ':vert scs find t <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>ve", ':vert scs find e <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>vd", ':vert scs find d <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>vf", ':vert scs find f <C-R>=expand("<cfile>")<CR><CR>', opts)
keymap("n", "<C-\\>vi", ':vert scs find i ^<C-R>=expand("<cfile>")<CR><CR>', opts)

keymap("n", "<C-\\>ts", ':tab scs find s <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>tg", ':tab scs find g <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>tc", ':tab scs find c <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>tt", ':tab scs find t <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>te", ':tab scs find e <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>td", ':tab scs find d <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>tf", ':tab scs find f <C-R>=expand("<cfile>")<CR><CR>', opts)
keymap("n", "<C-\\>ti", ':tab scs find i ^<C-R>=expand("<cfile>")<CR><CR>', opts)
