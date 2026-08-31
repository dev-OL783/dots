-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"
-- uncomment all if you wish to use that.
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
-- hl.window_rule({
--     name  = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
-- workspaces 1-7 main monitor
hl.workspace_rule({workspace = "1", monitor = "HDMI-A-1", persistent = true}) --layout = "monocle",
hl.workspace_rule({workspace = "2", monitor = "HDMI-A-1", persistent = true}) --layout = "scrolling"
hl.workspace_rule({workspace = "3", monitor = "HDMI-A-1", persistent = true})
hl.workspace_rule({workspace = "4", monitor = "HDMI-A-1", persistent = true})
hl.workspace_rule({workspace = "5", monitor = "HDMI-A-1", persistent = true})
hl.workspace_rule({workspace = "6", monitor = "HDMI-A-1", layout = "dwindle", persistent = true})
hl.workspace_rule({workspace = "7", monitor = "HDMI-A-1", layout = "master", persistent = true})

-- switch these out for laptop if taking it for a spin outside
-- hl.workspace_rule({workspace = "1", monitor = "eDP-1", persistent = true})
-- hl.workspace_rule({workspace = "2", monitor = "eDP-1", persistent = true})
-- hl.workspace_rule({workspace = "3", monitor = "eDP-1", persistent = true})
-- hl.workspace_rule({workspace = "4", monitor = "eDP-1", persistent = true})
-- hl.workspace_rule({workspace = "5", monitor = "eDP-1", persistent = true})
-- hl.workspace_rule({workspace = "6", monitor = "eDP-1", persistent = true})
-- hl.workspace_rule({workspace = "7", monitor = "eDP-1", persistent = true})

hl.workspace_rule({
    workspace = "special:music-player",
    -- gaps_in = 10,
    gaps_out = 100
})

hl.workspace_rule({
    workspace = "special:mail",
    -- gaps_in = 10,
    gaps_out = 50
})