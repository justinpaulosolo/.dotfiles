-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {
  color_scheme = 'Material Darker (base16)',
  enable_tab_bar = false,
  use_fancy_tab_bar = false,
  font = wezterm.font({ family = "JetBrainsMono NerdFont" }),
  font_size = 22,
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
}

return config

