-- globals.lua

local g = vim.g

-- disable built-in dir tree explorer - req'd for nvim-tree
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- open NvimTree by default
g.nvim_tree_auto_open = 1

-- map leader key to space
g.mapleader = ' '
g.maplocalleader = ' '
