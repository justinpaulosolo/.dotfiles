return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({
      defaults = {
        prompt_prefix = "❯ ",
        selection_caret = "❯ ",
        entry_prefix = "  ",
        winblend = 0,
        layout_strategy = "horizontal",
      },
      pickers = {
        buffers = {
          sort_lastused = true,
          sort_mru = true,
          theme = "dropdown",
        },
        find_files = {
          theme = "dropdown",
          find_command = { "rg", "--files", "--hidden", "--follow", "--glob", "!.git" },
        },
        oldfiles = {
          theme = "dropdown",
        },
        live_grep = {
          theme = "dropdown",
        },
        git_files = {
          theme = "dropdown",
        },
        help_tags = {
          theme = "dropdown",
          previewer = false,
        },
        commands = {
          theme = "dropdown",
          previewer = false,
        },
      },
    })
  end
}
