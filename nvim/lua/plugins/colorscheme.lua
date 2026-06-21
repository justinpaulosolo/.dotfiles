return {
  "wtfox/jellybeans.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true,
    bold = false,
    italics = false,
  },
  config = function()
    vim.cmd[[colorscheme jellybeans]]
  end,
}
