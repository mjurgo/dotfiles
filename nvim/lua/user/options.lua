local options = {
  expandtab = true, 		  -- convert tabs to spaces
  shiftwidth = 2,		      -- number of spaces inserted for indentation
  tabstop = 2,			      -- insert 2 spaces for a tab
  number = true,         	-- set numbered lines
  relativenumber = true, 	-- set relative line numbers
  termguicolors = true,   -- set term gui colors
  splitright = true,      -- forces vertical splits to go right
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

