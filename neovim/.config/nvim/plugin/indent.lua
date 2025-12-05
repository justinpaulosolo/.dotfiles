-- Show whitespace and special characters
vim.opt.list = true

vim.opt.listchars = {
  eol = "↲",
  tab = "» ",     -- tab mark
  trail = "𝁢",    -- trailing space
  extends = "…",
  precedes = "…",
  conceal = "┊",
  nbsp = "☠",     -- non-breaking space
  -- omit "space" entirely unless you want to mark regular spaces
}
