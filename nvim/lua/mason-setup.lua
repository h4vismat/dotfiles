require("mason").setup()
require("mason-lspconfig").setup {
	ensure_installed = {
		"clangd",
		"basedpyright"
	},
	automatic_installation = true
}

require("lspconfig").clangd.setup{}
