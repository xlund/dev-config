local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Ayu Dark (Gogh)"
config.font = wezterm.font_with_fallback({
	"Berkeley Mono",
	"JetBrains Mono",
})
config.font_size = 14

config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
	left = 4,
	right = 0,
	top = 4,
	bottom = 0,
}

-- Hide titlebar
config.window_decorations = "RESIZE"

config.keys = {
	{
		key = "s",
		mods = "CTRL|ALT|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "v",
		mods = "CTRL|ALT|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "CTRL|ALT|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "CTRL|ALT|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "CTRL|ALT|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "CTRL|ALT|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "x",
		mods = "CTRL|ALT|SHIFT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
}
return config
