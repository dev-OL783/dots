---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local terminal    = "kitty"
local fileManager = "dolphin"
local menu        = "rofi -show drun"

---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local altkey = "ALT"

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(mainMod .. " + quoteright", hl.dsp.window.close())


-- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
-- hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(altkey .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(altkey .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

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


-- open common apps with super + 1-9
hl.bind(mainMod .. " + 1", hl.dsp.exec_cmd("vscodium"))
hl.bind(mainMod .. " + 2", hl.dsp.exec_cmd("helium-browser"))
hl.bind(mainMod .. " + 3", hl.dsp.exec_cmd("dolphin"))
hl.bind(mainMod .. " + 4", hl.dsp.exec_cmd("joplin-desktop"))
hl.bind(mainMod .. " + 5", hl.dsp.exec_cmd("rider"))

-- rofi launch
hl.bind(altkey .. " + space", hl.dsp.exec_cmd(menu))

-- launch waybar
hl.bind(mainMod .." + Alt + W", hl.dsp.exec_cmd("waybar")) -- launch waybar initially
-- be sure not to launch more than once, if so you have to run this shortcut
hl.bind(mainMod .." + Shift + W", hl.dsp.exec_cmd("pkill waybar"))

-- waybar launch and kill
hl.bind(altkey .. " + W", hl.dsp.exec_cmd("killall -SIGUSR1 waybar")) -- launch && kill

-- wireplumber kill cmd so that I can have audio (?)
hl.bind(mainMod .. " + Alt + P", hl.dsp.exec_cmd("systemctl --user stop wireplumber.service"))
-- yeah... don't question me on this one. I don't want to find out why this works
-- and I definitely don't want to fix it (yet).






--------------------------------- testing ---------------------------------

-- hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd()) -- executes a command from the terminal

-- chatgippity

-- Show Waybar while SUPER_L is held, hide when released
-- hl.bindt("SUPER_L", hl.dsp.exec_cmd("killall -SIGUSR1 waybar"))
-- hl.bindrt("SUPER_L", hl.dsp.exec_cmd("killall -SIGUSR2 waybar"))

-- -- Alternatively, use a manual toggle key (e.g., SUPER + B)
-- hl.bind("SUPER_B", hl.dsp.exec_cmd("killall -SIGUSR1 waybar"))

-- Alternative: Auto-hide based on cursor position For automatic hiding/showing based on mouse position
-- hl.on("hyprland.start", function ()
--     hl.exec_cmd("~/.config/hypr/scripts/waybar_auto_hide &")
-- end)