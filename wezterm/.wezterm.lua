-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
-- window opacity
config.window_background_opacity = 0.8

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font = wezterm.font("MesloLGL Nerd Font")
config.font_size = 16
config.color_scheme = "Catppuccin Mocha"

config.window_decorations = "RESIZE"
config.macos_window_background_blur = 5

-- tabs
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

-- Finally, return the configuration to wezterm:
return config
