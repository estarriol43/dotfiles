local status_ok, gitsigns  = pcall(require, "gitsigns")
if not status_ok then
  vim.notify("gitsigns not installed")
  return
end

gitsigns.setup {}


