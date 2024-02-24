vim.opt.nu = true
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.env.HOME .. "/.vim/undo"
vim.opt.undofile = true

vim.opt.scrolloff = 12

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.hlsearch = false

