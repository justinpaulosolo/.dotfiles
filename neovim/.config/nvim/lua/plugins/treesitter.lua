return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensured_installed = {
      "lua",
      "html",
      "javascript",
      "typescript",
      "go",
      "vim",
      "json",
    },
  },
}
