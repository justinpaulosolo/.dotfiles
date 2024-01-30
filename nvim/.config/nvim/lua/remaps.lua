local nnoremap = require("keymap_utils").nnoremap -- Normal mode
local inoremap = require("keymap_utils").inoremap -- Insert mode
local tnoremap = require("keymap_utils").tnoremap -- Terminal mode
local vnoremap = require("keymap_utils").vnoremap -- Visual mode
local xnoremap = require("keymap_utils").xnoremap -- Visual mode

-- [[ Normal Mode ]] --

-- Disable spac("harpoon").e
nnoremap("<space>", "<nop>")

-- Leave insert mode
inoremap("<C-c>", "<Esc>")

-- Format
nnoremap("<leader>f", vim.lsp.buf.format)

-- Open Netrw
nnoremap("<leader>pv", vim.cmd.Ex, { silent = false })

-- Center buffer while navigating
nnoremap("<C-u>", "<C-u>zz")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("G", "Gzz")
nnoremap("gg", "ggzz")

-- Center cursor after search
nnoremap("N", "Nzzzv")
nnoremap("n", "nzzzv")

-- Swap between last two buffers
nnoremap("<leader><leader>", "<C-^>")

-- Turn off highlighted results
nnoremap("<leader>no", ":nohlsearch<CR>")

-- Navigate to the beginning/end of line
nnoremap("H", "^")
nnoremap("L", "$")

nnoremap("<leader>oc", function()
  require("copilot.panel").open({})
end, { desc = "[O]pen [C]opilot panel" })

-- Open terminal in a new split
nnoremap("<leader>t", ":new +terminal<CR> +i")
nnoremap("<leader>vt", ":vnew +terminal<CR> +i")

-- Open terminal in a new tab
nnoremap("<leader>tt", ":tabnew +terminal<CR> +i")

-- Telescope
nnoremap("<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently used files" })
nnoremap("<leader>sb", require("telescope.builtin").buffers, { desc = "[S]earch [B]uffers" })
nnoremap("<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch [G]rep" })
nnoremap("<leader>gf", require("telescope.builtin").git_files, { desc = "[G]it [F]iles" })
nnoremap("<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
nnoremap("<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp Tags" })
nnoremap("<leader>sc", require("telescope.builtin").commands, { desc = "[S]earch [C]ommands" })

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
-- [[ Visual Mode ]] --

-- Move lines up and down
vnoremap("<A-j>", ":m '>+1<CR>gv=gv")
vnoremap("<A-k>", ":m '<-2<CR>gv=gv")

-- Paste without yanking
xnoremap("<leader>p", '"_dP')

-- Save to system clipboard
vnoremap("<leader>y", '"+y')

-- [[ Terminal ]] --

-- Exit terminal mode
tnoremap("<Esc>", "<C-\\><C-n>")
tnoremap("jj", [[<C-\><C-n>]])

tnoremap("<space>", "<space>")
