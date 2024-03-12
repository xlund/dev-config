local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Ayu Dark (Gogh)'
config.font = wezterm.font_with_fallback{
	'Berkeley Mono',
	'JetBrains Mono'
}
config.font_size = 14



return config
