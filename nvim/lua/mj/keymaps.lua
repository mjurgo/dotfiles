local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- NORMAL MODE
--
-- Remap space as a leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Buffer navigation
keymap("n", "<S-l>", ":bnext<cr>", opts)
keymap("n", "<S-h>", ":bprevious<cr>", opts)
keymap("n", "<leader>c", ":bd<cr>", opts)

-- Move lines up and down
keymap("n", "<A-j>", ":move .+1<CR>==", opts)
keymap("n", "<A-k>", ":move .-2<CR>==", opts)

-- Move by rows when text is wrapped
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Resize vertically
keymap("n", "<A-d>", ":vertical resize +5<CR>", opts)
keymap("n", "<A-a>", ":vertical resize -5<CR>", opts)

-- VISUAL MODE
--
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP"', opts)

-- Maintain the cursor position when yanking
keymap("v", "y", "myy`y", opts)

-- Move lines up and down
keymap("v", "<A-j>", ":move '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":move '<-2<CR>gv=gv", opts)

-- INSERT MODE
--
-- Quickly insert ; or , at end of line
keymap("i", ";;", "<Esc>A;", opts)
keymap("i", ",,", "<Esc>A,", opts)

-- Move lines up and down
keymap("i", "<A-j>", "<Esc>:move .+1<CR>==gi", opts)
keymap("i", "<A-k>", "<Esc>:move .-2<CR>==gi", opts)

-- MULTIPLE MODES
--

-- PLUGINS KEYMAPS
--
-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files()<cr>", opts)
keymap("n", "<leader>fg", "<cmd>lua require'telescope.builtin'.live_grep()<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- Comment
keymap("n", "<leader>/", "gcc", opts)
