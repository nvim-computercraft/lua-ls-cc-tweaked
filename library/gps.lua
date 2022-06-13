---@meta

---Using modems and computers, you can find the GPS coordinates of other computers/turtles in the world.
---
---This functions by broadcasting a `PING` message over rednet and waiting for responses. For this to work, there must be at least 4 computers with modems to allow trilateration. Three of the computers should be in the same plane but form a triangle and not all be in a line. The fourth computer must be above or below the other three computers.
---
---You can set up a GPS host using the `gps` program. The program requires the `x`, `y`, `z` of the host **computer** not modem.
---
---You can choose which axes `x`, `y`, `z` refer to, just make sure that you are consistent with your usage.
---![](https://static.wikia.nocookie.net/minecraft_gamepedia/images/5/51/Coordinates.png/revision/latest/scale-to-width-down/200?cb=20200729013357)
------
---[Official Documentation](https://tweaked.cc/module/gps.html)
gps = {}

---The channel that GPS requests and responses are broadcast on
------
---[Official Documentation](https://tweaked.cc/module/gps.html#v:CHANNEL_GPS)
gps.CHANNEL_GPS = 65534

---Attempt to retrieve the location of this computer
---@param timeout number The maximum time in seconds permitted to try and retrieve location
---@param debug boolean If debugging messages should be displayed
---@return number x This computer's `x` position
---@return number y This computer's `y` position
---@return number z This computer's `z` position
------
---[Official Documentation](https://tweaked.cc/module/gps.html#v:locate)
function gps.locate(timeout, debug) end
