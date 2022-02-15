local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- remove search highlight
keymap("n", "<leader>l", ":nohlsearch<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- buffers
keymap("n", "<leader>n", ":bn <CR>", opts)
keymap("n", "<leader>p", ":bp <CR>", opts)
keymap("n", "<leader>d", ":bd <CR>", opts)

-- splits
keymap("n", "<leader>-", ":sp <CR>", opts)
keymap("n", "<leader>+", ":vsp <CR>", opts)

-- keep cursor centered when browsing search results
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)

-- NvimTree
keymap("n", "<C-m>", ":NvimTreeFindFile <CR>", opts)
keymap("n", "<C-n>", ":NvimTreeToggle <CR>", opts)


-- moving lines and selection
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)
keymap("i", "<C-j>", "<esc>:m .+1<CR>==", opts)
keymap("i", "<C-k>", "<esc>:m .-2<CR>==", opts)
keymap("n", "<leader>j", ":m .+1<CR>==", opts)
keymap("n", "<leader>k", ":m .-2<CR>==", opts)

-- prevent unfo from removing everything
keymap("i", ",", ",<c-g>u", opts)
keymap("i", ".", ".<c-g>u", opts)
keymap("i", "[", "[<c-g>u", opts)
keymap("i", "!", "!<c-g>u", opts)
keymap("i", "?", "?<c-g>u", opts)
keymap("i", "{", "{<c-g>u", opts)
keymap("i", "=", "=<c-g>u", opts)

-- telescope
keymap("n", "<C-p>", ":Telescope find_files <CR>", opts)
keymap("n", "<C-o>", ":Telescope oldfiles <CR>", opts)
keymap("n", "<C-f>", ":Telescope live_grep <CR>", opts)
keymap("n", "<C-b>", ":Telescope buffers <CR>", opts)
