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

	'tpope/vim-fugitive',

	{ 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x', lazy = true, config = false },

	{ 'neovim/nvim-lspconfig', dependencies = { 'hrsh7th/cmp-nvim-lsp' } },

	{ 'hrsh7th/nvim-cmp', dependencies = { 'L3MON4D3/LuaSnip' } },

	{ 'windwp/nvim-autopairs', event = "InsertEnter", opts = {} },

    { 'williamboman/mason.nvim' },

    { 'williamboman/mason-lspconfig.nvim' },

    { 'nvim-tree/nvim-tree.lua' },

    { 'nvim-tree/nvim-web-devicons' }
})

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach( function (client, bufnr)
	
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

require('mason').setup({})

require('mason-lspconfig').setup({
    handlers = {
        lsp_zero.default_setup
    }
})

require("nvim-tree").setup()

local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()

cmp.setup({
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
    },
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({select = true}),
        ['<C-,>'] = cmp_action.luasnip_jump_backward(),
        ['<C-.>'] = cmp_action.luasnip_jump_forward(),
        ['<C-Up>'] = cmp.mapping.scroll_docs(-4),
        ['<C-Down>'] = cmp.mapping.scroll_docs(4)
    })
})
