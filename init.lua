-- plugins

require 'paq' {
	-- paq itself
	'savq/paq-nvim',

	-- layout stuff
	'nvim-tree/nvim-tree.lua',        -- file explorer
	'nvim-tree/nvim-web-devicons',    -- required by file explorer for file icons

	-- Mason and stuff to set it up
	'mason-org/mason.nvim',           -- installs LSP servers
	'neovim/nvim-lspconfig',          -- configures LSP servers
	'mason-org/mason-lspconfig.nvim',
	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

	-- formatting
	'stevearc/conform.nvim',

	-- scm
	'lewis6991/gitsigns.nvim',        -- adds git integration

	-- color schemes and themes
	'EdenEast/nightfox.nvim'          -- color schemes, currently unused

	-- syntax highlighting, as LSP highlighting is not ideal
	-- 'leafOfTree/vim-svelte-plugin',
}

-- general settings
require('settings')
require('keybinds')

-- plugin settings
require('tree')

-- require('lsp-config')

require('mason').setup()
require('mason-lspconfig').setup()

require('treesitter')

require('formatter')

require('gitsigns-config')




require('colors')
-- vim.g.vim_svelte_plugin_use_typescript = true

