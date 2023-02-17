-- disable netrw, the built in file explorer, to avoid collisions
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup {
	renderer = {
		group_empty = true,
		highlight_git = true,
		icons = {
			git_placement = "signcolumn"
		}
	}
}

-- opens file tree if a no file was selected as param
local function open_nvim_tree(data)
	-- buffer is a real file on the disk
	local real_file = vim.fn.filereadable(data.file) == 1
	
	-- buffer is a [No Name]
	local no_name = data.file == "" and vim.bo[data.buf].buftype == ""
	
	if real_file and not no_name then
	  return
	end
	
	-- open the tree, find the file but don't focus it
	require("nvim-tree.api").tree.toggle({ focus = false, find_file = true, })
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
