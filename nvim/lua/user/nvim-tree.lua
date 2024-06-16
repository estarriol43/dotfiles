local M = {
  "kyazdani42/nvim-tree.lua",
  event = "VeryLazy",
}

function M.config()
  require("nvim-tree").setup({})
end

return M
