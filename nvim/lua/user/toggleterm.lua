local M = {
  "akinsho/toggleterm.nvim",
  event = "VeryLazy",
}

function M.config()
  require("toggleterm").setup({
    size = 20,
    open_mapping = [[<C-p>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = "float",
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
      border = "curved",
      winblend = 0,
      highlights = {
        border = "Normal",
        background = "Normal",
      },
    },
  })

  function _G.set_terminal_keymaps()
    local opts = {noremap = true}
    vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-p><C-n>]], opts)
  end

  vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
end

return M
