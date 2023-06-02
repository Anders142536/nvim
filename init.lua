-- plugins

require "paq" {
	"savq/paq-nvim";					-- paq itself
	"nvim-tree/nvim-web-devicons";		-- required by file explorer
	"nvim-tree/nvim-tree.lua";			-- file explorer
	"EdenEast/nightfox.nvim";			-- color schemes

	"freddiehaddad/feline.nvim";		-- status line
	"lewis6991/gitsigns.nvim";			-- adds git integration

	-- Conquer of Completion, adds language support
	{"neoclide/coc.nvim", branch="release"};

	"leafOfTree/vim-svelte-plugin"		-- syntax highlighter for svelte
}



require('settings')
require('keybinds')
require('colors')
require('tree')
require('statusline')
require('gitsigns-config')

vim.cmd('source coc.vim')




