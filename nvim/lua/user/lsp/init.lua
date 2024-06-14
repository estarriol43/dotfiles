local platform = vim.loop.os_uname().sysname

if platform ~= "Linux" then
  vim.notify("lspconfig is not support on " .. platform)
  return
end

local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  vim.notify("lspconfig not installed")
  return
end

require("user.lsp.mason")
require("user.lsp.handlers").setup()
