-- sets line relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false --if a line is too long it won't make it wrap

-- remove the swp system for our undo tree system instead
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- does incremental searching instead of highlighting the entire line
vim.opt.hlsearch = false
vim.opt.incsearch = true


vim.opt.termguicolors = true
vim.opt.guifont = "Hack:h12"

-- make sure that there is never 8 line or less when reaching the top or bottom of the screen
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- and do it horizontally
vim.opt.sidescrolloff = 8


-- fast update time
vim.opt.updatetime = 50


-- vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
