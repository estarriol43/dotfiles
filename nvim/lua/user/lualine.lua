local status_ok, lualine  = pcall(require, "lualine")
if not status_ok then
  vim.notify("lualine not installed")
  return
end

lualine.setup {
  options = { 
    theme  = "wombat" 
  },
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
}

