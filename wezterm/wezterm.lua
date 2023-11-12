local wezterm = require "wezterm"

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.window_background_image = "../michal/Obrazy/bgs/ahri-kda-fantasy-art-4k-u5.jpg"
config.window_background_image_hsb = {
    brightness = 0.05,
}

config.font = wezterm.font("Mononoki Nerd Font Mono")
config.font_size = 13.0

config.hide_tab_bar_if_only_one_tab = true

return config
