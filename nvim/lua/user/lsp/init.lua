local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  vim.notify("lspconfig not installed")
  return
end

require "user.lsp.mason"
require("user.lsp.handlers").setup()
