local status_ok, nvimtree  = pcall(require, "nvim-tree")
if not status_ok then
  vim.notify("nvim-tree not installed")
  return
end

nvimtree.setup {}
