return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  keys = {
    -- Builtins
    {
      "<leader>ff",
      function() require("telescope.builtin").find_files({hidden = true}) end,
      desc = "Telescope Find Files",
    },
    {
      "<leader>fg",
      function() require("telescope.builtin").git_files() end,
      desc = "Telescope Git Files",
    },
    {
      "<leader>fb",
      function() require("telescope.builtin").buffers() end,
      desc = "Telescope Buffers",
    },
    {
      "<leader>fr",
      function() require("telescope.builtin").registers() end,
      desc = "Telescope Registers",
    },
    {
      "<leader>fk",
      function() require("telescope.builtin").keymaps() end,
      desc = "Telescope Keymaps",
    },
    {
      "<leader>fd",
      function() require("telescope.builtin").diagnostics() end,
      desc = "Telescope Diagnostics",
    },

    -- Language Servers
    -- (https://github.com/ALT-F4-LLC/thealtf4stream.nvim/blob/main/lua/TheAltF4Stream/telescope.lua)
    {
      "<leader>lsd",
      function() require("telescope.builtin").lsp_definition() end,
      desc = "Telescope LSP Definition",
    },
  },
}
