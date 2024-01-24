local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

local fonts = {
	"MonoLisa",
	"Geist Mono",
}

local emoji_fonts = { "Apple Color Emoji", "Joypixels", "Twemoji", "Noto Color Emoji", "Noto Emoji" }

config.font = wezterm.font_with_fallback({ fonts[1], emoji_fonts[1], emoji_fonts[2] })

config.audible_bell = "Disabled"
config.front_end = "WebGpu"
config.enable_scroll_bar = false
config.scrollback_lines = 10240
config.font_size = 18
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.automatically_reload_config = true
config.initial_cols = 80
config.initial_rows = 25
config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = false
config.window_padding = {
	left = 10,
	right = 10,
	top = 10,
	bottom = 10,
}

config.force_reverse_video_cursor = true

config.colors = {
		foreground = "#dcd7ba",
		background = "#1f1f28",

		cursor_bg = "#c8c093",
		cursor_fg = "#c8c093",
		cursor_border = "#c8c093",

		selection_fg = "#c8c093",
		selection_bg = "#2d4f67",

		scrollbar_thumb = "#16161d",
		split = "#16161d",

		ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
		brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
		indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
}

return config
