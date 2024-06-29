-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.font = wezterm.font_with_fallback({
	"MonoLisaNerdFont",
})

config.audible_bell = "Disabled"
config.color_scheme = "tokyonight"
config.enable_scroll_bar = false
config.window_background_opacity = 0.98
config.window_decorations = "TITLE | RESIZE"
config.hide_tab_bar_if_only_one_tab = true

-- Fedora bug
config.enable_wayland = false

return config
