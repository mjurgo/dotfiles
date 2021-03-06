local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- NORMAL MODE
-- Remap space as a leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Buffer navigation
keymap("n", "<S-l>", ":bnext<cr>", opts)
keymap("n", "<S-h>", ":bprevious<cr>", opts)
keymap("n", "<leader>c", ":bd<cr>", opts)
--keymap("n", "<leader>1", ":LualineBuffersJump 1", opts)
--keymap("n", "<leader>2", ":LualineBuffersJump 1", opts)
for i = 1, 4, 1 do
  keymap("n", "<leader>" .. i, ":LualineBuffersJump " .. i .. "<CR>", opts)
end

-- VISUAL MODE
-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP"', opts)

-- Telescope
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)
