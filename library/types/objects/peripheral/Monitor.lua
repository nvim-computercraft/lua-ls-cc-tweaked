---@meta

---Monitors are a block that can display the terminal on one side. This allows
---them to be viewed and interacted with without opening a GUI
---
---Monitors act as terminal redirects and share the same methods, as well as some additional ones
---
---Like computers, monitors come in both normal (no color) and advanced (color) varieties
---
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html)
---@class Monitor: Redirect
Monitor = {}

---Set the scale of text on this monitor. A larger scale will have a lower resolution but larger text
---@param scale number The scale of the monitor. Must be a multiple of 0.5 between 0.5 and 5
---@throws If the `scale` is out of range
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:setTextScale)
function Monitor.setTextScale(scale) end

---Get the current text scale
---@return number scale The current text scale for this monitor
---@throws If the monitor cannot be found
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:getTextScale)
function Monitor.getTextScale() end
