vim.pack.add({
  { src = "https://github.com/vague-theme/vague.nvim" },
  { src = "https://github.com/chriskempson/base16-vim" }
})

require("vague").setup({
  -- optional configuration here
})

vim.cmd("colorscheme base16-default-dark")
