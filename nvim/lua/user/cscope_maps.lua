local status_ok, cscope_maps = pcall(require, "cscope_maps")
if not status_ok then
  vim.notify("cscope_maps not install")
  return
end

cscope_maps.setup {
  cscope = {
    picker = "telescope",
  }
}

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<C-\\>s", ':Cscope find s <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>g", ':Cscope find g <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>c", ':Cscope find c <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>t", ':Cscope find t <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>e", ':Cscope find e <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>d", ':Cscope find d <C-R>=expand("<cword>")<CR><CR>', opts)
keymap("n", "<C-\\>f", ':Cscope find f <C-R>=expand("<cfile>")<CR><CR>', opts)
keymap("n", "<C-\\>i", ':Cscope find i ^<C-R>=expand("<cfile>")<CR><CR>', opts)
