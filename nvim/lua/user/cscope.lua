if io.open("cscope.out", "r") ~= nil then
  vim.opt.cscopetag = true
  vim.opt.cscopeverbose = true
  vim.cmd("cs add cscope.out")
end
