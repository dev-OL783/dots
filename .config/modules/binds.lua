---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local terminal    = "kitty"
local fileManager = "dolphin"
local menu        = "rofi -show drun"
local code        = "vscodium"

---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local altkey = "ALT"

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + SEMICOLON", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(mainMod .. " + quoteright", hl.dsp.window.close())
-- hl.bind(mainMod .. " + quoteright", hl.dsp.window.close())
hl.bind(altkey .. " + F4",   hl.dsp.window.kill())   -- Kill window


-- closeWindowBind:set_enabled(false)
-- hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo()) -- what is this??
-- hl.bind(mainMod .. " + ", hl.dsp.layout("togglesplit"))  -- dwindle only

-- Move focus with mainMod + arrow keys
-- life changer, thanks to cebem1nt on github
for _, dir in ipairs({ "left", "right", "up", "down" }) do
    hl.bind("SUPER + " .. dir,          hl.dsp.focus({ direction = dir }))
    hl.bind(mainMod .. " + CTRL + " .. dir,   hl.dsp.window.move({ direction = dir }))
    hl.bind(mainMod .. " + SHIFT + " .. dir,  hl.dsp.window.swap({ direction = dir }))
end

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i, follow = false}))
    hl.bind(mainMod .. " + CTRL + " .. key,     hl.dsp.window.move({ workspace = i }))
end -- cebem1nt

-- Example special workspace (scratchpad)
-- hl.bind(mainMod .. " + D",         hl.dsp.workspace.toggle_special("music-player"))
-- hl.bind(mainMod .. " + SHIFT + D", hl.dsp.window.move({ workspace = "special:music-player" })) -- not really needed but oh well

hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("mail"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:mail" }))

hl.bind("SUPER + M", function () -- minimize workspace
    hl.dispatch(hl.dsp.workspace.toggle_special("minimize"))
    hl.dispatch(hl.dsp.window.move({workspace = "+0"}))
    hl.dispatch(hl.dsp.workspace.toggle_special("minimize"))
    hl.dispatch(hl.dsp.window.move({workspace = "special:minimize"}))
    hl.dispatch(hl.dsp.workspace.toggle_special("minimize"))
end)


-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })


--- my edits ---

-- scrolling shortcuts --

-- fullscreen toggle
hl.bind(mainMod .. " + F ", hl.dsp.window.fullscreen({mode = 1, action = "toggle" }))

-- toggle scrolling column_width
hl.bind(mainMod .. " + K ", hl.dsp.layout("move +col"))
hl.bind(mainMod .. " + J ", hl.dsp.layout("move -col"))

-- extended
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.swap({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.swap({ direction = "left" }))

-- best bindings for ultrawide, could low-key replace my SUPER+F for fullscreen toggle if I had an ultrawide
-- hl.bind(mainMod .. " + period ", hl.dsp.layout("colresize +conf"))
-- hl.bind(mainMod .. " + comma ", hl.dsp.layout("colresize -conf"))


-- alt-tab options --

hl.bind(altkey .. " + TAB", hl.dsp.window.cycle_next()) -- og
-- hl.bind(altkey .. " + TAB", hl.dsp.layout("cyclenext")) -- only works for monocle
-- hl.bind(altkey .. " + TAB", hl.dsp.window.cycle_next({ tiled = true })) -- run this if running monocle + other layouts

-- rofi launch
hl.bind(altkey .. " + space", hl.dsp.exec_cmd(menu))

-- waybar launch && kill
hl.bind(altkey .. " + W", hl.dsp.exec_cmd("killall -SIGUSR1 waybar")) 

-- hyprlock
hl.bind(mainMod .." + L", hl.dsp.exec_cmd("hyprlock")) -- sometimes I wonder why I need this...

-- swaync
hl.bind(mainMod .." + N", hl.dsp.exec_cmd("swaync-client -t"))

-- text editor // IDE
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(code))

-- browser
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("zen-browser"))

-- temp
hl.bind(mainMod .. " + SHIFT + O", hl.dsp.exec_cmd("hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0'"))
hl.bind(mainMod .. " + SHIFT + I", hl.dsp.exec_cmd("hyprshutdown -t 'Restarting...' --post-cmd 'reboot'"))


--------------------------------- testing ---------------------------------

-- fullscreen toggle
-- hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" })) -- basically F11
-- hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen("maximized", "toggle"))  --f11 rebind
-- hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }) --same here

-- open common apps with super + 1-9
-- hl.bind(mainMod .. " + 1", hl.dsp.exec_cmd("vscodium"))
-- hl.bind(mainMod .. " + 2", hl.dsp.exec_cmd("helium-browser"))
-- hl.bind(mainMod .. " + 3", hl.dsp.exec_cmd("dolphin"))
-- hl.bind(mainMod .. " + 4", hl.dsp.exec_cmd("joplin-desktop"))
-- hl.bind(mainMod .. " + 5", hl.dsp.exec_cmd("rider"))

-- depreciated // templates

-- Show Waybar while SUPER_L is held, hide when released
-- hl.bindt("SUPER_L", hl.dsp.exec_cmd("killall -SIGUSR1 waybar"))
-- hl.bindrt("SUPER_L", hl.dsp.exec_cmd("killall -SIGUSR2 waybar"))

-- -- Alternatively, use a manual toggle key (e.g., SUPER + B)
-- hl.bind("SUPER_B", hl.dsp.exec_cmd("killall -SIGUSR1 waybar"))

-- Alternative: Auto-hide based on cursor position For automatic hiding/showing based on mouse position
-- hl.on("hyprland.start", function ()
--     hl.exec_cmd("~/.config/hypr/scripts/waybar_auto_hide &")
-- end)

-- launch waybar
hl.bind(mainMod .." + W", hl.dsp.exec_cmd("waybar")) 
-- close waybar, kinda useless since you have the button to do so rn
-- hl.bind(mainMod .." + SHIFT + W", hl.dsp.exec_cmd("pkill waybar"))