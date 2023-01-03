-- disable netrw, the built in file explorer, to avoid collisions
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup {
	open_on_setup = true,
	renderer = {
		group_empty = true,
		highlight_git = true,
		icons = {
			git_placement = "signcolumn"
		}
	}
}
