-- plugins

require 'paq' {
	-- paq itself
	'savq/paq-nvim',
	'nvim-tree/nvim-web-devicons',    -- required by file explorer for file icons
	-- 'lewis6991/gitsigns.nvim',        -- adds git integration

	-- color schemes and themes
	'EdenEast/nightfox.nvim',         -- color schemes, currently unused

	-- layout stuff
	'nvim-tree/nvim-tree.lua',        -- file explorer
	-- 'freddiehaddad/feline.nvim',      -- status line

	-- Mason and stuff to set it up
	-- A plugin for LSP and debuggers
	-- { 'williamboman/mason.nvim', run = ':MasonUpdate' },
	-- 'williamboman/mason-lspconfig.nvim',
	-- 'neovim/nvim-lspconfig',
	-- 'mfussenegger/nvim-dap',
	-- 'rcarriga/nvim-dap-ui',

	-- syntax highlighting, as LSP highlighting is not ideal
	-- 'leafOfTree/vim-svelte-plugin',
}


require('settings')
require('keybinds')

-- require('gitsigns-config')

require('colors')

require('tree')
-- require('statusline')

-- require('lsp-config')


-- vim.g.vim_svelte_plugin_use_typescript = true

