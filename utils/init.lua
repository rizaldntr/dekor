local gfs = require("gears.filesystem")

_G.dekor = {}

function dekor.get_themes_path(name)
  return gfs.get_configuration_dir() .. "themes/" .. name
end
