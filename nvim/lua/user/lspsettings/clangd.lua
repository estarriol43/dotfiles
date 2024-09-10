if vim.loop.os_uname().sysname == "FreeBSD" then
  return {
    cmd = { "/usr/local/llvm18/bin/clangd" }
  }
end
