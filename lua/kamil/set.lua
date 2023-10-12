vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- We want undotree to keep changes for long time instead of using vim default backup system
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("UserProfile") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.ignorecase = true
-- Ignore case unless uppercase characters in search, 
-- override by adding /c or /C at the end
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10  -- Always show at least 10 characters to the left/right of the cursor
vim.opt.signcolumn = "yes"
--vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"

vim.g.mapleader = " "

vim.g.netrw_altv=1
vim.g.netrw_banner=0
vim.g.netrw_browse_split=4
vim.g.netrw_liststyle=3
vim.g.netrw_browse_split = 0
