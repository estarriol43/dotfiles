local M = {
  "lewis6991/gitsigns.nvim",
  event = "BufEnter",
  cmd = "GitSigns"
}

function M.config()
  require("gitsigns").setup({
    diff_opts = {
      vertical = true,
    },
  })
end

return M
