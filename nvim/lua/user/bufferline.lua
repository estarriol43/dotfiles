local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {
  options = {
    mode = "tabs",
    numbers = "ordinal", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
    close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
  }
}
