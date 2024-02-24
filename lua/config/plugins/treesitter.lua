local configs = require("nvim-treesitter.configs")

configs.setup({

	ensure_installed = {
					"angular", 
					"bash", 
					"c", 
					"c_sharp", 
					"cmake", 
					"cpp", 
					"css", 
					"dart", 
					"dockerfile",
					"elixir",
					"gitignore",
					"go",
					"gomod",
					"gosum",
					"gowork",
					"graphql",
					"groovy",
					"haskell",
					"html",
					"java",
					"javascript",
					"json",
					"kotlin",
					"latex",
					"lua",
					"make",
					"markdown",
					"nasm",
					"printf",
					"prisma",
					"properties",
					"python",
					"r",
					"regex",
					"rust",
					"scala",
					"scss",
					"solidity",
					"sql",
					"svelte",
					"swift",
					"toml",
					"tsx",
					"typescript",
					"vue",
					"vimdoc",
					"xml",
					"yaml",
					"zig"
	},

	indent = { enable = true },
	sync_install = false,
	auto_install = true,
	highlight = { enable = true },
	additional_vim_regex_highlighting = true
})