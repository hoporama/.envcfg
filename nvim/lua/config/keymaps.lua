-- keymaps.lua

local k = vim.keymap

k.set('n', '<leader>h', ':nohlsearch<CR>')

-- Directory Naviagation
k.set("n", "<leader>m", ":NvimTreeFocus<CR>", opts)
k.set("n", "<leader>f", ":NvimTreeToggle<CR>", opts) 

-- Pane Navigation
k.set("n", "<C-h>", "<C-w>h", opts) -- navigate Left
k.set("n", "<C-j>", "<C-w>j", opts) -- navigate Down
k.set("n", "<C-k>", "<C-w>k", opts) -- navigate Up
k.set("n", "<C-l>", "<C-w>l", opts) -- navigate Right

-- Window Management
k.set("n", "<leader>sv", ":vsplit<CR>", opts) -- split vertically
k.set("n", "<leader>sh", ":split<CR>", opts) -- split horizontally
k.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- toggle minimize

-- Indenting
k.set("v", "<", "<gv")
k.set("v", ">", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })
