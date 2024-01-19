local opt = vim.opt

opt.termguicolors = true

opt.showmode = false
opt.showcmd = true
opt.cmdheight = 1
opt.incsearch = true
--opt.showmatch = true
opt.relativenumber = true
opt.number = true
opt.ignorecase = true
opt.smartcase = true
opt.hidden = true
opt.equalalways = false
opt.splitright = true
opt.splitbelow = true
opt.updatetime = 300
opt.hlsearch = true
opt.scrolloff = 7
opt.hidden = true

-- Cursorline highlighting control
--  Only have it on in the active buffer
opt.cursorline = true -- Highlight the current line
local group = vim.api.nvim_create_augroup("CursorLineControl", { clear = true })
local set_cursorline = function(event, value, pattern)
  vim.api.nvim_create_autocmd(event, {
    group = group,
    pattern = pattern,
    callback = function()
      vim.opt_local.cursorline = value
    end,
  })
end
set_cursorline("WinLeave", false)
set_cursorline("WinEnter", true)
set_cursorline("FileType", false, "TelescopePrompt")

opt.signcolumn = "yes"

vim.opt.colorcolumn = "80"

-- Tabs
--opt.autoindent = true
--opt.cindent = true
opt.wrap = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

opt.belloff = "all"

opt.swapfile = false

opt.mouse = "a"

