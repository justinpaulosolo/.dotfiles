return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      --vim.cmd.colorscheme "catppuccin"
    end,
    lazy = true
  },
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = true,
    config = function()
      vim.cmd [[colorscheme moonfly]]
    end,
    priority = 1000
  },
  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd [[colorscheme nightfly]]
    end
  },
}
