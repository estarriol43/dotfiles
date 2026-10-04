local M = {
  "alexghergh/nvim-tmux-navigation"
}

function M.config()
  require("nvim-tmux-navigation").setup({
    disable_when_zoomed = true,
    keybindings = {
      left  = "<C-h>",
      down  = "<C-j>",
      up    = "<C-k>",
      right = "<C-l>",
    }
  })
end

return M
