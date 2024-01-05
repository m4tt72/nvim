vim.g.mapleader = " "

local keymap = vim.keymap

-- navigate buffers
keymap.set("n", "<leader>n", vim.cmd.bn)
keymap.set("n", "<leader>p", vim.cmd.bp)

-- remove buffer
keymap.set("n", "<leader>d", vim.cmd.bd)

-- better window navigation
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- keep cursor centered when browsing search results
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")

-- prevent undo from removing everything
keymap.set("i", ",", ",<c-g>u")
keymap.set("i", ".", ".<c-g>u")
keymap.set("i", "[", "[<c-g>u")
keymap.set("i", "!", "!<c-g>u")
keymap.set("i", "?", "?<c-g>u")
keymap.set("i", "{", "{<c-g>u")
keymap.set("i", "=", "=<c-g>u")
