return {
	"EdenEast/nightfox.nvim",
	priority = 1000, -- Make sure to load colorscheme before other plugins
	config = function()
		vim.o.termguicolors = true
		vim.cmd("colorscheme nightfox")
	end
}
