local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrap
opt.wrap = false -- disable

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true -- highlight current cursor line

-- apperance

-- turn on termguicolors since most themes depend on it
-- not that this requires a true color terminal
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will default to dark
opt.signcolumn = "yes" -- always show sign column to prevent text shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, EOF and start

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default

-- turn off swapfile
opt.swapfile = false
