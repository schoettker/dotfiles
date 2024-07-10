-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()



-- This is where you actually apply your config choices

-- For example, changing the color scheme:

config.color_scheme = 'Catppuccin Macchiato'

config.initial_cols = 190
config.initial_rows = 50

-- config.font =
--   wezterm.font('Droid Sans Mono', { italic = false })
config.font_size = 18.0
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
config.window_decorations = "RESIZE"

-- and finally, return the configuration to wezterm

return config
