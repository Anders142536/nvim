require("conform").setup({
	-- ft = filetype
	formatters_by_ft = {
		markdown = { "prettier" },
		markdown_inline = { "prettier" },
		svelte = { "prettier" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
	},
	format_on_save = {
		timeout_ms = 3000,
		lsp_fallback = true,
	},
})
