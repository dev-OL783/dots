-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function()
  hl.exec_cmd("nm-applet")
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  hl.exec_cmd("hypridle")
  hl.exec_cmd("hyprsunset")
  hl.exec_cmd("waybar")
  hl.exec_cmd("swaync")
  hl.exec_cmd("dbus-update-activation-environment --systemd --all") -- no more annoying pop-ups asking for password auth or whatever
  -- hl.exec_cmd("awww-daemon")

  -- program startups
  -- hl.exec_cmd("[workspace 1 silent] rider")
  hl.exec_cmd("[workspace 2 silent] zen-browser")
  hl.exec_cmd("[workspace 3 silent] kitty")
  hl.exec_cmd("[workspace 4 silent] opendeck")
  -- hl.exec_cmd("[workspace 5 silent] joplin-desktop")
  -- hl.exec_cmd("[workspace 6 silent] kitty & yt-x") -- currently doesn't work, need to kitty -> yt-x bash script
  -- hl.exec_cmd("[workspace 7 silent] ")
  -- hl.exec_cmd("[workspace special:music-player silent] yt-x")
  -- hl.exec_cmd("[workspace special:mail silent] tutanota-desktop")
end)

-- less is more --
