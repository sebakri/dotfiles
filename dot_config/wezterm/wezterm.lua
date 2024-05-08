-- Pull in the wezterm API
local wezterm = require("wezterm")
local colorscheme = require("colorscheme")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = colorscheme.color_scheme
config.font = wezterm.font("SpaceMono Nerd Font Propo")
config.font_size = 15
config.harfbuzz_features = { "calt=0" }
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	-- Turn off the default CMD-m Hide action, allowing CMD-m to
	-- be potentially recognized and handled by the tab
	{
		key = "t",
		mods = "LEADER",
		action = wezterm.action.ShowLauncher,
	},
}

-- Spawn pwsh as the default shell
config.default_prog = { "pwsh", "-nologo" }

-- and finally, return the configuration to wezterm
return config
