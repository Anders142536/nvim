require('mason').setup()
require('mason-lspconfig').setup()

local on_attach = function(_, _)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', 'gd', vim.lsp.buf.definition , {})
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation , {})
	--vim.keymap.set('n', 'gr', require('telescope.buildin').lsp_references, {})
	vim.keymap.set('n', 'K', vim.lsp.buf.hover , {})

	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

require('lspconfig').svelte.setup{
	on_attach = on_attach
}

require('lspconfig').lua_ls.setup {
	on_attach = on_attach
}

require('lspconfig').tsserver.setup{
	on_attach = on_attach
}

require('lspconfig').tailwindcss.setup{
	on_attach = on_attach
}
