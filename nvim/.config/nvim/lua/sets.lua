local opt = vim.opt

-- No bells 
opt.belloff = "all"

-- Relative line numbers
opt.relativenumber = true
opt.number = true

-- Indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Keep 7 lines above and below cursor
opt.scrolloff = 7

-- Splitting
opt.splitright = true
opt.splitbelow = true

-- Hide current mode indicator
opt.showmode = false

opt.showcmd = false

-- No cmd line height
-- Set to 1 if you dont want status bar dissapearing when entering cmd mode
opt.cmdheight = 0

-- 24-bit color support
opt.termguicolors = true

-- Decrease update time to 200ms
opt.updatetime = 50

-- Enable incremental searching
opt.incsearch = true
opt.hlsearch = true

-- Better searching
opt.ignorecase = true
opt.smartcase = true

-- Allows to open new buffer without saving current one
opt.hidden = true

-- Disable panes from auto resizing
opt.equalalways = false

-- Disable swap files
opt.swapfile = false

-- Enable mouse mode
opt.mouse = "a"

-- Disable line wrap
opt.wrap = false

-- Column for Git and LSP signs
-- Prevents editor shifting when signs appear
opt.signcolumn = "yes"

-- Colorcolumn at 80 characters
opt.colorcolumn = "80"

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
