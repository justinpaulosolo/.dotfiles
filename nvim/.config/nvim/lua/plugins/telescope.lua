return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("telescope").setup({
      defaults = {
        prompt_prefix = "❯ ",
        selection_caret = "❯ ",
        entry_prefix = "  ",
        winblend = 0,
        layout_strategy = "horizontal",
        layout_config = {
          width = 0.95,
          height = 0.85,
          prompt_position = "top",
          horizontal = {
            preview_width = function(_, cols, _)
              if cols > 200 then
                return math.floor(cols * 0.4)
              else
                return math.floor(cols * 0.6)
              end
            end,
          },

          vertical = {
            width = 0.9,
            height = 0.95,
            preview_height = 0.5,
          },

          flex = {
            horizontal = {
              preview_width = 0.9,
            },
          },
        },
        selection_strategy = "reset",
        sorting_strategy = "descending",
        scroll_strategy = "cycle",
      },
      pickers = {
        buffers = {
          sort_lastused = true,
          sort_mru = true,
          theme = "dropdown",
        },
        find_files = {
          find_command = { "rg", "--files", "--hidden", "--follow", "--glob", "!.git" },
          theme = "ivy"
        },
        oldfiles = {
          theme = "dropdown",
        },
        live_grep = {
          theme = "dropdown",
        },
        git_files = {
          cwd = vim.fn.expand("%:p:h"),
          winblend = 10,
          previewer = false,
          shorten_path = false,
        },
        help_tags = {
          show_version = true,
        },
        commands = {
          theme = "dropdown",
        },
        diagnostics = {
          previewer = false,
          theme = "ivy",
        },
      },
    })

  end
}
