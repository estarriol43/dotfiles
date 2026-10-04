local M = {
  "estarriol43/tender.vim",
  lazy = false,
  priority = 1000,
}

function M.config()
  vim.cmd.colorscheme "tender"
end

return M
