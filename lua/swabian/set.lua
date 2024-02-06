vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- Use Undo tree instead of Vim's swap/backup:
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Highligting on searches
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- Don't let cursor move within scrolloff number:
vim.opt.scrolloff = 4

-- Show "signs" in a column to the left of the code:
vim.opt.signcolumn = "yes"

-- How often Vim checks for changes in the current buffer:
vim.opt.updatetime = 50 --milliseconds

-- Be real programer...
vim.opt.colorcolumn = "80"

