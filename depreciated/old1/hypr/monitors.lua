------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "DP-3",
    mode     = "2560x1440@100",
    position = "0x0",
    scale    = 1.33,
    -- bitdepth = 10,
    cm = "srgb"
})

-- workspaces 1-7 main monitor
hl.workspace_rule({workspace = "1", monitor = "DP-2", persistent = true})
hl.workspace_rule({workspace = "2", monitor = "DP-2", persistent = true})
hl.workspace_rule({workspace = "3", monitor = "DP-2", persistent = true})
hl.workspace_rule({workspace = "4", monitor = "DP-2", persistent = true})
hl.workspace_rule({workspace = "5", monitor = "DP-2", persistent = true})
hl.workspace_rule({workspace = "6", monitor = "DP-2", persistent = true})
hl.workspace_rule({workspace = "7", monitor = "DP-2", persistent = true})
