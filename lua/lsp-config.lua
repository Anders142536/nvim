require('mason').setup()
require('mason-lspconfig').setup()

require('lspconfig').svelte.setup{}

require('lspconfig').lua_ls.setup {}

require('lspconfig').tsserver.setup{}
