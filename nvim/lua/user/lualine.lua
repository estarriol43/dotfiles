local M = {
  "nvim-lualine/lualine.nvim",
}

function M.config()
  require("lualine").setup({
    theme  = "wombat",
    sections = {
      lualine_b = {'branch', 'diff'},
      lualine_c = {
        {
          'filename',
          path = 1,
          shorting_target = 40,
        }
      },
    },
    inactive_sections = {
      lualine_c = {
        {
          'filename',
          path = 1,
          shorting_target = 40,
        }
      },
    },
  })
end

return M
