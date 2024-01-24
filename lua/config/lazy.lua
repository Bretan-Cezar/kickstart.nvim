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
	{ 'rebelot/kanagawa.nvim', lazy = false, config = function() vim.cmd("colorscheme kanagawa-dragon") end },
	{ 'nvim-treesitter/nvim-treesitter', 
	   build = function() 
	   	local install = require("nvim-treesitter.install")

		install.update({ with_sync = true })()
		install.compilers = { "cl" }
	   
	   end, 
	   config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({

			ensure_installed = {
--				"angular", 
--				"bash", 
--				"c", 
--				"c_sharp", 
--				"cmake", 
--				"cpp", 
--				"css", 
--				"dart", 
--				"dockerfile",
--				"elixir",
--				"gitignore",
--				"go",
--				"gomod",
--				"gosum",
--				"gowork",
--				"graphql",
--				"groovy",
--				"haskell",
--				"html",
--				"java",
--				"javascript",
--				"json",
--				"kotlin",
--				"latex",
--				"lua",
--				"make",
--				"markdown",
--				"nasm",
--				"printf",
--				"prisma",
--				"properties",
--				"python",
--				"r",
--				"regex",
--				"rust",
--				"scala",
--				"scss",
--				"solidity",
--				"sql",
--				"svelte",
--				"swift",
--				"toml",
--				"tsx",
--				"typescript",
--				"vue",
--				"xml",
--				"yaml",
--				"zig"
			},
			sync_install = false,
			highlight = {enable = true},
			indent = { enable = true }
		})
		
	end}
})
