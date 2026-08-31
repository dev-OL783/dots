------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "HDMI-A-1",
    mode     = "2560x1440@60",
    position = "0x0",
    scale    = 1.33,
    -- bitdepth = 10,
    -- cm = "srgb"
})

hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1080@60",
    disabled = true 
    -- change to false if you wanna walk out with the laptop config like a champ
})
