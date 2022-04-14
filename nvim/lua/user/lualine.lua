local status_ok, lualine  = pcall(require, "lualine")
if not status_ok then
  vim.notify("lualine not installed")
  return
end

lualine.setup {
  options = { 
    theme  = "wombat" 
  },
}

