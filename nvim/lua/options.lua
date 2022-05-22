local options = {
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  number = true,
  relativenumber = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
