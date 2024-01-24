local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
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

require("lazy").setup({
	
	{ 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },

	{ 'rebelot/kanagawa.nvim', lazy = false, config = function() vim.cmd("colorscheme kanagawa-wave") end },
	
	{ 'nvim-treesitter/nvim-treesitter', build = ":TSUpdate" },

	'tpope/vim-fugitive'
})
