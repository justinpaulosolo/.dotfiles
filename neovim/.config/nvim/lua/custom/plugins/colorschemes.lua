return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        transparent_background = true,
      }
      vim.cmd.colorscheme 'catppuccin-macchiato'
    end,
  },
  {
    'Mofiqul/dracula.nvim',
    priority = 1000,
    config = function()
      --vim.cmd.colorscheme 'dracula'
    end,
  },
}
