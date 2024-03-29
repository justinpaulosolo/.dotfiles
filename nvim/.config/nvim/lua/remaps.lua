local nnoremap = require("keymap_utils").nnoremap -- Normal mode
local inoremap = require("keymap_utils").inoremap -- Insert mode
local tnoremap = require("keymap_utils").tnoremap -- Terminal mode
local vnoremap = require("keymap_utils").vnoremap -- Visual mode
local xnoremap = require("keymap_utils").xnoremap -- Visual mode

-- [[             ]] --
-- [[ Normal Mode ]] --
-- [[             ]] --

nnoremap("<space>", "<nop>")              -- Disable space
inoremap("<C-c>", "<Esc>")                -- Exit insert mode
nnoremap("<leader><leader>", "<C-^>")     -- Switch between last two buffers
nnoremap("<leader>no", ":nohlsearch<CR>") -- Turn off highlighted results

-- Navigate to the beginning/end of line
nnoremap("H", "^")
nnoremap("L", "$")

-- Center cursor after scrolling
nnoremap("<C-u>", "<C-u>zz")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("G", "Gzz")
nnoremap("gg", "ggzz")

-- Center cursor after search
nnoremap("N", "Nzzzv")
nnoremap("n", "nzzzv")

nnoremap("<leader>t", ":new +terminal<CR> +i", { desc = "[T]erminal" })
nnoremap("<leader>vt", ":vnew +terminal<CR> +i", { desc = "[V]ertical [T]erminal" })
nnoremap("<leader>tt", ":tabnew +terminal<CR> +i", { desc = "[T]ab [T]erminal" })

nnoremap("<leader>f", vim.lsp.buf.format, { desc = "[F]ormat" })
nnoremap("<leader>fb", vim.cmd.Ex, { silent = false, desc = "[F]ile [B]rowser" })


nnoremap("<leader>oc", function()
  require("copilot.panel").open({})
end, { desc = "[O]pen [C]opilot panel" })

-- Telescope
nnoremap("<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently used files" })
nnoremap("<leader>sb", require("telescope.builtin").buffers, { desc = "[S]earch [B]uffers" })
nnoremap("<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch [G]rep" })
nnoremap("<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
nnoremap("<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp Tags" })
nnoremap("<leader>sc", require("telescope.builtin").commands, { desc = "[S]earch [C]ommands" })
nnoremap("<leader>dl", require("telescope.builtin").diagnostics, { desc = "[D]iagnostics [L]ist" })
nnoremap("<leader>gf", require("telescope.builtin").git_files, { desc = "[G]it [F]iles" })
nnoremap("<leader>gs", require("telescope.builtin").git_status, { desc = "[G]it [S]tatus" })

-- Harpoon
nnoremap("<leader>ha", function()
  require("harpoon"):list():append()
end, { desc = "[A]dd to Harpoon" })

nnoremap("<leader>ho", function()
  local harpoon = require("harpoon")
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "[H]arpoon [O]pen" })

nnoremap("<leader>1", function()
  require("harpoon"):list():select(1)
end, { desc = "[H]arpoon [1]" })

nnoremap("<leader>2", function()
  require("harpoon"):list():select(2)
end, { desc = "[H]arpoon [2]" })

nnoremap("<leader>3", function()
  require("harpoon"):list():select(3)
end, { desc = "[H]arpoon [3]" })

nnoremap("<leader>4", function()
  require("harpoon"):list():select(4)
end, { desc = "[H]arpoon [4]" })

nnoremap("<leader>5", function()
  require("harpoon"):list():select(5)
end, { desc = "[H]arpoon [5]" })

-- Diagnostics
nnoremap("<leader>]d", function ()
  vim.diagnostic.goto_next({})
  vim.api.nvim_feedkeys("zz", "n", false)
end, { desc = "']' 'd' Next Diagnostics" })

nnoremap("<leader>[d", function ()
  vim.diagnostic.goto_prev({})
  vim.api.nvim_feedkeys("zz", "n", false)
end, { desc = "'[' 'd' Previous Diagnostics" })

nnoremap("<leader>]e", function ()
  vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
  vim.api.nvim_feedkeys("zz", "n", false)
end, { desc = "']' 'e' Next Error" })

nnoremap("<leader>[e", function ()
  vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
  vim.api.nvim_feedkeys("zz", "n", false)
end, { desc = "'[' 'e' Previous Error" })

nnoremap("<leader>]w", function ()
  vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN })
  vim.api.nvim_feedkeys("zz", "n", false)
end, { desc = "']' 'w' Next Warning" })

nnoremap("<leader>[w", function ()
  vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN })
  vim.api.nvim_feedkeys("zz", "n", false)
end, { desc = "'[' 'w' Previous Warning" })

nnoremap("<leader>do", function ()
  vim.diagnostic.open_float({
    scope = "line",
  })
end, { desc = "[d]iagnostic [o]pen" })

-- Quickfix
nnoremap("<leader>ld", vim.diagnostic.setqflist, { desc = "Quickfix [L]ist [D]iagnostics" })
nnoremap("<leader>cn", ":cnext<cr>zz", { desc = "Quickfix [C]next" })
nnoremap("<leader>cp", ":cprev<cr>zz", { desc = "Quickfix [C]previous" })
nnoremap("<leader>co", ":copen<cr>", { desc = "Quickfix [C]open" })
nnoremap("<leader>cc", ":cclose<cr>", { desc = "Quickfix [C]close" })

-- [[             ]] -
-- [[ Visual Mode ]] --
-- [[             ]] --

-- Move lines up and down
vnoremap("<A-j>", ":m '>+1<CR>gv=gv")
vnoremap("<A-k>", ":m '<-2<CR>gv=gv")

-- Paste without yanking
xnoremap("<leader>p", '"_dP')

-- Save to system clipboard
vnoremap("<leader>y", '"+y')

-- [[             ]] --
-- [[ Visual Mode ]] --
-- [[             ]] --

-- Exit terminal mode
tnoremap("<Esc>", "<C-\\><C-n>")
tnoremap("jj", [[<C-\><C-n>]])

tnoremap("<space>", "<space>")
