local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- main binds
map("n", "<leader>w", ":w<CR>", opts)          -- save
map("n", "<leader>q", ":q<CR>", opts)          -- quit
map("n", "<leader>h", ":nohlsearch<CR>", opts) -- remove search highlighting
map("n", "<leader>e", ":Ex<CR>", opts)         -- open netrw

-- move windows
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- copy/past
map({ "n", "v" }, "<leader>y", "\"+y", opts)
map({ "n", "v" }, "<leader>p", "\"+p", opts)

-- formatting
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { noremap = true, silent = true })

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })

-- lsp
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { noremap = true, silent = true })
