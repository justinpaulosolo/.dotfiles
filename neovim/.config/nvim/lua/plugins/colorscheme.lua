return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		-- load the colorscheme here
		require('kanagawa').setup({
			transparent = true
		})
		vim.cmd([[colorscheme kanagawa]])
	end,
}

