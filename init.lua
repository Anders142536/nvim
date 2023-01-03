-- plugins

require "paq" {
	"savq/paq-nvim";					-- paq itself
	"nvim-tree/nvim-web-devicons";		-- required by file explorer
	"nvim-tree/nvim-tree.lua";			-- file explorer
	"EdenEast/nightfox.nvim";			-- color schemes
}



require('settings')
require('keybinds')
require('colors')
require('tree')





