return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
      })

      vim.cmd.colorscheme "catppuccin"
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        styles = {
          transparency = true
        }
      })

      vim.cmd.colorscheme "rose-pine"
    end
  }
}
