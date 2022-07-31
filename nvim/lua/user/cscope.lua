if io.open("cscope.out", "r") ~= nil then
  vim.opt.cscopetag = true
  vim.opt.cscopeverbose = true
  vim.cmd("cs add cscope.out")
end

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

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
