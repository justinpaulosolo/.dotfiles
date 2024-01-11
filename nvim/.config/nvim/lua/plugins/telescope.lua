return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<leader>sf", "<cmd>Telescope find_files<cr>", desc ="[S]earch [F]iles" },
    { "<leader>gf", "<cmd>Telescope git_files<cr>", desc ="[G]it [F]iles" },
    { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc ="[S]earch [H]elp" },
  },
}
