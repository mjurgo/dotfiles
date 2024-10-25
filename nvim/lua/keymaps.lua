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
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)

-- Buffer navigation
keymap("n", "<S-l>", ":bnext<cr>", opts)
keymap("n", "<S-h>", ":bprevious<cr>", opts)
keymap("n", "<leader>q", ":bd<cr>", opts)
keymap("n", "<leader>e", ":Explore<cr>", opts)

-- Move lines up and down
keymap("n", "<C-n>", ":move .+1<CR>==", opts)
keymap("n", "<C-p>", ":move .-2<CR>==", opts)

-- Move by rows when text is wrapped
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Resize vertically
keymap("n", "<A-d>", ":vertical resize +5<CR>", opts)
keymap("n", "<A-a>", ":vertical resize -5<CR>", opts)

-- Others
keymap("n", "<leader>h", ":noh<cr>", opts)

-- VISUAL MODE
--
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<C-n>", ":m .+1<CR>==", opts)
keymap("v", "<C-p>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP"', opts)

-- Maintain the cursor position when yanking
keymap("v", "y", "myy`y", opts)

-- Move lines up and down
keymap("v", "<A-j>", ":move '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":move '<-2<CR>gv=gv", opts)

-- INSERT MODE
--
-- Move using ctrl and hjkl
keymap("i", "<C-k>", "<C-o>gk", opts)
keymap("i", "<C-j>", "<C-o>gj", opts)
keymap("i", "<C-l>", "<Right>", opts)
keymap("i", "<C-h>", "<Left>", opts)
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

-- Telescope
keymap("n", "<leader>sf", "<cmd>lua require'telescope.builtin'.find_files()<cr>", opts)
keymap("n", "<leader>sg", "<cmd>lua require'telescope.builtin'.live_grep()<cr>", opts)

-- Telescope file browser
vim.api.nvim_set_keymap(
  "n",
  "<space>e",
  ":Explore<CR>",
  { noremap = true }
)
-- Comment
keymap("n", "<leader>/", "gcc", opts)
