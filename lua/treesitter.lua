require('nvim-treesitter.configs').setup {
	ensure_installed = {
		"lua",
		"markdown",
		"markdown_inline",
		"bash",
		"svelte",
		"javascript",
		"typescript",
		"tsx"
	},
	auto_install = false,
	highlight = {
		enable = true
	}
}
