-- plugins

require 'paq' {
	-- paq itself
	'savq/paq-nvim',

	-- layout stuff
	'nvim-tree/nvim-tree.lua',    -- file explorer
	'nvim-tree/nvim-web-devicons', -- required by file explorer for file icons

	-- Mason and stuff to set it up
	'mason-org/mason.nvim', -- installs LSP servers
	'neovim/nvim-lspconfig', -- configures LSP servers
	'mason-org/mason-lspconfig.nvim',
	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
	'mfussenegger/nvim-lint', -- handles linters, probably installed via mason

	-- language specific stuff
	'tadmccorkle/markdown.nvim',

	-- formatting
	'stevearc/conform.nvim',

	-- coding utility
	'm4xshen/autoclose.nvim', -- autocloses brackets, indents code
	'windwp/nvim-ts-autotag', -- autocloses html tags

	'folke/which-key.nvim',  -- shows available keybinds after delay

	-- scm
	'lewis6991/gitsigns.nvim', -- adds git integration

	-- color schemes and themes
	'EdenEast/nightfox.nvim' -- color schemes, currently unused

	-- syntax highlighting, as LSP highlighting is not ideal
	-- 'leafOfTree/vim-svelte-plugin',
}

-- general settings
require('settings')
require('keybinds')

-- plugin settings
require('tree')

require('mason').setup()
require('mason-lspconfig').setup({})
require('linter')

require('treesitter')

require('markdown').setup()

require('formatter')

require('autoclose').setup()
require('nvim-ts-autotag').setup()

require('gitsigns').setup()



require('colors')
-- vim.g.vim_svelte_plugin_use_typescript = true
