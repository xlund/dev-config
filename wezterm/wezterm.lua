local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Ayu Dark (Gogh)'
config.font = wezterm.font_with_fallback{
	'Berkeley Mono',
	'JetBrains Mono'
}
config.font_size = 14

config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
  left = 4,
  right = 0,
  top = 4,
  bottom = 0,
}

config.window_decorations = "RESIZE"

return config
