local wezterm = require "wezterm"

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.default_prog = { "C:/WINDOWS/System32/WindowsPowerShell/v1.0/powershell.exe" }

config.font_size = 13.0

config.hide_tab_bar_if_only_one_tab = true

config.color_scheme = "Gruvbox Dark (Gogh)"

local mux = wezterm.mux

wezterm.on("gui-startup", function()
  local tab, pane, window = mux.spawn_window{}
  window:gui_window():maximize()
end)

return config
