local status_ok, comment = pcall(require, "Comment")
if not status_ok then
  vim.notify("Comment not install")
  return
end

comment.setup {}
