return {
  {
    'olimorris/onedarkpro.nvim',
    priorit = 1000,
    config = function()
      -- vim.cmd.colorscheme 'onedark'
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
      require('catppuccin').setup {
        transparent_background = true,
      }
      --vim.cmd.colorscheme 'catppuccin-macchiato'
    end,
  },
  {
    'Mofiqul/dracula.nvim',
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'dracula'
    end,
  },
  {
    'sainnhe/sonokai',
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'sonokai'
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'kanagawa-wave'
    end,
  },
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'gruvbox'
    end,
    opts = ...,
  },
}
