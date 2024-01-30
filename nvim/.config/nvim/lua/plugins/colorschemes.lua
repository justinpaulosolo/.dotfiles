return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        integrations = {
          cmp = true,
          gitsigns = true,
          treesitter = true,
          notify = false,
          mason = false,
          telescope = {
            enabled = true,
          },
        }
      })
      vim.cmd.colorscheme "catppuccin-macchiato"
    end,
  },
  {
    "oxfist/night-owl.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("night-owl")
    end,
  }
}
