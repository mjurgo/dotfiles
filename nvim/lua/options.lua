local options = {
  expandtab      = true,
  shiftwidth     = 2,
  tabstop        = 2,
  number         = true,
  relativenumber = true,
  splitright     = true,
  splitbelow     = true,
  mouse          = "a",
  cursorline     = true,
  clipboard      = "unnamedplus", -- use system keyboard, requires xclip to work
  hlsearch       = true,
  ignorecase     = true,
  smartindent    = true,
  termguicolors  = true,
  scrolloff      = 6,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- Set indentation to 4 spaces
augroup('setIndent', { clear = true })
autocmd('Filetype', {
  group = 'setIndent',
  pattern = { 'php', 'html' },
  command = 'setlocal shiftwidth=4 tabstop=4'
})
