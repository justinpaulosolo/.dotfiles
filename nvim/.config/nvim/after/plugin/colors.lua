if not pcall(require, "colorbuddy") then
  return
end

vim.opt.termguicolors = true

vim.opt.bg = "dark"

require("colorbuddy").colorscheme "gruvbuddy"
