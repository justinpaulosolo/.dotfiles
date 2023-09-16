return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  {
    -- Auto pairs {}
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },

  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  { 'marko-cerovac/material.nvim', priority = 10000},
}
