local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
}

function M.config()
  require("mason").setup {
    ui = {
      border = "rounded",
    },
  }
end

return M
