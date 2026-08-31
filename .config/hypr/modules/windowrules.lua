----------------------------
---- WINDOWS AND LAYERS ----
----------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

-- Set opacity to 1.0 active, 0.5 inactive and 0.8 fullscreen for kitty
hl.window_rule({
  match   = { class = "kitty" },
  opacity = "1.0 override 0.5 override 1.0 override",
})

-- Moves any window matching the class "joplin-desktop" to workspace 5
hl.window_rule({
    match = { class = "joplin-desktop" },
    workspace = "4"
})

-- floating apps
hl.window_rule({
    name  = "float-vpn",
    match = { class = "proton-vpn-gtk-app" },
    float = true,
})

hl.window_rule({
    name  = "float-cava",
    match = { class = "cava" },
    float = true,
})

hl.window_rule({
    name  = "emoji-picker",
    match = { class = "gnome-characters" },
    float = true,
})

-- forces zen to go fullscreen (the browser can handle its own window rules...)
hl.window_rule({
    -- fullscreen = true,
    match = { class = "zen" },
    fullscreen_state = "1"
})

-- others fullscreen
-- hl.window_rule({
--     fullscreen = true,
--     match = { class = "vscodium" }
-- })

-- Moves windows with a specific title to a special workspace
hl.window_rule({
    -- match = { class = "kitty", title = "termusic" },
    workspace = "special:music-player"
})

hl.window_rule({
    match = { class = "tutanota-desktop" },
    workspace = "special:mail"
})

-- Float the main JetBrains Rider window
hl.window_rule({
    -- match = { class = "jetbrains-rider" },
    match = { class = "jetbrains-rider", title = "Welcome to JetBrains Rider" },
    float = true,
    center = true  -- Centers the window on launch
})

-- layer rules

-- swaync animation layer
hl.layer_rule({
    name = "notification-animations",
    match = { namespace = "swaync-control-center" },
    animation = "slide top"
})



-- random

-- Moves any window matching the class "Brave-browser" to workspace 2
-- hl.window_rule({
--     match = { class = "^brave-browser$" },
--     workspace = "2"
-- })

-- Moves windows with a specific title to a special workspace
-- hl.window_rule({
--     match = { title = "^.*Logseq.*$" },
--     workspace = "special:logseq"
-- })   



-- Force a specific application (e.g., 'firefox') to open in fullscreen
-- hl.window_rule({
--     fullscreen = true,
--     match = { class = "firefox" }
-- })

-- -- Optional: Force specific aspect ratio for single fullscreen windows
-- hl.config({
--     layout = {
--         single_window_aspect_ratio = {16, 9}
--     }
-- })   