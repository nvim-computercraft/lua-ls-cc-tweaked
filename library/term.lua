---@meta

---Interact with a computer's terminal or monitors
---
------
---[Official Documentation](https://tweaked.cc/module/term.html)
---@class term: Redirect
term = {}

---Get the default colour value for a colour from the palette
---@param colour color The colour to get the default value for
---@return number r The red channel (0 - 1)
---@return number g The green channel (0 - 1)
---@return number b The blue channel (0 - 1)
---@throws If an invalid colour is given
------
---[Official Documentation](https://tweaked.cc/module/term.html#v:nativePaletteColour)
function term.nativePaletteColour(colour) end

---Get the default color value for a color from the palette
---@param color color The color to get the default value for
---@return number r The red channel (0 - 1)
---@return number g The green channel (0 - 1)
---@return number b The blue channel (0 - 1)
---@throws If an invalid color is given
------
---[Official Documentation](https://tweaked.cc/module/term.html#v:nativePaletteColor)
function term.nativePaletteColor(color) end

---Redirect the terminal output to a monitor, window, or any other custom
---terminal object. Once called, any calls to the `term` API will instead operate
---on the new terminal object
---@param target Redirect The terminal object the `term` API will draw to
---@return Redirect previous The previous terminal object that was being drawn to
---## Example
---```
---term.redirect(peripheral.find("monitor"))
---print("Hello monitor!")
---```
------
---[Official Documentation](https://tweaked.cc/module/term.html#v:redirect)
function term.redirect(target) end

---Get the current terminal object that the `term` API is drawing to
---@return Redirect current The current terminal object
------
---[Official Documentation](https://tweaked.cc/module/term.html#v:current)
function term.current() end

---Get the native terminal object
---
---⚠️ It is recommended that you don't use this function unless you absolutely
---have to. In a multitask environment, `term.native()` will not be the current
---terminal object and so drawing may interfere with other programs
---@return Redirect native The native terminal redirect
function term.native() end
