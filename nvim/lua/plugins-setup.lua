local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"tpope/vim-fugitive",
	"tpope/vim-surround",
	"tpope/vim-commentary",
	"tpope/vim-sensible",
	"scrooloose/nerdtree",
	"scrooloose/syntastic",
	"airblade/vim-gitgutter",
	"nvie/vim-flake8",
	"vim-airline/vim-airline",
	"nvim-treesitter/nvim-treesitter",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"mfussenegger/nvim-dap",
	"mfussenegger/nvim-lint",
	"mellow-theme/mellow.nvim",
	{"neoclide/coc.nvim", lazy=false, branch="release"}
})


vim.cmd([[colorscheme mellow]])
