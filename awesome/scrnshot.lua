local awful = require("awful")

local function all_screen()
  awful.util.spawn_with_shell("scrot '%Y-%m-%d_%H-%M-%s_scrot.png' -e 'mv $f ~/Pictures/shots/'")
end
