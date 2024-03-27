-- top-level init.lua

-- the world revolves around Lazy - ensure it's installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- essential settings
require("config.autocmds")
require("config.globals")
require("config.options")
require("config.keymaps")
require("config.local")

-- Lazy maintains plugins defined in '../plugins/' directory

local plugins = "plugins"

local opts = {
  defaults = {
    lazy = true,
  },
  install = {
    colorscheme = {"catppuccin"},
  },
  rtp = {
    disabled_plugins = {
      "gzip",
      "matchit",
      "matchparen",
      "netrw",
      "netrwPlugin",
      "tarPlugin",
      "tohtml",
      "tutor",
      "zipPlugin",
    },
  },
  change_detection = {
    notify = true,
  },
}

require("lazy").setup("plugins",opts)

-- EOF
