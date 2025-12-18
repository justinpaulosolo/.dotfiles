return {
	{
		"adibhanna/yukinord.nvim",
		lazy = true, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("yukinord").setup({
				transparent = true,         -- Enable transparent background
				transparent_sidebar = true, -- Enable transparent background for sidebars (NvimTree, terminal, etc.)
			})
		  -- vim.cmd([[colorscheme yukinord]])
		end,
	},
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("cyberdream").setup({
				saturation = 0.6,
			})
		    vim.cmd([[colorscheme cyberdream]])
		end,
	}
}
