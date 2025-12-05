return {
	'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{"<leader>ff", "<cmd>Telescope find_files<cr>", desc = "[F]ind [F]iles"},
		{"<leader>gf", "<cmd>Telescope git_files<cr>", desc = "[G]it [F]iles"},
	},
	opts = {},
}
