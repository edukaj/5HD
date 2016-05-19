-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
awful.rules = require("awful.rules")
-- Theme handling library
local beautiful = require("beautiful")
-- Notification library
local naughty = require("naughty")

-- {{{ Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
if awesome.startup_errors then
    naughty.notify({ preset = naughty.config.presets.critical,
                     title = "Oops, there were errors during startup!",
                     text = awesome.startup_errors })
end

-- Handle runtime errors after startup
do
    local in_error = false
    awesome.connect_signal("debug::error", function (err)
        -- Make sure we don't go into an endless error loop
        if in_error then return end
        in_error = true

        naughty.notify({ preset = naughty.config.presets.critical,
                         title = "Oops, an error happened!",
                         text = err })
        in_error = false
    end)
end
-- }}}

-- {{{ Variable definitions
-- Themes define colours, icons, font and wallpapers.
beautiful.init("~/.config/awesome/themes/qamf/theme.lua")
-- }}}

-- {{{ Wallpaper
if beautiful.use_wallpaper == true then
    gears.wallpaper.maximized(beautiful.wallpaper_sx, 1, true)
    gears.wallpaper.maximized(beautiful.wallpaper_dx, 2, true)
end
-- }}}

-- {{{ Layouts
-- Table of layouts to cover with awful.layout.inc, order matters.
local layouts = {}
-- }}}

-- {{{ Tags
-- Define a tag table which hold all screen tags.
tags = {}
for s = 1, screen.count() do
    -- Each screen has its own tag table.
    tags[s] = awful.tag({ 1, 2}, s, layouts[1])
end
-- }}}

-- {{{ Rules to apply to client windows
awful.rules.rules = {
    { rule = { name = "sx" }, properties = { screen = 1 } },
    { rule = { name = "dx" }, properties = { screen = 2 } }
}
-- }}}
