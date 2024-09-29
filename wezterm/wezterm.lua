local wezterm = require "wezterm"

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.window_background_image = "../michal/Obrazy/bgs/makima02FHD.png"
config.window_background_image_hsb = {
    brightness = 0.05,
}

config.font = wezterm.font("EnvyCodeR Nerd Font Mono")
config.font_size = 13.0

-- config.hide_tab_bar_if_only_one_tab = true

return config
