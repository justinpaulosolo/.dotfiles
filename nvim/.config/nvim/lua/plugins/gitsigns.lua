return {
  "lewis6991/gitsigns.nvim",
  event = "VeryLazy",
  opts = {
    -- signs = {
    --   add = { text = '+' },
    --   change = { text = '~' },
    --   delete = { text = '_' },
    --   topdelete = { text = '‾' },
    --   changedelete = { text = '~' },
    -- },
    signs = {
      add = { hl = "GitSignsAdd", text = "▎", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
      change = { hl = "GitSignsChange", text = "▎", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
      delete = { hl = "GitSignsDelete", text = "▎", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
      topdelete = { hl = "GitSignsDelete", text = "▎", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
      changedelete = { hl = "GitSignsChange", text = "▎", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
    },
  }
}
