local wezterm = require 'wezterm'
local config = wezterm.config_builder()
--local theme = wezterm.plugin.require('https://github.com/neapsix/wezterm').main
-- Config stuff here
config.font = wezterm.font('SauceCodePro Nerd Font Mono')

local rosePineScheme = wezterm.color.get_builtin_schemes()['rose-pine-moon']
rosePineScheme.selection_bg = "#3b4252"
config.color_schemes = {
    ['rose-pine-moon'] = rosePineScheme,
}
config.color_scheme = 'rose-pine-moon'

config.default_prog = {'C:\\Users\\brandon.hunt\\AppData\\Local\\Programs\\Git\\bin\\bash.exe', '--login', '-i'}
config.default_cwd = 'X:\\'
config.enable_tab_bar=false

config.leader = { key = 'b', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = {
    { key = 'c', mods = 'LEADER', action = wezterm.action{SpawnTab='CurrentPaneDomain'}},
    { key = 'd', mods = 'LEADER', action = wezterm.action{CloseCurrentPane={confirm=false}}},
    { key = '%', mods = 'LEADER|SHIFT', action = wezterm.action{SplitHorizontal={ domain='CurrentPaneDomain' }}},
    { key = '"', mods = 'LEADER|SHIFT', action = wezterm.action{SplitVertical={ domain='CurrentPaneDomain' }}},
    { key = 'h', mods = 'LEADER', action=wezterm.action{ActivatePaneDirection='Left'}},
    { key = 'j', mods = 'LEADER', action=wezterm.action{ActivatePaneDirection='Down'}},
    { key = 'k', mods = 'LEADER', action=wezterm.action{ActivatePaneDirection='Up'}},
    { key = 'l', mods = 'LEADER', action=wezterm.action{ActivatePaneDirection='Right'}},
    { key = 'v', mods = 'SHIFT|CTRL', action=wezterm.action.PasteFrom 'Clipboard' },
    { key = 'c', mods = 'SHIFT|CTRL', action=wezterm.action.CopyTo 'Clipboard' },
    { key = 'n', mods = 'LEADER', action='ToggleFullScreen' },
    { key = '0', mods = 'LEADER', action=wezterm.action{ActivateTab=0}},
    { key = '1', mods = 'LEADER', action=wezterm.action{ActivateTab=1}},
    { key = '2', mods = 'LEADER', action=wezterm.action{ActivateTab=2}},
    { key = '3', mods = 'LEADER', action=wezterm.action{ActivateTab=3}},
    { key = '4', mods = 'LEADER', action=wezterm.action{ActivateTab=4}},
    { key = '5', mods = 'LEADER', action=wezterm.action{ActivateTab=5}},
    { key = '6', mods = 'LEADER', action=wezterm.action{ActivateTab=6}},
    { key = '7', mods = 'LEADER', action=wezterm.action{ActivateTab=7}},
    { key = '8', mods = 'LEADER', action=wezterm.action{ActivateTab=8}},
    { key = '[', mods = 'LEADER', action=wezterm.action.ActivateCopyMode },
}

return config
