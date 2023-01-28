local awful     = require("awful")
local beautiful = require("beautiful")
local wibox     = require("wibox")

local function get_wallpaper(s)
  local wallpaper = beautiful.wallpaper
  if wallpaper and type(wallpaper) == "function" then
    return wallpaper(s)
  end
  return wallpaper
end

screen.connect_signal("request::wallpaper", function(s)
  awful.wallpaper {
    screen = s,
    widget = {
      image = get_wallpaper(s),
      resize = true,
      upscale = true,
      valign = "center",
      halign = "center",
      horizontal_fit_policy = "fit",
      widget = wibox.widget.imagebox
    }
  }
end)
