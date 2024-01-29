local nnoremap = require("keymap_utils").nnoremap -- Normal mode
local inoremap = require("keymap_utils").inoremap -- Insert mode
local tnoremap = require("keymap_utils").tnoremap -- Terminal mode
local vnoremap = require("keymap_utils").vnoremap -- Visual mode
local xnoremap = require("keymap_utils").xnoremap -- Visual mode

-- [[ Normal Mode ]] --

-- Disable space
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
end, {desc = "[O]pen [C]opilot panel" })

-- [[ Visual Mode ]] --

-- Move lines up and down
vnoremap("<A-j>",":m '>+1<CR>gv=gv")
vnoremap("<A-k>",":m '<-2<CR>gv=gv")

-- Paste without yanking
xnoremap("<leader>p", '"_dP')

-- [[ Terminal ]] --

-- Exit terminal mode
tnoremap("<Esc>", "<C-\\><C-n>")
tnoremap("jj", [[<C-\><C-n>]])

tnoremap("<space>","<space")
