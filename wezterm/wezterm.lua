local wezterm = require "wezterm"

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = "Ayu Dark (Gogh)"

-- config.window_background_image = "../michal/Obrazy/bgs/makima02FHD.png"
-- config.window_background_image_hsb = {
--     brightness = 0.05,
-- }

config.font = wezterm.font("ZedMono Nerd Font")
config.font_size = 12

config.hide_tab_bar_if_only_one_tab = true

return config
