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

  { "catppuccin/nvim", name = "catppuccin", lazy = true },

  { 'marko-cerovac/material.nvim', lazy = true },

  'ThePrimeagen/harpoon',
  {
    'AlexvZyl/nordic.nvim',
    lazy = true,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    config = function()
      require('rose-pine').setup({
        disable_background = true,
        disable_italics = true,
      })
      vim.cmd('colorscheme rose-pine')
    end,
  }
}
