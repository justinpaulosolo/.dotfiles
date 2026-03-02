return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"rachartier/tiny-code-action.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		vim.lsp.enable({ "lua_ls", "ts_ls", "gopls", "eslint", "tailwindcss", "jsonls", "rust_analyzer" })

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf }
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "<leader><space>", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

				vim.keymap.set({ "n", "x" }, "<leader>ca", function()
					require("tiny-code-action").code_action({})
				end, { noremap = true, silent = true })

				vim.keymap.set("n", "<leader>h", function()
					vim.diagnostic.open_float({
						border = "rounded",
					})
				end, opts)
			end,
		})
	end,
}
