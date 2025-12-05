return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  -- Optional dependencies
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  keys = {
	{"-", "<cmd>Oil<cr>", desc = ""},
  },
  config = function()
	  require("oil").setup {
		  columns = { "icon" },
		  keymaps = {
			  ["<C-h>"] = false,
			  ["<C-l>"] = false,
			  ["<C-k>"] = false,
			  ["<C-j>"] = false,
			  ["<M-h>"] = "actions.select_split",
		  },
		  view_options = {
			  show_hidden = true,
			  is_always_hidden = function(name, _)
				  local folder_skip = { "dev-tools.locks", "dune.lock", "_build" }
				  return vim.tbl_contains(folder_skip, name)
			  end,
		  },
	  }
  end,
  }
