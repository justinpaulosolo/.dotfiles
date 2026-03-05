return {
	"obsidian-nvim/obsidian.nvim",
	version = "*", -- use latest release, remove to use latest commit
	cmd = { "Obsidian" },
	ft = "markdown",
	---@module 'obsidian'
	---@type obsidian.config
	opts = {
		legacy_commands = false, -- this will be removed in the next major release
		workspaces = {
			{
				name = "personal",
				path = "/Users/justin/Library/Mobile Documents/iCloud~md~obsidian/Documents/Personal",
			},
		},
		daily_notes = {
			folder = "Daily",
			date_format = "%Y-%m-%d",
		},
	},
}
