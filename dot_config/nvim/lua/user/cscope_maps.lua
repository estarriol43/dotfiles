local M = {
  "dhananjaylatkar/cscope_maps.nvim",
}

function M.config()
  require("cscope_maps").setup {
    cscope = {
      picker = "telescope",
    },
    skip_input_prompt = true,
    prefix = "<C-\\>",
  }
end

return M
