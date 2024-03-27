-- options.lua

--o.showcmd = true
--o.laststatus = 2
--o.autowrite = true
--o.autoread = true
--o.shiftround = true

local o = vim.opt

-- Tab / Indentation
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = true
o.smartindent = true
o.wrap = false

-- Search
o.incsearch = true
o.ignorecase = true
o.smartcase = true
o.hlsearch = false

-- Appearance
o.number = true
o.relativenumber = true
o.termguicolors = true                          -- req'd for nvim-tree
o.colorcolumn = '100'
o.signcolumn = "yes"
o.cmdheight = 1
o.scrolloff = 10
o.completeopt = "menuone,noinsert,noselect"

-- Behavior
o.hidden = true
o.errorbells = false
o.swapfile = false
o.backup = false
o.undodir = vim.fn.expand("~/.vim/undodir")
o.undofile = true
o.backspace = "indent,eol,start"
o.splitright = true
o.splitbelow = true
o.autochdir = false
o.iskeyword:append("-")
o.mouse:append("a")
o.clipboard:append("unnamedplus")
o.guicursor = 
  "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
o.modifiable = true
o.encoding = "UTF-8"
o.showmode = true

--EOF
