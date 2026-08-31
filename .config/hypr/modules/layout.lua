-- general config??
hl.config({
    general = {
        layout = "scrolling" -- dwindle, master, scrolling, etc.
    },

})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
        mfact = 0.50,
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
-- hl.config({
--     scrolling = {
--         fullscreen_on_one_column = true,
--     },
-- })

-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- my configs
hl.config({
    scrolling = {
        column_width = 0.5,
        direction = "right",
        fullscreen_on_one_column = true,
        focus_fit_method = 1,
        explicit_column_widths = "0.333, 0.5, 1.0",
        follow_focus = true,
    },
})