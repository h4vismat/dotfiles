require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "python", "lua", "vim", "vimdoc", "query", "rust",
	"bash"},
	highlight = {
		enable = true
	}
})
