return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local custom_catpuccin = require("lualine.themes.catppuccin")
    custom_catpuccin.normal.c.bg = "#181818"
    require("lualine").setup({
      options = {
        theme = custom_catpuccin,
        icons_enabled = true,
        component_separators = { left = '|', right = '|' },
        section_separators = { left = '|', right = '|' },
      },
      sections = {
        lualine_b = {'branch', 'diagnostics'},
        lualine_x = { },
        lualine_z = { 'filetype' },
      },
    })
  end
}
