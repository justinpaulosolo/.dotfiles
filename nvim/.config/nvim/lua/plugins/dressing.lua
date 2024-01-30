return {
	"stevearc/dressing.nvim",
	config = function()
		require("dressing").setup({
			input = {
				border = "single"
			}
		})
	end,
}
