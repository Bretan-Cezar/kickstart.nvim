vim.g.mapleader = " "

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<Left>", function() vim.api.nvim_err_writeln("use h") end) 
vim.keymap.set("n", "<Right>", function() vim.api.nvim_err_writeln("use l") end) 
vim.keymap.set("n", "<Up>", function() vim.api.nvim_err_writeln("use k") end) 
vim.keymap.set("n", "<Down>", function() vim.api.nvim_err_writeln("use j") end) 

vim.keymap.set("i", "<Left>", function() vim.api.nvim_err_writeln("use h") end) 
vim.keymap.set("i", "<Right>", function() vim.api.nvim_err_writeln("use l") end) 
vim.keymap.set("i", "<Up>", function() vim.api.nvim_err_writeln("use k") end) 
vim.keymap.set("i", "<Down>", function() vim.api.nvim_err_writeln("use j") end) 

vim.keymap.set("v", "<Left>", function() vim.api.nvim_err_writeln("use h") end) 
vim.keymap.set("v", "<Right>", function() vim.api.nvim_err_writeln("use l") end) 
vim.keymap.set("v", "<Up>", function() vim.api.nvim_err_writeln("use k") end) 
vim.keymap.set("v", "<Down>", function() vim.api.nvim_err_writeln("use j") end) 

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("v", "p", "\"_dP")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "qq", "<nop>")
vim.keymap.set("v", "qq", "<nop>")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>p", "\"+p")
