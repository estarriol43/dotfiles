local M = {
  "kyazdani42/nvim-tree.lua",
  event = "VeryLazy",
}

function M.config()
  require("nvim-tree").setup( {
    git = {
      enable = true,
      timeout = 400 -- (in ms)
    }
  })
end

return M
