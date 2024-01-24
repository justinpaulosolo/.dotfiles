return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        component_separators = { left = '|', right = '|' },
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_b = {'branch', 'diagnostics'},
        lualine_x = { },
        lualine_z = { 'filetype' },
      },
    })
  end
}
