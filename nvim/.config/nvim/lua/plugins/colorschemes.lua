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
    lazy = false,
    config = function()
      vim.cmd [[colorscheme moonfly]]
    end,
    priority = 1000
  },
}
