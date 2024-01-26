local opt = vim.opt

opt.syntax = "on"
opt.showmode = false
opt.showcmd = true
opt.cmdheight = 0
opt.incsearch = true
opt.relativenumber = true
opt.number = true
opt.ignorecase = true
opt.smartcase = true
opt.hidden = true
opt.equalalways = false
opt.splitright = true
opt.splitbelow = true
opt.updatetime = 50
opt.hlsearch = true
opt.scrolloff = 7
opt.hidden = true
opt.belloff = "all"
opt.swapfile = false
opt.mouse = "a"
opt.termguicolors = true
opt.signcolumn = "yes"
opt.wrap = false

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

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
